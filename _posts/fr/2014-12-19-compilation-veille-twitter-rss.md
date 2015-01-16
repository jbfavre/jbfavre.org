---
layout: post
title: "Compilation veille Twitter & RSS #24"
category: veille
---

La moisson de liens pour les semaine du 15 au 19 décembre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Big Data

[The Big Problem is Medium Data](http://highscalability.com/blog/2014/12/17/the-big-problem-is-medium-data.html)
: “Big Data” systems continue to attract substantial funding, attention, and excitement. As with many new technologies, they are neither a panacea, nor even a good fit for many common uses. Yet they also hold great promise. The question is, can systems originally designed to serve hundreds of millions of requests for something like web pages also work for requests that are computationally expensive and have tight tolerances?

### Hadoop

[New in Cloudera Labs: SparkOnHBase](http://blog.cloudera.com/blog/2014/12/new-in-cloudera-labs-sparkonhbase/)
: Apache Spark is making a huge impact across our industry, changing the way we think about batch processing and stream processing. However, as we progressively migrate from MapReduce toward Spark, we shouldn’t have to “give up” anything. One of those capabilities we need to retain is the ability to interact with Apache HBase.

### Monitoring

[Is Server Monitoring Dead?](https://blog.logentries.com/2014/12/is-server-monitoring-dead/)
: Once upon a time one of the first pieces of software you installed on your infrastructure was a server monitoring tool. This was the control panel through which you could view how effectively your infrastructure was being used, akin to the speedometer and temperature gauges on your car, or the dashboard of dials in an airplane’s cockpit. 

[Introducing Atlas: Netflix's Primary Telemetry Platform](http://techblog.netflix.com/2014/12/introducing-atlas-netflixs-primary.html)
: While working in the datacenter, telemetry was split between an IT-provisioned commercial product and a tool a Netflix engineer wrote that allowed engineers to send in arbitrary time-series data and then query that data. This tool's flexibility was very attractive to engineers, so it became the primary system of record for time series data. Sadly, even in the datacenter we found that we had significant problems scaling it to about two million distinct time series. Our global expansion, increase in platforms and customers and desire to improve our production systems' visibility required us to scale much higher, by an order of magnitude (to 20M metrics) or more. In 2012, we started building Atlas, our next-generation monitoring platform. In late 2012, it started being phased into production, with production deployment completed in early 2013.

### Virtualization

[PaaS vs Docker - why is it such a heated debate?](http://feedproxy.google.com/~r/NatiShalom/~3/kABb-DHYKqM/paas-vs-docker-why-is-it-such-a-heated-debate.html)
: Docker started as just a software container on top of a Linux operating system which seemed like a simple optimization for a fat hypervisor.  
Its disruptive force however comes from the fact that it does force us to rethink many of the layers of the cloud stack. Starting from the way we handle configuration management, through the way we handle networking and build systems, and even microservices. Not all of this is directly related to Docker per se, but that’s the difference between thinking of Docker as a container, and Docker as a change agent or a movement. 

### Databases

[A Year In The Life Of MaxScale](https://mariadb.com/blog/year-life-maxscale)
: This time of the year it is traditional, at least in the UK, to look back and reflect on the year that is coming to a close. Since we have just produced the release candidate for MaxScale and are looking forward to the GA release early in the New Year, it seems like a good time to reflect on the events that have bought us to this stage in the story of MaxScale.

[Scaling TokuDB Performance with Binlog Group Commit](http://www.tokutek.com/2014/12/scaling-tokudb-performance-binlog-group-commit/)
: TokuDB offers high throughput for write intensive applications, and the throughput scales with the number of concurrent clients.  However, when the binary log is turned on, TokuDB 7.5.2 throughput suffers.  The throughput scaling problem is caused by a poor interaction between the binary log group commit algorithm in MySQL 5.6 and the way TokuDB commits transactions.   TokuDB 7.5.4 for Percona Server 5.6 fixes this problem, and the result is roughly an order of magnitude increase in SysBench throughput for in memory workloads.

#### MySQL

[InnoDB’s multi-versioning handling can be Achilles’ heel](http://www.percona.com/blog/2014/12/17/innodbs-multi-versioning-handling-can-be-achilles-heel/)
: I believe InnoDB storage engine architecture is great for a lot of online workloads, however, there are no silver bullets in technology and all design choices have their trade offs. In this blog post I’m going to talk about one important InnoDB limitation that you should consider.

[Making HAProxy 1.5 replication lag aware in MySQL](http://www.percona.com/blog/2014/12/18/making-haproxy-1-5-replication-lag-aware-in-mysql/)
: HAProxy is frequently used as a software load balancer in the MySQL world. Peter Boros, in a past post, explained how to set it up with Percona XtraDB Cluster (PXC) so that it only sends queries to available nodes. The same approach can be used in a regular master-slaves setup to spread the read load across multiple slaves. However with MySQL replication, another factor comes into play: replication lag. In this case the approach mentioned for Percona XtraDB Cluster does not work that well as the check we presented only returns ‘up’ or ‘down’. We would like to be able to tune the weight of a replica inside HAProxy depending on its replication lag. This is what we will do in this post using HAProxy 1.5.

[Auto-bootstrapping an all-down cluster with Percona XtraDB Cluster](http://www.percona.com/blog/2014/12/03/auto-bootstrapping-an-all-down-cluster-with-percona-xtradb-cluster/)
: One new feature in Percona XtraDB Cluster (PXC) in recent releases was the inclusion of the ability for an existing cluster to auto-bootstrap after an all-node-down event.  Suppose you lose power on all nodes simultaneously or something else similar happens to your cluster. Traditionally, this meant manually re-bootstrapping the cluster, but not any more.

[Some Notes on Index Statistics in InnoDB](http://mysqlserverteam.com/some-bits-about-index-statistics-in-innodb/)
: In MySQL 5.6 we introduced a huge improvement in the way that index and table statistics are gathered by InnoDB and subsequently used by the Optimizer during query optimization: Persistent Statistics. Some aspects of the way that Persistent Statistics work could be improved further though, and we’d really like your input on that.

[Making HAProxy High Available for MySQL Galera Cluster](http://www.fromdual.com/making-haproxy-high-available-for-mysql-galera-cluster)
: After properly installing and testing a Galera Cluster we see that the set-up is not finished yet. It needs something in front of the Galera Cluster that balances the load over all nodes.  
So we install a load balancer in front of the Galera Cluster. Typically nowadays HAProxy is chosen for this purpose. But then we find, that the whole Galera Cluster is still not high available in case the load balancer fails or dies. So we need a second load balancer for high availability.  
But how should we properly fail-over when the HAProxy load balancer dies? For this purpose we put a Virtual IP (VIP) in front of the HAProxy load balancer pair. The Virtual IP is controlled and fail-overed with Keepalived.

### Architecture

[Microservices and Platform-as-a-Service (Part VI)](http://www.activestate.com/blog/2014/12/microservices-and-paas-part-vi)
: It seems like forever since I attended Adrian Cockroft's meetup focusing on microservices. It's actually only been a couple of months, but much has happened since then: countless articles, meetups, and conference sessions focusing on microservices have been delivered, many meetings and design efforts at companies moving towards a microservices-based approach have been endured, and five installments of this blog series have been written.

[Building a scalable and available home feed](http://engineering.pinterest.com/post/105293275179)
: We pride ourselves on being a company focused first and foremost on the user experience. In order to deliver a great experience, including showing related content in the home feed, we’re building a service that’s fast and highly available. From a Pinner’s point of view, availability means how often they’ll get errors. For service owners, availability means how many minutes the service can be down without violating SLA (service level agreement). We use number of nines to measure the availability of our site and each service.

#### Varnish

[Varnish FetchError http first read error: -1 11 (Resource temporarily unavailable)](https://ma.ttias.be/varnish-fetcherror-http-first-read-error-1-11-resource-temporarily-unavailable/)
: Just like the Straight insufficient bytes error, this is another error you can see in your varnishlogs.

[Normalizing the Host Header](http://www.fastly.com/blog/varnish-tip-normalize-host-header)
: In the continued quest to increase cache hit ratios, the chant is: "Normalize, normalize, normalize." Less variation in your requests means you have a higher chance of getting hits. This month's highlight is the Host header.

[Reload Varnish VCL without losing cache data](https://ma.ttias.be/reload-varnish-vcl-without-losing-cache-data/)
: You can reload the Varnish VCL configuration without actually restarting Varnish. A restart would stop the varnishd process and start it anew, clearing all the cache it has built up in the meantime. But you can also reload the varnish configurations, to load your new VCL without losing the cache.

[Combine Apache’s HTTP authentication with X-Forwarded-For IP whitelisting in Varnish](https://ma.ttias.be/apache-http-authentication-with-x-forwarded-for-ip-whitelisting-in-varnish/)
: Such a long title for a post. If you want to protect a page or an entire website with HTTP authentication, but also want to whitelist a few fixed IPs (for instance: office or VPN IPs), you can combine both authentication mechanismes in Apache via .htaccess files.

[Varnish tip: see which cookies are being stripped in your VCL](https://ma.ttias.be/varnish-tip-see-cookies-stripped-vcl/)
: Most Varnish configs contain a lot of logic to strip cookies from the client, to avoid them being sent to the server. This is needed, because cookies are often part of the hash-calculation of a request (if they are included in the `vcl_hash` routine), and a random cookie would make for a unique hash each time and that can destroy your caching strategy. Here's a trip on how you can see what cookies your client is sending, and what cookies your Varnish VCL is removing and sending on to the backend.

#### Log management

[Connected QA: Selenium + Log Analysis](https://blog.logentries.com/2014/12/connected-qa-selenium-log-analysis/)
: Does the idea of adding Quality Assurance (QA) test runs to your log analysis platform sound strange? It’s actually not! The value in adding QA test runs goes beyond helping the QA team; it helps the entire development shop as they move to a DevOps framework. 

[End-to-End IoT Monitoring with Log Data — Part 1](https://blog.logentries.com/2014/12/end-to-end-iot-monitoring-with-log-data-part-1/)
:  A recent blog explored the importance of logging in general in terms of IoT devices. It also cited predictions that a huge number (50 billion) of IoT devices are expected to exist by 2020. While Machine to Machine(M2M) communication is a related area, the IoT is all about extending the Internet to systems and even low power devices.

[Exciting Logstash Plugin Ecosystem Changes](http://www.elasticsearch.org/blog/plugin-ecosystem-changes/)
: With the release of Logstash 1.5.0 Beta 1 (try it out!), we are changing the way plugins are installed, maintained, and published. We have taken the feedback from our loverly users and community over time and our goal is to make it easier to use and develop plugins. This project is only the beginning — we will be iterating on this idea to provide a one-stop solution to discover and share a community of plugins! In this blog we would like to explain our reasons behind this decision, take you through the new workflow and future roadmap we have in mind.

### Web servers

#### Nginx

[Nginx & SPDY error: `net::ERR_SPDY_PROTOCOL_ERROR`](https://ma.ttias.be/nginx-spdy-error-neterr_spdy_protocol_error/)
: I recently enabled SPDY on this blog, and once in a while I got the following error in my browser, causing chunks of the page (javascript, CSS, ...) to stop loading.

[Enable SPDY in Nginx on CentOS 6](https://ma.ttias.be/enable-spdy-in-nginx-on-centos-6/)
: SPDY is the protocol designed by Google, which is later to be known as HTTP/2. Nginx supports this protocol, on top of SSL connections, and since recent versions it has the `--with-http_spdy_module` option enabled!

### Web Performance

[5 things you should know about DDoS attacks, outages, SSL, and web performance](http://www.webperformancetoday.com/2014/12/17/5-things-know-ddos-attacks-outages-ssl-web-performance/)
: It’s no surprise that online security is a burgeoning issue. 2014 has been a watershed year for the security industry, as cyberattacks reached a tipping point in terms of quantity, length, complexity, and targets.  
Last week at Radware, we released our annual Global and Network Security Report. This report is based on data gathered from a survey of 330 organizations worldwide. The survey was designed to collect objective, vendor-neutral information about the issues organizations face when preparing for and fighting against cyberattacks.

[Graph your web performance metrics!](http://calendar.perfplanet.com/2014/graph-your-web-performance-metrics/)
:  Two of my favorite new things in sitespeed.io 3.0 are the ability to drive WebPageTest (done using Marcel Duran’s lovely WebPageTest API wrapper) and send the metrics to Graphite. I like it a lot because it simplifies my day to day by keeping track of the performance of the sites I work with. 

[Performance measurements using Chrome DevTools code snippets](http://calendar.perfplanet.com/2014/performance-measurements-using-chrome-devtools-code-snippets/)
: Chrome DevTools code snippets became my favorite tool when investigatig performance bottlenecks in web applications. A JavaScript fragment can be stored as a named snippet in the “Sources” DevTools panel and executed in the current page’s context, just as if it were a code executed in the browser’s console.

[Async Fragments: Rediscovering Progressive HTML Rendering with Marko](http://calendar.perfplanet.com/2014/async-fragments-rediscovering-progressive-html-rendering-with-marko/)
: At eBay, we take site speed very seriously and are always looking for ways to allow developers to create faster-loading web apps. This involves fully understanding and controlling how web pages are delivered to web browsers. Progressive HTML rendering is a relatively old technique that can be used to improve the performance of websites, but it has been lost in a whole new class of web applications. The idea is simple: give the web browser a head start in downloading and rendering the page by flushing out early and multiple times. Browsers have always had the helpful feature of parsing and responding to the HTML as it is being streamed down from the server (even before the response is ended). This feature allows the HTML and external resources to be downloaded earlier, and for parts of the page to be rendered earlier. As a result, both the actual load time and the perceived load time improve.

[WebPagetest Private Instances in Five Minutes](http://calendar.perfplanet.com/2014/webpagetest-private-instances-in-five-minutes/)
: There are a lot of reasons for running your own WebPagetest private instance, some of which include:  
    - Lots of automated testing using the API (or CI tools like the WebPagetest API wrapper or grunt-perfbudget that are built on top of the API).
    - Control over the testing infrastructure for consistent results across test locations or SLA’s that are within your control (there are no SLA’s for the public WebPagetest instance).
    - Integration with existing logs-processing infrastructure for consuming test results (splunk, etc).
    - Testing of content not reachable from the public Internet.

