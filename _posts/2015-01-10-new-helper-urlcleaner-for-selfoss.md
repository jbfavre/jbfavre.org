---
layout: post
title: "New helper UrlCleaner for Selfoss"
category: dev
tags: [php]
meta:
  keywords: [selfoss,php,helper,urlcleaner]
---

SelfOSS is an RSS reader written in PHP. I implemented a `UrlCleaner` for it. The code gets real URL of each article and also tries to remove known trackers included as URL parameters or fragment.

Some RSS feeds are served from centralized place like FeedBurner and sharing articles from SelfOSS with the real URL isn't that easy.  
Sometimes, theses URL are also tagged with either URL Query String or fragment. Theses tags are used to determine the origin of the user's click.

In order to make article sharing from within SelfOSS easier, as well as somewhat protecting privacy removing known trackers, I implemented a SelfOSS helper to replace article's URL provided by feeds with the real one.
The piece of code [has now been merged into upstream SelfOSS repository](https://github.com/SSilence/selfoss/pull/610).

Helpers in SelfOSS are a great way to provide generic reusable code. It's far way better than duplicating `spouts` (SelfOSS modules). That why I'll now work on rewriting my `Fulltextrss spout` as `helper` so that it could be used in existing `spouts`.

Currently, `UrlCleaner` helper resolves URLs containing following patterns:

* `feed`
* `rss`
* `t.co`

For trackers, it hanldes thoses containing following patterns:

* `utm_` and `xtor` as query string patterns
* `xtor` and `ens_id` as fragment patterns
