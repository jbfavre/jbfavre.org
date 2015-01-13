---
layout: post
title: "Micro-caching & Nginx"
date: 2014-10-14 15:00:00 +0200
category: sysadmin
tags: [nginx,fastcgi,performances]
---

When you want to speed up you web server, you usually try to setup caching.

That's great when your backend application is "cache aware". So are various apps like Wordpress or other blog engines.  
But, not every application are "cache aware", and you could still want to be able to cache pages and/or assets. Here come micro-caching.

The idea behind micro-caching is to be able to cache ressources for a short time.  
Time will depend on application behaviour, but think of it as it's still better to show a stale ressource than an error page.

### Let's see an example

I wanted to speed up a smokeping frontend.

That's basically a simple HTML page with some images. By default, every request will be sent to the FastCGI backend, which is a Perl CGI script, leading the page to be fully computed.

But, since my smokeping only gets updates every minute, I found useless to call FastCGI backend for each request. How could I use some caching ?

Sample Nginx configuration

Basically, my smokeping vhost looks like:

    server {
        listen [::]:80;
        server_name smokeping.domain.tld;
        location /smokeping {
            alias /usr/lib/cgi-bin/smokeping.cgi;
            # Fastcgi socket
            fastcgi_pass  unix:/var/run/smokeping/smokeping.socket;
            # Fastcgi parameters, include the standard ones
            include /etc/nginx/fastcgi_params;
            # Adjust non standard parameters
            fastcgi_param SCRIPT_FILENAME  /usr/lib$fastcgi_script_name;
        }
        location /smokeping-static {
            alias /usr/share/smokeping/www/;
        }
    }


A quite simple vhost file with 2 locations:

* `/smokeping` which is an alias to smokeping.sgi script
* `/smokeping-static` which is as alias to web directory from which all static assets (JS, images) will be loaded

#### Static files caching

First, and easiest, caching rules: static files

    location /smokeping-static {
        alias /usr/share/smokeping/www/;
        open_file_cache max=500 inactive=2m;
        open_file_cache_valid 1m;
    }

Simply ask Nginx to keep track of every requested files for 2 minutes max, while expiring resources after 1 minute.
My smokeping can generate up to 150 images, so 500 open file in memory is clearly enough.  
More details can be found on [official nginx documentation](http://nginx.org/en/docs/http/ngx_http_core_module.html#open_file_cache).

#### Dynamic "files" caching

Second, let's try to cache FastCGI script output.

    location /smokeping {
        alias /usr/lib/cgi-bin/smokeping.cgi;
        # Fastcgi socket
        fastcgi_pass  unix:/var/run/smokeping/smokeping-web.socket;
        # Fastcgi parameters, include the standard ones
        include /etc/nginx/fastcgi_params;
        # Adjust non standard parameters (SCRIPT_FILENAME)
        fastcgi_param SCRIPT_FILENAME  /usr/lib$fastcgi_script_name;
 
        # Set the cache up. Use "smokeping" cache for 1m
        fastcgi_cache smokeping;
        fastcgi_cache_valid any 2m;
        expires 1m;
        add_header X-Cache $upstream_cache_status;
    }

At first, rules seems very simple:

* use a cache named smokeping
* cache FastCGI output for 2 minutes
* Add HTTP header expires 1 min from now
* Add custom HTTP Header to indicate HIT or MISS

As it is, cache won't work, and nor nginx will start.  
That's because we ask nginx to use a cache zone named smokeping without defining it.  
Let's fix that, adding following options in /etc/nginx/conf.d/fastcgicache.conf:

    fastcgi_cache_path /var/cache/smokeping/fastcgi levels=1:2 keys_zone=smokeping:1m inactive=1m max_size=64m;
    fastcgi_cache_key $scheme$request_method$host$request_uri;
    fastcgi_cache_lock on;
    fastcgi_cache_use_stale error timeout invalid_header updating http_500;
    fastcgi_cache_valid 2m;
    fastcgi_ignore_headers Cache-Control Expires Set-Cookie;

This will make nginx storing fastcgi ouput into `/var/cache/smokeping/fastcgi` directory, adding 2 levels based on the three last letters of the MD5 hash of `fastcgi_cache_key`.  
Cache will never use more than max_size on disk (and of course, you need to create missing directory and ensure nginx will have write permission on it).

But, to improve performance, nginx will also store cached files metadata in shared memory zone.  
In our example, shared memory zone is named `smokeping` and will use at most `1m`, while considering cache as valid for 2 minutes (option `fastcgi_cache_valid`).

Finally, inactive entries will be invalidated after 1 minute.

You might wonder why I want to invalidate entries older than 1 minute, _AND_ keep them for 2 ?  
Simply because I use `fastcgi_cache_use_stale` option which allow to send an expired entry while updating it.  
Remember we're tuning a smokeping. I'm fine with seeing some "outdated" HTML page :)

Option `fastcgi_cache_lock` allows to have at most one request updating resources while all tohers will be served with cached one (and staled if needed & available). Yet another protection for you backend :)

Finally, `fastcgi_ignore_headers` allows Nginx to disable processing of some HTTP headers send by FastCGI backend (in my case, there aren't any, as far I as saw).

So far, so good. Got our cache o/

But, what if you want to manually invalidate a ressource ?

Cache invalidation

We saw the basic rules for FastCGI cache. Now, let's add a way to invalidate cache, or at least force cache bypass.

Usually, you'll want to:

* never cache a POST request's response. Use fastcgi_no_cache
* be able to bypass cache when needed. Use fastcgi_cache_bypass

If thoses 2 options are not empty and not equal to 0, then they'll match, which means either cache won't be used, or it'll be bypassed.

Our location block becomes:

    location /smokeping {
        alias /usr/lib/cgi-bin/smokeping.cgi;
        # Fastcgi socket
        fastcgi_pass  unix:/var/run/smokeping/smokeping-web.socket;
        # Fastcgi parameters, include the standard ones
        include /etc/nginx/fastcgi_params;
        # Adjust non standard parameters (SCRIPT_FILENAME)
        fastcgi_param SCRIPT_FILENAME  /usr/lib$fastcgi_script_name;
 
        # Set the cache up. Use "smokeping" cache for 1m
        fastcgi_cache_bypass $fastcgi_skipcache;
        fastcgi_no_cache $fastcgi_skipcache;
        fastcgi_cache smokeping;
        fastcgi_cache_valid any 2m;
        expires 1m;
        add_header X-Cache $upstream_cache_status;
    }

Most of the example you'll find on the Internet will make you use an `if` statement to define `$fastcgi_skipcache`. That's [_not_ a good idea](http://wiki.nginx.org/IfIsEvil). Lets' use [map](http://nginx.org/en/docs/http/ngx_http_map_module.html) instead.

Add following blocks in `/etc/nginx/conf.d/fastcgicache.conf`

    map $request_method $fastcgi_skipcache {
        default 0;
        POST    1;
    }
    map $arg_smrefresh $fastcgi_skipcache {
        default 0;
        force   1;
    }

First one is quite simple to understand: set `fastcgi_skipcache` to 0 but for `POST` request.
Second one is a bit trickier and means: set `fastcgi_skipcache` to 0, except when you have an argument named smrefresh and with value `force`.

Thats means you can always bypass cache adding `?smrefresh=force` at the end of your URL.

### Results

Without any cache, the start page from my smokeping loads in around 800 milliseconds.
With the cache, the same page loads in 5 miliseconds. No so bad, isn't it ?

Cherry on the cake, caching time is only 1 minute, so I'll always have an up-to-date page while preserving server performances.

And you, do you use micro-caching ?
