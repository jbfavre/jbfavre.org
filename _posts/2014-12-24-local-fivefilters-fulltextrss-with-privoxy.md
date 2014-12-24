---
layout: post
title: "Local FulltextRSS siteconfig with Privoxy"
category: hack, code, JS
---

[FulltextRSS from fivefilters.org](http://fivefilters.org/content-only/) allows
you to extract content only from a page. When it fails at detecting content zone,
a rules definition file called siteconfig can help, providing [XPATH
expressions](http://help.fivefilters.org/customer/portal/articles/223153-site-patterns).
To build it, you can use an online tool available at
[siteconfig.fivefilters.org](http://siteconfig.fivefilters.org).

When you know how siteconfig works, it's quite easy (after all, it's a text file).
To help identifying relevant part, fivefilters.org provides an online tool at
siteconfig.fivefilters.org.  
That's still an experimental work, and the tool does only support body site
patterns, but it's still a start.

The tool is quite simple:

* you provide the URL to extract
* server get the page and display it, adding some JS and an iframe
* you work
* you download the siteconfig file
* if needed, you can also toggle on/off CSS on main page

That's great but you still have to load siteconfig.fivefilters.org, provide an
URL and launch the tool. Still too much operations for me :)

I wanted something easier to use. My idea was to use a local proxy, configured
to inject relevant pieces of code into any page and loading siteconfig stuff.

But we'll have to deal with Firefox security, more specifically [iframe
sandboxing](https://developer.mozilla.org/fr/docs/Web/HTML/Element/iframe#attr-sandbox)
which will prevent inter page communication.

On limitation though: it won't work with SSL only pages. Anyway, that was still
a good hack to work on :)
Let's see that.

## Preparation

I'll use `privoxy` as local proxy.  
Siteconfig files will be hosted at `siteconfig.mydomain.tld`.  
Finally, I use a dedicated Firefox profile with usefull tools like Firebug.
This profile is configured to use `privoxy` as proxy.

Needed file from siteconfig are:

1. For the main page
   * http://siteconfig.fivefilters.org/js/jquery-latest.min.js
   * http://siteconfig.fivefilters.org/js/css2xpath.js
   * http://siteconfig.fivefilters.org/js/jquery.dom-outline-1.0.js
   * http://siteconfig.fivefilters.org/init.js.php?url=http%3A%2F%2Ftestwebsite.mydomain.tld
2. For the iframe
   * http://siteconfig.fivefilters.org/infobox.php (saved as index.html)
   * http://siteconfig.fivefilters.org/css/toastr.min.css
   * http://siteconfig.fivefilters.org/js/toastr.min.js

All files, with modifications, are available on my [GitHub account](https://github.com/jbfavre/ftrss-siteconfig).

## Privoxy configuration

With Debian, installation is simple

    apt-get install privoxy

We'll have to configure some user's filters as well as action.  
Filters a simply a declaration of what to do, while action is more like when and
for which resources.

Filter code simply adds JS loading stuff right before `</body>`

    FILTER: siteconfig
    s@</body>@\
    <script src="http://siteconfig.mydomain.tld/jquery-latest.js"></script>\
    <script src="http://siteconfig.mydomain.tld/css2xpath.js"></script>\
    <script src="http://siteconfig.mydomain.tld/jquery.dom-outline-1.0.js"></script>\
    <script src="http://siteconfig.mydomain.tld/init.js"></script></body>@siU

Action code, in `/etc/privoxy/user.action` will apply filter `siteconfig` to all
URLs but `siteconfig.mydomain.tld`.

    {+filter{siteconfig}}
    /
    
    {-filter{siteconfig}}
    siteconfig.mydomain.tld/

Global privoxy config is

    user-manual /usr/share/doc/privoxy/user-manual
    confdir /etc/privoxy
    logdir /var/log/privoxy
    actionsfile default.action
    actionsfile user.action
    filterfile user.filter
    logfile logfile
    listen-address  127.0.0.1:8118
    toggle  1
    enable-remote-toggle  0
    enable-remote-http-toggle  0
    enable-edit-actions 0
    enforce-blocks 0
    buffer-limit 4096
    enable-proxy-authentication-forwarding 0
    forwarded-connect-retries  0
    accept-intercepted-requests 0
    allow-cgi-request-crunching 0
    split-large-forms 0
    keep-alive-timeout 5
    tolerate-pipelining 1
    socket-timeout 300

Do not forget to restart privoxy

    service privoxy restart

Finally, you should get something like

![step 1: just works](//medias.jbfavre.org/blog-notes/ftrss-step-1-just_works.png)

## Hacking siteconfig

Here is, quite quickly, how siteconfig works:

1. you visualize DOM elements with your mouse. Siteconfig will highlight them
2. you click to choose one DOM element
3. Siteconfig will get XPATH information on that element from JQuery CSS
   informations
4. the form in iframe is updated accordingly
   * if only 1 XPATH result is found, input fields are updated
   * if not, a warning is displayed
5. When done, you can download siteconfig file. He's prepared as a Blob, using
   JS File API
6. you can also toggle main page CSS usage from within the iframe

Because original files work on the same domain, which is not our case anymore,
we'll have to modify them.

### Main page to iframe communications

To be able to update `iframe` content from the `main page`, we'll use
`postMessage` as emitter in `jquery.dom-outline-1.0.js` from main page as well
as a receiver in iframe `index.html` (remember, original file is called
`infobox.php`).

Messages from main page to iframe will be used to:
- Update form inputs fields
- Display warning message when more than one XPATH result has been found.

But, we will also need to send messages from iframe to main page to be able to
toggle on/off CSS usage. For that, we'll use `postMessage` from within the
`iframe`, thus defining a `listener` into the main page.

To be able to display Warning messages, we replace `self.opts.infobox.contentWindow.toastr.warning`
with a call to `postMessage`, giving all needed stuff as `JSON object`

    > git diff js/jquery.dom-outline-1.0.js
    diff --git a/js/jquery.dom-outline-1.0.js b/js/jquery.dom-outline-1.0.js
    index 1a9293b..84bd289 100644
    --- a/js/jquery.dom-outline-1.0.js
    +++ b/js/jquery.dom-outline-1.0.js
    @@ -194,7 +194,12 @@ var DomOutline = function (options) {
                 // TODO: this doesn't work so well, and haven't tested XPath yet: 
                 // Example: p:nth-child(6) -> //*[(position()-0) mod 6=0 and position()>=0]/self::p
                 //return cssPath(originalEl, true);
    -            self.opts.infobox.contentWindow.toastr.warning('Couldn\'t generate a unique CSS path :(', null, {positionClass: "toast-top-left", newestOnTop: true});
    +            var payload = {
    +              name: 'toastr',
    +              message: 'Couldn\'t generate a unique CSS path :(',
    +              args: [ null, {positionClass: "toast-top-left", newestOnTop: true} ]
    +            };
    +            self.opts.infobox.contentWindow.postMessage(payload, '*');
                 //alert('Couldn\'t generate a unique CSS path :(');
                 return false;
             } else {

Message will be received in `index.html`

    > git diff index.html
    diff --git a/index.html b/index.html
    index 46bfa6f..42ee5d7 100644
    --- a/index.html
    +++ b/index.html
    @@ -40,6 +40,28 @@ $(function() {
         return false;
       });
     });
    +function listener(event)
    +{
    +  // Do we trust the sender of this message?  (might be
    +  // different from what we originally opened, for example).
    +  if (event.data.name == 'toastr') {
    +    var name = event.data.name;
    +    var message = event.data.message;
    +    var arg = event.data.args;
    +    window.toastr.warning(message, arg[0], arg[1]);
    +  }else{
    +    console.log('Unknown message received: ' + event.data);
    +    console.log('Discarded...');
    +  }
    +
    +}
    +if (document.addEventListener){
    +  console.log ('addEventListener');
    +  addEventListener("message", listener, false)
    +} else {
    +  console.log('attachEvent');
    +  attachEvent("onmessage", listener)
    +}
     </script>
     </head>
     <body>

This allow us to display a warning message when more than one XPATH result has
been found.

![step 2: picking non unique DOM element displays warning
message](//medias.jbfavre.org/blog-notes/ftrss-step-2-picking_non_unique_dom_element.png)

But it still doesn't update form's input fields.

    > git diff js/jquery.dom-outline-1.0.js
    diff --git a/js/jquery.dom-outline-1.0.js b/js/jquery.dom-outline-1.0.js
    index ef3d1ec..9d48455 100644
    --- a/js/jquery.dom-outline-1.0.js
    +++ b/js/jquery.dom-outline-1.0.js
    @@ -374,26 +374,16 @@ var DomOutline = function (options) {
             //$.mask.close();
             //$(pub.element).expose();
             var xpath = css2xpath(css);
    -        $('#path_css', $(self.opts.infobox).contents()).val(css);
    -        $('#path_xpath', $(self.opts.infobox).contents()).val(xpath);
    -
    -        var fileParts = [
    -            "# Generated by FiveFilters.org's web-based selection tool\n",
    -            "# Place this file inside your site_config/custom/ folder\n",
    -            "# Source: "+document.location.href+"\n\n",
    -            "body: "+xpath+"\n",
    -            "test_url: "+window.ffurl
    -        ];
    -        // Create a blob object.
    -        var bb = new Blob(fileParts,{type : "text/plain"});
    -        // Create a blob url for this. 
    -        var dnlnk = window.URL.createObjectURL(bb);
    -        //var currentLnk = $("#ftr-download").attr("href");
    -        // blobFl is the id of the anchor tag through which the download will be triggered.
    -        $("#ftr-download", $(self.opts.infobox).contents()).attr("href", dnlnk);
    -        $("#ftr-download", $(self.opts.infobox).contents()).attr("download", window.ffhost+".txt");
    -        // For some reason trigger from jquery dint work for me.
    -        //document.getElementById("ftr-download").click();
    +        var payload = {
    +            name: 'update_path',
    +            ffurl: document.location.href,
    +            target: [
    +                { type: 'css', value: css },
    +                { type: 'xpath', value: xpath}
    +            ]
    +        };
    +        self.opts.infobox.contentWindow.postMessage(payload, '*');
    +
             return true;
         }
     

Now we can update form's input fields in `iframe` form the main page. I also
removed Blob generation part since it uses iframe content which is now forbidden.
Let's update `iframe` listener accordingly. 

    > git diff index.html
    diff --git a/index.html b/index.html
    index 42ee5d7..f3b9c03 100644
    --- a/index.html
    +++ b/index.html
    @@ -49,6 +49,27 @@ function listener(event)
         var message = event.data.message;
         var arg = event.data.args;
         window.toastr.warning(message, arg[0], arg[1]);
    +  }else if (event.data.name == 'update_path'){
    +    event.data.target.forEach(function(entry){
    +      $('#path_' + entry.type).val(entry.value);
    +      if (entry.type == 'xpath'){
    +        // Create blob
    +        var fileParts = [
    +          "# Generated by FiveFilters.org's web-based selection tool\n",
    +          "# Place this file inside your site_config/custom/ folder\n",
    +          "# Source: "+document.location.href+"\n\n",
    +          "body: "+entry.value+"\n",
    +          "test_url: "+event.data.ffurl
    +        ];
    +        // Create a blob object.
    +        var ffblob = new Blob(fileParts,{type : "text/plain"});
    +        // Create a blob url for this.
    +        var dnlnk = (window.URL || window.webkitURL).createObjectURL(ffblob);
    +        // Update download link
    +        $("#ftr-download").attr("href", dnlnk);
    +        $("#ftr-download").attr("download", "jbfav.re.txt");
    +      }
    +    });
       }else{
         console.log('Unknown message received: ' + event.data);
         console.log('Discarded...');

I added a new type of message `update_path` which will update form fields and
generate the `Blob`.

You'll need to adapt `js/init.js` to use your own siteconfig domain:

    > git diff js/init.js
    diff --git a/js/init.js b/js/init.js
    index b6290ca..8311899 100644
    --- a/js/init.js
    +++ b/js/init.js
    @@ -2,7 +2,7 @@
     $(function(){
            window.ffurl = "http://testwebsite.mydomain.tld"; 
            window.ffhost = "mydomain.tld";
    -       window.ffbase = "http://siteconfig.fivefilters.org";
    +       window.ffbase = "http://siteconfig.mydomain.tld";
            $("a").on("click", function(e) {return false;}); // prevents a elements from being selected..
            var myExampleClickHandler = function (element) { 
                    console.log("Clicked element:", element);

Finally change the `iframe href` to use `/` instead of `infobox.php`

    > git diff js/jquery.dom-outline-1.0.js
    diff --git a/js/jquery.dom-outline-1.0.js b/js/jquery.dom-outline-1.0.js
    index 9d48455..52169fb 100644
    --- a/js/jquery.dom-outline-1.0.js
    +++ b/js/jquery.dom-outline-1.0.js
    @@ -247,7 +247,7 @@ var DomOutline = function (options) {
     
         function createInfoBox() {
             //add our debugger box and cache
    -        $("<div id='infobox_container'><iframe id='"+self.opts.namespace+"_infobox' src='"+window.ffbase+"/infobox.php'></iframe></div>").appendTo($("body"));
    +        $("<div id='infobox_container'><iframe id='"+self.opts.namespace+"_infobox' src='"+window.ffbase+"/'></iframe></div>").appendTo($("body"));
             self.opts.infobox = document.getElementById(self.opts.namespace+"_infobox");
         }
    

I won't cover the webserver setup part here. That's really trivial :)

So far, so good. We're now able to select any unique DOM element from main page,
update form's input fields in iframe and download resulting Blob.

![step 3: picking unique DOM element update form's input fields into iframe](//medias.jbfavre.org/blog-notes/ftrss-step-3-picking_unique_dom_element.png)


It's now time to be able to toggle CSS on/off in main page from the iframe.
Let's begin with emitter, in iframe `index.html`

    > git diff index.html
    diff --git a/index.html b/index.html
    index 8a13fda..e04213d 100644
    --- a/index.html
    +++ b/index.html
    @@ -25,17 +25,14 @@
     <script>
     $(function() {
       $('#disable-css').on('click', function() {
    -    $('link[rel~="stylesheet"]', window.parent.document).prop('disabled', true);
    -    window.parent.ffdomoutline.element = window.parent.ffdomoutline.selected;
    -    window.parent.ffdomoutline.updateOutlinePosition('click');
    +    var payload = { name: 'toggle_css', disabled: true }
    +    window.parent.postMessage(payload, '*');
         $('#disable-css').hide(); $('#enable-css').show();
         return false;
       });
       $('#enable-css').on('click', function() {
    -    console.log(window.parent.ffdomoutline.element);
    -    $('link[rel~="stylesheet"]', window.parent.document).prop('disabled', false);
    -    window.parent.ffdomoutline.element = window.parent.ffdomoutline.selected;
    -    window.parent.ffdomoutline.updateOutlinePosition('click');
    +    var payload = { name: 'toggle_css', disabled: false }
    +    window.parent.postMessage(payload, '*');
         $('#enable-css').hide(); $('#disable-css').show();
         return false;
       });

Then, the receiver, in `init.js` in main page

    > git diff js/init.js
    diff --git a/js/init.js b/js/init.js
    index b6290ca..c323af9 100644
    --- a/js/init.js
    +++ b/js/init.js
    @@ -11,3 +11,22 @@ $(function(){
            window.ffdomoutline = myDomOutline;
            myDomOutline.start();
     });
    +function listener(event) {
    +  if (event.data.name == 'toggle_css') {
    +    $('link[rel~="stylesheet"]').prop('disabled', event.data.disabled);
    +    window.ffdomoutline.element = window.ffdomoutline.selected;
    +    window.ffdomoutline.updateOutlinePosition('click');
    +    return false;
    +  }else{
    +    console.log('Unknown message received by main page listener');
    +    console.log(event.data);
    +    console.log('Discarded...');
    +  }
    +}
    +if (document.addEventListener){
    +  console.log ('addEventListener');
    +  addEventListener("message", listener, false)
    +} else {
    +  console.log('attachEvent');
    +  attachEvent("onmessage", listener)
    +}

Finally, I had to modify iframe sandboxing parameters to enable scripting

    > git diff js/jquery.dom-outline-1.0.js
    diff --git a/js/jquery.dom-outline-1.0.js b/js/jquery.dom-outline-1.0.js
    index 52169fb..a1fb254 100644
    --- a/js/jquery.dom-outline-1.0.js
    +++ b/js/jquery.dom-outline-1.0.js
    @@ -247,7 +247,7 @@ var DomOutline = function (options) {
     
         function createInfoBox() {
             //add our debugger box and cache
    -        $("<div id='infobox_container'><iframe id='"+self.opts.namespace+"_infobox' src='"+window.ffbase+"/'></iframe></div>").appendTo($("body"));
    +        $("<div id='infobox_container'><iframe id='"+self.opts.namespace+"_infobox' src='"+window.ffbase+"/' sandbox='allow-scripts'></iframe></div>").appendTo($("body"));
             self.opts.infobox = document.getElementById(self.opts.namespace+"_infobox");
         }


![step 4: disabling main page CSS from iframe blob
works](//medias.jbfavre.org/blog-notes/ftrss-step-4-disabling-css.png)

But, after allowing scripting for iframe, suddenly Blob download failed :(
To re-enable it, I had to add some other sandboxing parameters:

* `allow-same-origin` to get back a clena working link
* `allow-popups` to get back download working

Which gives

    > git diff js/jquery.dom-outline-1.0.js
    diff --git a/js/jquery.dom-outline-1.0.js b/js/jquery.dom-outline-1.0.js
    index a1fb254..29d8ed2 100644
    --- a/js/jquery.dom-outline-1.0.js
    +++ b/js/jquery.dom-outline-1.0.js
    @@ -247,7 +247,7 @@ var DomOutline = function (options) {
     
         function createInfoBox() {
             //add our debugger box and cache
    -        $("<div id='infobox_container'><iframe id='"+self.opts.namespace+"_infobox' src='"+window.ffbase+"/' sandbox='allow-scripts'></iframe></div>").appendTo($("body"));
    +        $("<div id='infobox_container'><iframe id='"+self.opts.namespace+"_infobox' src='"+window.ffbase+"/' sandbox='allow-scripts allow-same-origin allow-popups'></iframe></div>").appendTo($("body"));
             self.opts.infobox = document.getElementById(self.opts.namespace+"_infobox");
         }
     


![step 5: download siteconfig file from iframe blob
works](//medias.jbfavre.org/blog-notes/ftrss-step-5-downloading-siteconfig.png)

Now, your local siteconfig works well. Enjoy :)
