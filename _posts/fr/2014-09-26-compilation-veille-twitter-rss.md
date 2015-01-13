---
layout: post
title: "Compilation veille Twitter & RSS"
category: veille
---

La moisson de liens pour les semaine du 22 au 26 septembre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Time management

[Building a productive routine from your boring daily tasks](http://feedproxy.google.com/~r/FredericDeVillamilcom/~3/HFgAaEzopVw/building-a-productive-routine-from-your-boring-daily-tasks.html)
: As a devops doing lots of R&D, the daily usual ops stuff can seem a little bit boring. Manually looking at each nightly alert, digging through the log files looking for an unusual pattern, checking your collectd graph are things you’d easily forget about to work on the latest trending technologies.  
When part of your job is made of repeating, not that interesting task, there are 2 things to do.

### API development

[Using Boltsort to Make API Caching More Efficient](http://www.fastly.com/blog/varnish-tip-boltsort)
: If you're caching (parts of) an API that is consumed by various developers, you might find that they all have different ideas about the order in which the arguments are placed in the query string.

[5 Ways to Change Your APIs and Data Formats without Downtime](http://blog.getprismatic.com/eng-practice-migrations-and-future-proofing/)
: You've implemented a new feature, which involved refactoring some existing data formats or server handlers. Everything looks good, the tests all pass, and (if applicable) the latest clients (frontend and/or backend) all seem to work with the latest servers. Ship it?!  
Not so fast.  
If your changes involve formatting changes to data at rest, and/or interface changes to servers with clients running in other processes, you also have to worry about (and test) how your changes will interact with old data or code.  
In our latest eng practice, we'll talk about the issues (inertia), how to deal them when they come up (migrations), and have a discussion of best practices (forward compatibility) to reduce the need for or difficulty of future migrations.

### Performance measurement

[Real time insights into LinkedIn's performance using Apache Samza](http://engineering.linkedin.com/samza/real-time-insights-linkedins-performance-using-apache-samza)
: It's not easy to quickly gather all the data that goes into a LinkedIn page view, particularly for something like our home page. LinkedIn benefits from a very distributed service-oriented architecture for assembling pages as quickly possible while still being resilient to failures from any particular bit of content. Each bit that ends up on the page is provided by separate services, each of which often will call upon other, subsequent services in order to finish its work. This approach is great for building a reliable, scalable website, but does make it more challenging to get a holistic view of everything that goes into building those pages, since the effort was distributed across many machines operating independently.

[Monitor and Improve Web Performance Using RUM Data Visualization](http://engineering.linkedin.com/performance/monitor-and-improve-web-performance-using-rum-data-visualization)
: As a global company with web traffic from all over the world, optimizing web performance for different geographic locations is important for LinkedIn’s member engagement and experience. We capture Real User Monitoring (RUM) data from most of our web pages and mobile applications. A good visualization tool on top of the RUM data is essential for us to quickly understand what is affecting site performance. This article describes a tool/infrastructure, known internally as GoSpeed, that we built for this purpose. It provides RUM data processing, visualization, monitoring, and analyses data daily, hourly, or on a near real-time basis. GoSpeed also presents analysis results that indicate why site speed matters so much to member engagement. The results help us build a culture of site speed awareness on the engineering team.

### Docker

[Docker Hub Official Repos: Announcing Language Stacks](http://blog.docker.com/2014/09/docker-hub-official-repos-announcing-language-stacks/)
: With Docker containers fast becoming the standard for building blocks for distributed apps, we’re working with the Docker community to make it easier for users to quickly code and assemble their projects.  Official Repos, publicly downloadable for free from the Docker Hub Registry, are curated images informed by user feedback and best practices.  They represent a focused community effort to provide great base images for applications, so developers and sysadmins can focus on building new features and functionality while minimizing repetitive work on commodity scaffolding and plumbing.  
At DockerCon last June, we announced the first batch of Official Repos which covered many standard tools like OS distributions, web servers, and databases.  At the time, we had several organizations join us to curate Official Repos for their particular project, including Fedora, CentOS, and Canonical.  And the community responded enthusiastically as well: in the three months since they launched, Official Repos have so grown in popularity that they now account for almost 20% of all image downloads.

[Docker on Raspberry](http://blog.loof.fr/2014/09/docker-on-raspberry.html)
: Docker is such a lightweight virtualization solution that it make sense even running on a raspberry.  
BreizhCamp's voting machine "LikeBox" uses such a device, and our embedded software is modularized into subsystems. Was a cool challenge to run them inside docker containers, don't you think so ?  
Raspberry default OS "raspbian" don't offer a docker system package. As we are more familiar with Debian/Ubuntu I wish I could find one, or maybe use some cross-compilation (docker uses docker to build, so no-way to built it from sources on the target platform). Anyway, as a Proof-of-Concept I'm relying on ArchLinux, as this one has a Docker package !

[A Great Introduction to Docker, and Where It’s All Going](http://thenewstack.io/a-great-introduction-to-docker-and-where-its-all-going/)
: I’ve been following the evolution of Docker since shortly after the initial release of the project in March 2013. My earliest Docker-related memory, albeit a vague one, was of being briefed by Solomon Hykes, the project’s creator, at Cloud Connect Santa Clara the month after the project’s release. I mention all this only to say that I’ve sat in on my fair share of Docker presentations and briefings, including several at Docker-the-company’s recently held, first-ever DockerCon.

### Log management

[When Logstash and Syslog go wrong](http://www.kartar.net/2014/09/when-logstash-and-syslog-go-wrong/)
: One of the challenges of centralized logging is that log formats blossom like umbrellas in cheap cocktails. One of the few apparent exceptions to this is Syslog. I mean it is governed by an RFC right? It’s a standard in logging right? At this point some of you in the know are sniggering: “Syslog has an RFC… Syslog standards… hahahahaha…”  
So what’s so funny? Well Syslog IS a standard. It’s just that some of the log output that vendors create and then call Syslog doesn’t quite match that standard.

### Big Data

[Open Sourcing ml-ease](http://engineering.linkedin.com/large-scale-machine-learning/open-sourcing-ml-ease)
: LinkedIn data science and engineering is happy to release the first version of ml-ease, an open-source large scale machine learning library. ml-ease supports model fitting/training on a single machine, a Hadoop cluster and a Spark cluster with emphasis on scalability, speed, and ease-of-use. ml-ease is a useful tool for developers working on big data machine learning applications, and we're looking forward to feedback from the open-source community. ml-ease currently supports ADMM logistic regression for binary response prediction with L1 and L2 regularization on Hadoop clusters.

[Data Science Studio 'Shiso' release and Community Edition](http://www.dataiku.com//blog/2014/07/21/DSS-shiso-release.html)
: We are very proud to announce today the release of Data Science Studio V 1.2, codenamed Shiso. With this release, we now offer a free version: Data Science Studio Community Edition !  
Less than two months after the release of the 'Yuzu' version, Data Science Studio 1.2 'Shiso' introduces new features that keep making Data Science more accessible to everyone with our Data Science Studio.

[How do publishing optimizers work ?](http://www.dataiku.com//blog/2014/07/03/how-do-publishing-optimizers-work.html)
: Marketers and community managers who work with social networks are often tempted to use social publishing optimization tools. Yet, the recipe behind such tools is often obscure for non-data scientists. Here are a few tips to shed light on recipes used to optimize your social posts.

[Fuzzy join : join datasets with approximate string matching](http://www.dataiku.com//blog/2014/07/17/fuzzy-join-typos-correction.html)
: When working with text values provided by real users, you must deal with various approximations or typing errors. Let's have a look at how Data Science Studio makes dealing with a list of misspelled movie titles incredibly easy.  
In a previous article, I illustrated how to use text normalization and text clustering within Data Science Studio to work on text based datasets. Let's now see another use case.

[MongoDB and DataStax, In the Rearview Mirror](http://blog.couchbase.com/mongodb-and-datastax-rearview-mirror)
: Thumbtack published an excellent blog post today (link). It highlights the preliminary results of performance tests executed with Couchbase Server, MongoDB and DataStax Enterprise (Apache Cassandra). The final results will be included in a benchmark report. Thumbtack consulted with Couchbase, MongoDB and DataStax to ensure the databases were configured for optimal performance based on both the workload and the hardware. The result? Couchbase Server outperformed MongoDB and DataStax Enterprise in both read intensive workloads and balanced workloads.

[New Benchmarks for SQL-on-Hadoop: Impala 1.4 Widens the Performance Gap](http://blog.cloudera.com/blog/2014/09/new-benchmarks-for-sql-on-hadoop-impala-1-4-widens-the-performance-gap/)
: With 1.4, Impala’s performance lead over the SQL-on-Hadoop ecosystem gets wider, especially under multi-user load.  
As noted in our recent post about the Impala 2.x roadmap (“What’s Next for Impala: Focus on Advanced SQL Functionality”), Impala’s ecosystem momentum continues to accelerate, with nearly 1 million downloads since the GA of 1.0, deployment by most of Cloudera’s enterprise data hub customers, and adoption by MapR, Amazon, and Oracle as a shipping product. Furthermore, in the past few months, independent sources such as IBM Research have confirmed that “Impala’s database-like architecture provides significant performance gains, compared to Hive’s MapReduce- or Tez-based runtime.”

### Analytics

[A deep dive into how we built Advanced Analytics](http://blog.pagerduty.com/2014/09/a-deep-dive-into-how-we-built-advanced-analytics/)
: Advanced Analytics was a big project for us – not only was it a big step toward helping operations teams improve their performance with actionable data, but it also presented a complex design and engineering challenge.

[Caveat Data Scientist: Public Trust Low for Science](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:208321)
: A new paper entitled "Gaining Trust as well as Respect in Communicating Science Topics" published in the Proceedings of the National Academy of Sciences (PNAS) provides evidence the public does not entirely trust scientists yet views them as relatively competent. This suggests the public smells ideological and political bias, and intellectual rot among many modern scientists. As a result science has taken a credibility hit.

[Tutorial on Web scrapping, text mining and predictive modeling (a.k.a. Solution to AV Author identification challenge)](http://www.analyticsvidhya.com/blog/2014/09/solution-web-scrapping-text-mining-predictive-modeling-challenge/)
: While working late in office, something very strange happened to me. I got a message from Google that I should leave office in next 5 minutes in case I wish to catch the movie, which I booked two days back. I was surprised because I never set up any kind of reminder or alarm on this. I smiled and wrapped up my work to catch the movie. Where can Google get this information from? Obviously the confirmation mail of the E-ticket, which was lying in my Gmail account. Google has the expertise to read through every mail of yours (obviously, with all the permission given by the user himself), and drive out useful information. The way to read all the content available in form of HTML format is called web scrapping. Google has bots which scrap data and analyze to bring out useful information.

[Data Munging in Python (using Pandas) – Baby steps in Python](http://www.analyticsvidhya.com/blog/2014/09/data-munging-python-using-pandas-baby-steps-python/)
: Time flies by! I see Jenika (my daughter) running around in the entire house and my office now. She still slips and trips – but is now independent to explore the world and figure out new stuff on her own. I hope I would have been able to inspire similar confidence with use of Python for data analysis in the followers of this series.

### Scalability

[Introducing mcrouter: A memcached protocol router for scaling memcached deployments](https://code.facebook.com/posts/296442737213493/introducing-mcrouter-a-memcached-protocol-router-for-scaling-memcached-deployments/)
: Most web-based services begin as a collection of front-end application servers paired with databases used to manage data storage. As they grow, the databases are augmented with caches to store frequently-read pieces of data and improve site performance. Often, the ability to quickly access data moves from being an optimization to a requirement for a site. This evolution of cache from neat optimization to necessity is a common path that has been followed by many large web scale companies, including Facebook, Twitter[1], Instagram, Reddit, and many others.

[How Facebook Makes Mobile Work at Scale for All Phones, on All Screens, on All Networks](http://highscalability.com/blog/2014/9/22/how-facebook-makes-mobile-work-at-scale-for-all-phones-on-al.html)
: When you find your mobile application that ran fine in the US is slow in other countries, how do you fix it? That’s a problem Facebook talks about in a couple of enlightening videos from the @scale conference. Since mobile is eating the world, this is the sort of thing you need to consider with your own apps.  
In the US we may complain about our mobile networks, but that’s more #firstworldproblems talk than reality. Mobile networks in other countries can be much slower and cost a lot more. This is the conclusion from Chris Marra, Project Manager at Facebook, in a really interesting talk titled Developing Android Apps for Emerging Market.

### DNS

[No more expired DNSSEC zones with Bind 9.9 inline signing](http://t37.net/no-more-expired-dnssec-zones-with-bind-9-9-inline-signing.html)
: DNSSEC (RFC 4033, 6014 and 6840) is a great step towards global security on the Internet. Unfortunately, it has a huge practical drawback: you need to renew your zones signature every month or your domain won’t resolve anymore (it used to happen to me every month).  
Even though the best practice advices to sign your zone manually, Bind 9.9 brings the awesome inline signing, which allows to load or transfer an unsigned zone and create a signed version of it which answers all queries and transfer requests, without altering the original unsigned version. In other words, this means you won’t have to worry about your zone signature expiring anymore. As good news always come by pair, FreeBSD 10 now provides Bind 9.9, which means nothing prevents you from implementing DNSSEC anymore.

### MySQL

[Logical MySQL backup tool mydumper 0.6.2 now available](http://www.percona.com/blog/2014/09/26/logical-mysql-backup-tool-mydumper-0-6-2-now-available/)
: We are pleased to announce the third release in the 0.6 series of mydumper, a tool for performing logical MySQL backups. In this release, we focused on simplifying compiling the code and added new features for making logical backups. These new features include enhancements to AWS RDS support and extending TokuDB support.

[TokuDB Read Free Replication : Details and Use Cases](http://www.tokutek.com/2014/09/tokudb-read-free-replication-details-and-use-cases/)
: The biggest innovation in TokuDB v7.5 is Read Free Replication (RFR). I blogged a few days ago posting a benchmark showing how much additional throughput can be achieved on a replication slave, while at the same time lowering the read IO operations to almost zero. The official documentation on the feature is available here.

[More then 1000 columns – get transactional with TokuDB](http://www.percona.com/blog/2014/09/25/1000-columns-get-transactional-tokudb/)
: Recently I encountered a specific situation in which a customer was forced to stay with the MyISAM engine due to a legacy application using tables with over 1000 columns. Unfortunately InnoDB has a limit at this point. I did not expect to hear this argument for MyISAM. It is usually about full text search or spatial indexes functionality that were missing in InnoDB, and which were introduced in MySQL 5.6 and 5.7, respectively, to let people forget about MyISAM. In this case though, InnoDB still could not be used, so I gave the TokuDB a try.

[How to scale big data applications using MySQL sharding frameworks](http://www.percona.com/blog/2014/09/23/please-join-upcoming-webinar-scale-big-data-applications-using-mysql-sharding-frameworks/)
: This Wednesday I’ll be discussing two common types of big data: machine-generated data and user-generated content. These types of big data are amenable to sharding, a commonly used technique for spreading data over more than one database server.  
I’ll be discussing this in-depth during a live webinar at 10 a.m. Pacific time on Sept. 24. I’ll also talk about two major sharding frameworks: MySQL Fabric and Shard-Query for OLTP or OLAP workloads, respectively. Following the webinar there will be a brief Q/A session.  
_(as a complement, you can read: [A new kid in the MySQL sharding world](http://serge.frezefond.com/2013/10/a-new-kid-in-the-mysql-sharding-world/))

[Benchmark: TokuDB vs. MariaDB / MySQL InnoDB Compression](http://www.pythian.com/blog/benchmark-tokudb-vs-mariadb-mysql-innodb-compression/)
: As the amount of data companies are interested in collecting grows, life becomes all the more difficult for IT staff at all levels within an organization. SAS Enterprise storage devices that were once considered giants are now being phased out in favor of SSD Arrays with features such as de-duplication, tape storage has pretty much been abandoned and the same goes without saying for database engines.

[TokuDB v7.5 Read Free Replication : The Benchmark](http://www.tokutek.com/2014/09/tokudb-v7-5-read-free-replication-the-benchmark/)
: New to TokuDB® v7.5 is a feature we’re calling “Read Free Replication” (RFR). RFR allows TokuDB replication slaves to process insert, update, and delete statements with almost no read IO. As a result, the slave can easily keep up with the master (no lag) as well as brings all the read IO capacity of the slave for read-scaling your workload.  
The goal of this blog is two-fold: (1) to cover why RFR is important and how RFR works and (2) to run a simple before/after benchmark showing the impact of RFR on a well known workload. Later this week I’ll post another blog showing other interesting use-cases for RFR beyond this first benchmark.

### NoSQL

[Dissecting the NoSQL Benchmark](http://blog.couchbase.com/dissecting-nosql-benchmark)
: Apache Cassandra / DataStax Enterprise. MongoDB. Couchbase Server.  
Go.

### ElasticSearch

[Elasticsearch Curator Version 2.0 Released](http://www.elasticsearch.org/blog/elasticsearch-curator-version-2-0-released/)
: I am pleased to announce the immediate availability of Curator 2.0!

### InfluxDB

[One year of InfluxDB and the road to 1.0](http://influxdb.org/blog/2014/09/26/one-year-of-influxdb-and-the-road-to-1_0.html)
: I’m sitting in a Starbucks in Tokyo as I write this. I’m here because Shuhei Tanuma, a developer at GREE, has invited me to give a talk about our experiences developing InfluxDB in Golang at a GREE tech event. Shuhei is also one of the 47 contributors we’ve had issue pull requests to the core of InfluxDB in the last year. He’s using InfluxDB to store server and application performance data at GREE, a mobile social gaming company that’s publicly traded on the Tokyo stock exchange.
