---
layout: post
title: "Smokeping custom Curl probe"
category: monitoring
tags: [smokeping,perl]
---

	
I just released a [custom Curl probe for smokeping](https://github.com/oetiker/SmokePing/pull/24).

Curl probe only fetch load time (that is, total time minus DNS resolution time). But I needed to be able to measure various response times like (extract from curl manpage):

* time_namelookup
* time_redirect
* time_connect
* time_appconnect
* time_pretransfer
* time_starttransfer
* time_total

If most of them are quite clear, some others are not that obvious. For example, time_appconnect indicate time spent in protocol negotiation before reaching the app.

And that can be used to measure SSL negotiation time !

To achieve that, I added a new configuration option `write_out`, which can take on the above values. If empty, or not in the list, default Curl probe behaviour apply (total time minus DNS resolution time).

As far as I know, smokeping can only receive one value at a time. That means you have to define as much Targets as wanted timers, and do as much requests as wanted timers.
