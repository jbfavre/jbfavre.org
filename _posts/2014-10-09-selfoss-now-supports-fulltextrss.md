---
layout: post
title: "SelfOSS now supports FullTextRSS"
category: dev
---
	
I'm very happy we finally found a solution to integrate it to main [SelfOSS](https://github.com/SSilence/SelfOSS) repository.

It took some time, and two Pull Requests, but [SelfOSS](https://github.com/SSilence/SelfOSS) now integrates [FullTextRSS](http://fivefilters.org/content-only/).

### What is FullTextRSS ?

[FullTextRSS](http://fivefilters.org/content-only/) is a free software PHP application developped by [FiveFilters](http://fivefilters.org/). It allows you to transform partial web feeds — often summary-only feeds which expect you to visit cluttered, ad-ridden site to read the full story — to deliver the full content stripped of clutter and ads.

The [very last version of FulltextRSS is not free](http://fivefilters.org/content-only/#download) (you need to pay to get it), while [the penultimate one is](http://fivefilters.org/content-only/#download3).

### SelfOSS integration

To be able to use FulltextRSS into SelfOSS, I created a "spout" (SelfOSS module's name) which extend legacy feed spout.
When used, it will load truncated RSS feed and replace content with full content extracted from the web page.

You can enable FultextRSS feed for any source, setting source's type to "RSS Feed (with FullTextRSS)".

### What next ?

First, I'll try to improve FullTextRSS intergation, cleaning code and fix missing documentation.

I also have others projects, like providing a source classification for sources, which could be used to display "hot" sources first, and "cold" sources last.
Classification will be based on your actions on articles (share, display, star, ...). It's of course highly experimental for now :)
