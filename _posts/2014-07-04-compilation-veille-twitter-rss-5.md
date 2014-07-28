---
layout: post
title: "Compilation veille Twitter & RSS #5"
category: veille
---

La moisson de liens pour les semaines du 23 au 27 juin 2014 ainsi que du 30 juin au 4 juillet 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Tools

#### Application Performance Management

[Open Source application monitoring & packet tracing system](http://packetbeat.com/)
:  Don't know how to start troubleshooting an issue? Try opening the topological map. It's guaranteed to give you the big picture and you'll be surprised how often it sends you in the right direction.  
You can set filters to restrict the map to only particular parts of the traffic. For example, you can show only the transactions with a high response time.


### English posts

#### Application Performance Management

[Understanding Application Performance on the Network – Part IV: Packet Loss](http://apmblog.compuware.com/2014/07/03/understanding-application-performance-on-the-network-packet-loss/)
:  We know that losing packets is not a good thing; retransmissions cause delays. We also know that TCP ensures reliable data delivery, masking the impact of packet loss. So why are some applications seemingly unaffected by the same packet loss rate that seems to cripple others? From a performance analysis perspective, how do you understand the relevance of packet loss and avoid chasing red herrings?

#### Virtualization

[Performance benchmarks: KVM vs. Xen](http://major.io/2014/06/22/performance-benchmarks-kvm-vs-xen/)
:  After having some interesting discussions last week around KVM and Xen performance improvements over the past years, I decided to do a little research on my own. The last complete set of benchmarks I could find were from the Phoronix Haswell tests in 2013. There were some other benchmarks from 2011 but those were hotly debated due to the Xen patches headed into kernel 3.0.

#### Hadoop

[Considering 10GE Hadoop clusters and the network](http://bradhedlund.com/2012/03/26/considering-10ge-hadoop-clusters-and-the-network/ (Thanks @shtouff))
:  Does 10GE Hadoop make any sense? And if so, how might you design the cluster?  Let’s discuss some rationale for and against 10gig Hadoop and then look at some potential network setups for 10G clusters.  If you need a quick into or refresher, read this post on the basics of Hadoop clusters and the network, and then come back.

[Implementing a real-time data pipeline with Spark Streaming](http://chimpler.wordpress.com/2014/07/01/implementing-a-real-time-data-pipeline-with-spark-streaming/)
:  Real-time analytics has become a very popular topic in recent years. Whether it is in finance (high frequency trading), adtech (real-time bidding), social networks (real-time activity), Internet of things (sensors sending real-time data), server/traffic monitoring, providing real-time reporting can bring tremendous value (e.g., detect potential attacks on network immediately, quickly adjust ad campaigns, …). Apache Storm is one of the most popular frameworks to aggregate data in real-time but there are also many others such as Apache S4, Apache Samza, Akka Streams, SQLStream and more recently Spark Streaming.

#### Big Data

[TSAR, a TimeSeries AggregatoR](https://blog.twitter.com/2014/tsar-a-timeseries-aggregator)
:  Twitter is a global real-time communications platform that processes many billions of events every day. Aggregating these events in real time presents a massive challenge of scale. Classic time-series applications include site traffic, service health, and user engagement monitoring; these are increasingly complemented by a range of analytics products and features such as Tweet activity, Followers, and Twitter Cards that surface aggregated time-series data directly to end users, publishers, and advertisers. Services that power such features need to be resilient enough to ensure a consistent user experience, flexible enough to accommodate a rapidly changing product roadmap, and able to scale to keep up with Twitter’s ever growing user base.

#### Data Analysis

[Baby steps in learning Python for data analysis ](http://www.analyticsvidhya.com/blog/2014/07/baby-steps-learning-python-data-analysis/)
:  My 10 month old daughter took her first baby steps and watching her take those steps was one of the most beautiful moment of my life. A baby, brimming with excitement to reach out to her father, trying to balance, while exploring her newly acquired skill and trying to speak simultaneously in her own way – was a moment to cherish! I hope I could have recorded that instance!  
What followed the first little walk was equally exciting – Jenika (my daughter) was enjoying practicing her new skill in spite of all the limitations, she faced. She kept faltering every 3-4 steps, but it didn’t seem to affect her.

Despite the title, following posts are totally safe for work :)

[Data Doesn't Need to Be Free, But it Does Need to Have Sex ](http://highscalability.com/blog/2014/6/30/data-doesnt-need-to-be-free-but-it-does-need-to-have-sex.html)
:  How do we pay for the services we want to create and use? That is the question. Systems like Twitter, Instagram, Pinterest and all the other services you love are not cheap to build at scale. Grow now and figure out your business model later as the VC funding disappears, like hope, is not a sustainable strategy. If we want new services that stick around we are going to have to figure out a way for them to make money.

[Why does data need to have sex?](http://highscalability.com/blog/2014/7/2/why-does-data-need-to-have-sex.html)
:  Data needs the ability to combine with other data in new ways to reach maximum value. So data needs to have the equivalent of sex.  
That's why I used sex in the title of my previous article, Data Doesn't Need To Be Free, But It Does Need To Have Sex. So it wasn't some sort of click-bait title as some have suggested. 

#### Datacenter

[Introducing “Wedge” and “FBOSS,” the next steps toward a disaggregated network](https://code.facebook.com/posts/681382905244727/introducing-wedge-and-fboss-the-next-steps-toward-a-disaggregated-network) (Thanks @arnaud)
:  Over the last three years, we’ve been working within the Open Compute Project (OCP) to apply this principle to open designs for racks, servers, storage boxes, and motherboards. And last year, OCP kicked off a new networking project with a goal of developing designs for OS-agnostic top-of-rack (TOR) switches. This was the first step toward disaggregating the network – separating hardware from software, so we can spur the development of more choices for each – and our progress so far has exceeded our expectations: Broadcom, Intel, Mellanox, and Accton have already contributed designs for open switches; Cumulus Networks and Big Switch Networks have made software contributions; and the development work and discussions in the project group have been highly productive. 

#### Databases

[Benchmarking LevelDB vs. RocksDB vs. HyperLevelDB vs. LMDB Performance for InfluxDB](http://influxdb.org/blog/2014/06/20/leveldb_vs_rocksdb_vs_hyperleveldb_vs_lmdb_performance.html)
:  For quite some time we’ve wanted to test the performance of different storage engines for our use case with InfluxDB. We started off using LevelDB because it’s what we had used on earlier projects and RocksDB wasn’t around yet. We’ve finally gotten around to running some basic tests against a few different engines. Going forward it looks like RocksDB might be the best choice for us.  
However, we haven’t had the time to tune any settings or refactor things to take advantage of specific storage engine characteristics. We’re open to suggestions so read on for more detail.

[Failover with the MySQL Utilities: Part 2 – mysqlfailover](http://www.mysqlperformanceblog.com/2014/07/03/failover-mysql-utilities-part-2-mysqlfailover/)
:  In the previous post of this series we saw how you could use mysqlrpladmin to perform manual failover/switchover when GTID replication is enabled in MySQL 5.6. Now we will review mysqlfailover (version 1.4.3), another tool from the MySQL Utilities that can be used for automatic failover.

#### Varnish

[Debugging Varnish](http://www.sitepoint.com/debugging-varnish/)
:  At 99designs we heavily (ab)use Varnish to make our app super fast, but also to do common, simple tasks without having to invoke our heavy-by-contrast PHP stack. As a result, our Varnish config is pretty involved, containing more than 1000 lines of VCL, and a non-trivial amount of embedded C.  
When we started seeing regular segfaults, it was a pretty safe assumption that one of us had goofed writing C code. So how do you track down a transient segfault in a system like Varnish? Join us down the rabbit hole…

#### PHP

[Continuous Integration with PHP-CI](http://www.sitepoint.com/continuous-integration-php-ci/)
:  Creating an application is one thing. Keeping it to a certain quality level is another thing entirely. These days, you can find many tools which can help you to keep the quality of your application in shape. Running these tools one by one can be very time consuming. For that, you can install so called continuous integration (CI) services. PHPCI is one of those and in this article, we will dive into it.

#### Monitoring

[How You Can Monitor Your Web Performance for Free](http://apmblog.compuware.com/2014/07/01/can-monitor-web-performance-free/)
:  I recently analyzed FIFA’s World Cup website for web performance best practices and highlighted the top problems FIFA had on their website (too many flag images, very large favicon, et Cetera). After completing the post, I realized we could use a freely available trial service to run some tests to see if they have improved things. You can use this same process to test your own pages.
