---
layout: post
title: "How to enable Google Sync with Chromium 35 and later on Debian"
category: sysadmin
tags: [debian,chromium]
---

Since Chromium version 35, Debian does not provided API keys anymore. Thus, Chromium's features like Google Sync do not work anymore.  
To make it work, you need to get you own API keys. Let's see how.

In order to get back Google Sync and other features, you need to get your own API keys.  
Details are available from [Chromium developers documentation](http://www.chromium.org/developers/how-tos/api-keys). Unfortunatly, the page is not 100% up-to-date.

### chromium-dev Google group registration

Registration to chromium-dev is quite obvious, even without receiving any mail. I won't get into details here.

### Created project & API keys

Go to [https://cloud.google.com/console](https://cloud.google.com/console) and login with your Gmail credentials.

![Login to Google Cloud Console](//medias.jbfavre.org/blog-notes/Google-API-step1.png)

Create a project. I choosed to call it `MyChromiumProject`.

![Create Project](//medias.jbfavre.org/blog-notes/Google-API-step2.png)

Then go to `API & Auth > API` tab.

![Enable needed Google APIs](//medias.jbfavre.org/blog-notes/Google-API-step3.png)

Look for `chrome` in `Browse API` input field. Enable every API there.  
I also disabled default APIs, but it's up to you to do the same or not.

![Search for Chrome Google APIs](//medias.jbfavre.org/blog-notes/Google-API-step4.png)

To have full Chromium features, you could also enable following API:

- Google Maps Geolocation API
- Safe Browsing API
- Speech API
- Time Zone API
- Google+ API

Here is the point I missed when I first created my API keys.  
The result was an error when signin to Chromium whith error message `Service unavailable. Try again later.`.

To avoid that error, go to `API & Auth > Consent Screen` and choose an email adress as well as a `Product Name`; then click `Save`.

![Choose Product Name for consent screen](//medias.jbfavre.org/blog-notes/Google-API-step5.png)

Go then to `API & Auth > Credentials` and click `Create new Client ID`.  
Choose `Installed Application` for the Application type section and `Other` for the `Installed application type` section.

Click then on `Create new Key`, then choose `Browser key` and finally `Create` letting `Referers` textarea empty.

![Create credentials](//medias.jbfavre.org/blog-notes/Google-API-step6.png)

You're done for the Google part. Let's configure Chromium to use theses keys.

### Local browser configuration

The easiest way to achieve this is to export Google API credentials as environment variables.  
While this is suitable for a single-user computer, it may not be for a shared one.  
Anyway, let's create the file `/etc/chromium.d/googleapikeys` with content:

    export GOOGLE_API_KEY="your_api_key"
    export GOOGLE_DEFAULT_CLIENT_ID="your_client_id"
    export GOOGLE_DEFAULT_CLIENT_SECRET="your_client_secret"

Once done, you can start chromium and login via the menu entry `Sign in to Chromium...`

![Sign in to Chromium...](//medias.jbfavre.org/blog-notes/Google-API-step7.png)

Enjoy :)
