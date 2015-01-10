---
layout: post
title: "Compilation veille Twitter & RSS #24"
category: veille
---

La moisson de liens pour les semaine du 22 décembre 2014 au 2 janvier 2015.
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Management

[Remote Work in Ops](http://blog.pagerduty.com/2014/12/remote-work-in-ops/)
: Remote work in ops is divisive. The perks of working from home, your local coffee shop, wherever, can be quite obvious to engineers and contributors. But some team leaders and company execs aren’t buying it. One faction sees it as a way to do better quality work. Another has watched deadlines and motivation fall by the wayside because of unresponsive remote workers.

### Security

[Don’t stop using IPsec just yet](https://nohats.ca/wordpress/blog/2014/12/29/dont-stop-using-ipsec-just-yet/)
: Today, Laura Poitras and Jake Appelbaum spoke at the 31C3 conference and in collaboration with Der Spiegel published an interesting article on VPN exploitation by the NSA.  
The “TL;DR” summary of what follows below is: If you configure your IPsec based VPN properly, you are not affected. Always use Perfect Forward Secrecy (“pfs=yes” wich is the default in libreswan IPsec) and avoid PreSharedKeys (authby=secret which is not the default in libreswan IPsec). If you really need to use PSK, use a strong shared secret that cannot be brutce forced. The NSA has their own version of IKEcrack running on millions of dollars worth of CPU’s. Also, the NSA sneaks into your router to steal your PSK’s so they can decrypt all your traffic.

[Handling Security Issues In Open Source Projects](http://robots.thoughtbot.com/handling-security-issues-in-open-source-projects)
: A vulnerability was recently discovered in the doorkeeper gem. It taught me the hard way how to deal with security issues in OSS, and I documented what I’ve learned in the process.

### Big Data

[Internet of Things (IoT) meets the Internet of Holidays (IoH)](http://labs.opendns.com/2014/12/29/internet-of-holidays-iot/)
: As the OpenDNS Security Labs team took some much needed time off, we found ourselves wondering what “toys” would be connected to the Internet throughout the holiday season, and what traffic patterns would emerge as a result. This blog post will detail some of our findings through the lens of the Internet of Things (IoT) connected devices, home automation products, toys, and wearable devices.

#### Cloudera

[Cloudera Enterprise 5.3 is Released](http://blog.cloudera.com/blog/2014/12/cloudera-enterprise-5-3-is-released/)
: We’re pleased to announce the release of Cloudera Enterprise 5.3 (comprising CDH 5.3, Cloudera Manager 5.3, and Cloudera Navigator 2.2).  
This release continues the drumbeat for security functionality in particular, with HDFS encryption (jointly developed with Intel under Project Rhino) now recommended for production use. This feature alone should justify upgrades for security-minded users (and an improved CDH upgrade wizard makes that process easier).

#### DataViz

[Is Your Log Data Presentation Worthy?](https://blog.logentries.com/2014/11/is-your-log-data-presentation-worthy/)
: You’re in a quarterly meeting where everyone is armed with slide decks; some good, some mind numbingly bad. It’s your turn, and you have a concise five-slide deck comprised of targeted, well designed, and insightful graphs. The graphs are clear and the room is able to discuss the highs and lows reported in the data.

### Databases

#### MariaDB

[MariaDB 10.1.2 : INFORMATION_SCHEMA tables for Galera membership & status](https://blog.mariadb.org/information_schema-tables-for-galera/)
: MariaDB Galera server logs all the cluster related information like node status, cluster status, membership, etc. in the error log. MariaDB 10.1.2 introduces a new `INFORMATION SCHEMA` plugin `WSREP_INFO` that enables querying these information via `INFORMATION SCHEMA` tables. The `WSREP_INFO` plugin adds two new tables to the Information Schema, `WSREP_MEMBERSHIP` and `WSREP_STATUS`.

#### MySQL

[An easy way to describe MySQL's Binary Log Group Commit](http://feedproxy.google.com/~r/MorganTocker/~3/utacipfwxBY/an-easy-way-to-describe-mysqls-binary-log-group-commit.html)
: It struck me today; there is an easy way to describe MySQL's Binary Log group commit improvements from MySQL 5.0-5.7 by using the example of a single ferry trying to ship passengers from point A to point B:

[Diagnosing SST errors with Percona XtraDB Cluster for MySQL](http://www.percona.com/blog/2014/12/30/diagnosing-sst-errors-with-percona-xtradb-cluster-for-mysql/)
: State Snapshot Transfer (SST) is used in Percona XtraDB Cluster (PXC) when a new node joins the cluster or to resync a failed node if Incremental State Transfer (IST) is no longer available. SST is triggered automatically but there is no magic: If it is not configured properly, it will not work and new nodes will never be able to join the cluster. Let’s have a look at a few classic issues.

[How well does your table fit in the InnoDB buffer pool in MySQL 5.6+?](http://www.percona.com/blog/2014/12/29/how-well-does-your-table-fit-in-innodb-buffer-pool-56/)
: Some time ago, Peter Zaitsev posted a blog titled “How well does your table fits in innodb buffer pool?” He used some special `INFORMATION_SCHEMA` tables developed for Percona Server 5.1 to report how much of each InnoDB table and index resides in your buffer pool.

[InnoDB crash recovery speed in MySQL 5.6](http://www.percona.com/blog/2014/12/24/innodb-crash-recovery-speed-mysql-5-6/)
: It has been a while since I have looked at InnoDB crash recovery. A lot has change in the last few years – we have serious crash recovery performance improvements in MySQL 5.5 and MySQL 5.6, we have solid state drives raising as typical high performance IO subsystem and we also have the ability to set much larger log files and often have a much larger InnoDB Buffer Pool to work with.

[File carving methods for the MySQL DBA](http://www.percona.com/blog/2014/12/23/file-carving-methods-for-the-mysql-dba/)
: This is a long overdue blog post from London’s 44con Cyber Security conference back in September. A lot of old memories were brought to the front as it were; the one I’m going to cover in this blog post is: file carving.

[New Option to Stop the Server If Binlogging Fails in MySQL 5.6](http://mysqlserverteam.com/new-option-to-stop-the-server-if-binlogging-fails-in-mysql-5-6/)
: In this post I will try to explain the new MySQL `binlog_error_action` server option. This new option is available from MySQL 5.6.22 and later.

[Testing backup locks during Xtrabackup SST on Percona XtraDB Cluster](http://www.percona.com/blog/2014/12/22/testing-backup-locks-during-xtrabackup-sst-on-percona-xtradb-cluster/)
: I was very excited to see Backup locks support in release notes for the latest Percona XtraDB Cluster 5.6.21 release. For those who are not aware, backup locks offer an alternative to FLUSH TABLES WITH READ LOCK (FTWRL) in Xtrabackup. While Xtrabackup can hot-copy Innodb, everything else in MySQL must be locked (usually briefly) to get a consistent snapshot that lines up with Innodb. This includes all other storage engines, but also things like table schemas (even on Innodb) and async replication binary logs. You can skip this lock, but it isn’t generally considered a ‘safe’ backup in every case.

### Chef

[Quick Tip: Deleting Attributes](http://jtimberman.housepub.org/blog/2014/12/24/quicktip-delete-attributes/)
: I have a new goal for 2015, and that is to write at least one “Quick Tip” per week about Chef. I’ve added the category “quicktips” to make these easier to find.

[SysAdvent Day 21: Baking Delicious Resources with Chef](https://www.chef.io/blog/2014/12/22/sysadvent-day-21-baking-delicious-resources-with-chef/)
: Growing up, every Christmas time included the sweet smells of fresh baked cookies. The kitchen would get incredibly messy as we prepped a wide assortment from carefully frosted sugar cookies to peanut butter cookies. Holiday tins would be packed to the brim to share with neighbors and visiting friends.

### Varnish

[Use Varnish to Avoid API Rate Limits - Nomad PHP](https://nomadphp.com/2014/12/23/use-varnish-avoid-api-rate-limits/)
: Presented by Jimmy Fursman @@jefweb A very basic limit we all run into when getting a general API off the ground often includes rate limits on our API keys with secondary data providers. Maybe you don’t have the budget to purchase more requests yet, maybe you haven’t built a caching system yet. Maybe you need …

### Web Perf

[Leverage Browser Storage For a Faster Web](http://calendar.perfplanet.com/2014/leverage-browser-storage-for-a-faster-web/)
: One of the cardinal rules for web performance is to reduce HTTP requests. The common interpretation of reducing HTTP requests limits the focus to bundling and minifying scripts, creating image sprites and eliminating unused resources. Developers often overlook AJAX requests. Many AJAX calls GET the same, unchanged data as previously made requests. Today’s rich web applications, like single page applications, rely on numerous AJAX calls to retrieve data before it is rendered. Untamed these AJAX requests create unnecessary chatter between client instances and the server.

[Speeding up HTTPS with session resumption](http://calendar.perfplanet.com/2014/speeding-up-https-with-session-resumption/)
: One of the main drawbacks of HTTPS is the time it takes to set up a connection. Specifically, every new TLS connection requires a handshake in order to establish shared encryption keys. This handshake requires two extra round trips on top of the standard TCP handshake roundtrip. On a high-latency connection, waiting for three roundtrips before the first byte is be transferred can make sites appear to load slowly.

[Different Angles of Web Performance](http://calendar.perfplanet.com/2014/different-angles-of-web-performance/)
: When people are talking about web performance, they may talk about different aspects of the subject depending on their role and the task on hand. The real life is rather messy, so we use abstractions that let us get away from details not important for the moment. The same reality may look quite differently depending on how we look at it. Adjusting our view for our specific needs, we probably may highlight four major angles to look at web performance. 

[Blast from the Past: Impact of TCP Components on Time to First Byte](http://calendar.perfplanet.com/2014/blast-from-the-past-impact-of-tcp-components-on-time-to-first-byte/)
: There are many reasons why your first byte can be slow but I am going to talk about a very specific interaction thats very well known to network geeks but can use some circulation among the front-end developers for it happens to be in the critical path of the browser. In particular this has a tendency to effect the boundaries at which SSL record layer hands off control to the HTTP layer.

[MozJPEG 3.0](http://calendar.perfplanet.com/2014/mozjpeg-3-0/)
: Mozilla has done a study of image formats and concluded that WebP and JPEG XR are not a big-enough improvement over well-optimized JPEG. In the study only HEVC (H.265) was significantly better, but it’s a patent-encumbered format, so it can’t be used freely (shhhh!)

[Saving Money by Investing in Performance: A Financial Model](http://calendar.perfplanet.com/2014/saving-money-by-investing-in-performance-a-financial-model/)
: I like to make things simple. Ok, if you’ve skimmed ahead you’re already raising an eyebrow. Please bear with me. I promise that I’ll show you another way to easily convince the business to invest in performance.  
When the business asks us why we should care about performance we always point them to the research done by the commerce giants. Performance means revenue! Yea!  
The benefits to the business doesn’t have to stop at revenue. Performance can also improve the bottom line. This is especially important in situations where it is harder to prove revenue impacts from performance improvements. Focusing on infrastructure and operational savings can make it easier to convince VIPs to invest in performance (while also having the added benefit of having happier and more productive users)  
I’d like to share with you a financial model that I’ve used to show how performance can impact the cost of doing business. 

[The Power of Perceived Performance](http://calendar.perfplanet.com/2014/the-power-of-perceived-performance/)
: Recent years have seen a huge flux of SPAs — Single Page Applications. Though they enhance user experience, implementing SPAs for large-scale web applications is indeed a complex task. At eBay, we faced a similar challenge when we wanted to migrate one of our key desktop flows (search and item pages) to an app-like experience, from the current state of full page refreshes.

[Undoing Years of Optimisations With HTTP/2](https://ma.ttias.be/undoing-years-optimisations-http2/)
: Someone just release an HTTP server callde H2O, which is significantly faster than Nginx (especially for small files). This in itself is an accomplishment, but the reason for this development is even more important.

[Simplify speed with the HALT number](http://calendar.perfplanet.com/2014/simplify-speed-with-the-halt-number/)
: Speed engineers rely on business buy-in to get the job done. Telling a clear story will gain you resources and help when it’s time to balance speed against other marketing considerations.

[Fast-Forward Performance – The Future Looks Bright](http://calendar.perfplanet.com/2014/fast-forward-performance-the-future-looks-bright/)
: Predicting the future is difficult and science has not been able to make time travel possible for us to peak ahead to what will happen to web performance. However, have you paid attention to the W3C activities recently? There is some really exciting performance stuff cooking.

[Automated Performance Analysis for Web API Tests](http://apmblog.compuware.com/2014/12/23/automated-performance-analysis-web-api-tests/)
: A modern web application is typically not restricted to be used via a web frontend. It also provides functionality that is used elsewhere like mobile apps. Think about an e-commerce site today: a shop does not get its business exclusively from sales on its web shop, but also through mobile apps, and through rich-client applications […]

[Squeezing the Most Into the New W3C Beacon API](http://calendar.perfplanet.com/2014/squeezing-the-most-into-the-new-w3c-beacon-api/)
: It’s common for many websites to build a signaling mechanism that, without user action, sends analytics or diagnostics information back to a server for further analysis. I’ve created one at least a half a dozen times to capture all sorts of information: JavaScript errors, browser and device capabilities, client side click paths, the list goes on and on. In fact, the list is actually getting longer with the W3C‘s Web Performance Working Group cranking out lots of great Real User Metrics (RUM) specifications for in-browser performance diagnostics like Navigation Timing, Resource Timing, User Timing and the forthcoming Navigation Error Logging and Frame Timing.

[Free WebPageTest API Keys: CI Perf Tests Made Even Easier](http://calendar.perfplanet.com/2014/free-webpagetest-api-keys/)
: Performance awareness is growing. Yes, it’s growing slower than we’d like, but comparing where we are today to 5 years ago, we’ve definitely made huge strides in communicating the business value of speed. Today, performance is an important piece of most web development and design conferences, and top-tier players like the Filament Group, Cloud Four, Tim Kadlec make it a core part of their identity.

[The changing role of the browser cache](http://calendar.perfplanet.com/2014/the-changing-role-of-the-browser-cache/)
: When Steve Souders released High Performance Web Sites in 2007, it was the first time anyone had spent the time to explain what the browser cache does and how to take advantage of it to improve your site’s performance. It may be hard to believe, but before that point the browser cache was a source of mystery for many web developers – some were even blissfully unaware that those images, stylesheets, and JavaScript files being requested would somehow end up on their disk drive. 

### PHP

[PHP's new hashtable implementation](http://nikic.github.com/2014/12/22/PHPs-new-hashtable-implementation.html)
: About three years ago I wrote an article analyzing the memory usage of arrays in PHP 5. As part of the work on the upcoming PHP 7, large parts of the Zend Engine have been rewritten with a focus on smaller data structures requiring fewer allocations. In this article I will provide an overview of the new hashtable implementation and show why it is more efficient than the previous implementation.


