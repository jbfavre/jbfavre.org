---
title: "Compilation veille Twitter & RSS #10"
category: veille
---

La moisson de liens pour la semaine du 1 au 5 septembre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Elasticsearch

[Performance Considerations for Elasticsearch Indexing](http://www.elasticsearch.org/blog/performance-considerations-elasticsearch-indexing/)
: Elasticsearch users have delightfully diverse use cases, ranging from appending tiny log-line documents to indexing Web-scale collections of large documents, and maximizing indexing throughput is often a common and important goal. While we try hard to set good general defaults for “typical” applications, you can quickly improve your indexing performance by following a few simple best practices, described here.  
To begin with, do not use a very large java heap if you can help it: set it only as large as is necessary (ideally no more than half of the machine’s RAM) to hold the overall maximum working set size for your usage of Elasticsearch. This leaves the remaining (hopefully sizable) RAM for the OS to manage for IO caching. Make sure the OS is not swapping out the java process.

### Virtualisation

[The Technical Blog of James: Introducing: Oh My Vagrant!](https://ttboj.wordpress.com/2014/09/03/introducing-oh-my-vagrant/)
: Oh My Vagrant is an attempt to provide an easy to use development environment so that you can be up and hacking quickly, and focusing on the real devops problems. The README explains my choice of project name.

### MySQL

[Using MySQL 5.6 Global Transaction IDs (GTIDs) in production: Q&A](http://www.percona.com/blog/2014/09/05/using-mysql-5-6-global-transaction-ids-gtids-in-production-qa/)
: Thank you to all of you who attended my webinar last week about Global Transaction IDs (GTIDs), which were introduced in MySQL 5.6 to make the reconfiguration of replication straightforward. If you missed my webinar, you can still listen to the recording and download the sides (free). We had a lot of questions during the webinar, so let me try to answer them here. Please let me know in the comments if additional clarification is needed.

[MySQL 101: Monitor Disk I/O with pt-diskstats](http://www.percona.com/blog/2014/09/04/mysql-101-monitor-disk-io-with-pt-diskstats/)
: Here on the Percona Support team we often ask customers to retrieve disk stats to monitor disk IO and to measure block devices iops and latency. There are a number of tools available to monitor IO on Linux. iostat is one of the popular tools and Percona Toolkit, which is free, contains the pt-diskstats tool for this purpose. The pt-diskstats tool is similar to iostat but it’s more interactive and contains extended information. pt-diskstats reports current disk activity and shows the statistics for the last second (which by default is 1 second) and will continue until interrupted. The pt-diskstats tool collects samples of /proc/diskstats.

[Galera replication – how to recover a PXC cluster](http://www.percona.com/blog/2014/09/01/galera-replication-how-to-recover-a-pxc-cluster/)
: Galera replication for MySQL brings not only the new, great features to our ecosystem, but also introduces completely new maintenance techniques. Are you concerned about adding such new complexity to your MySQL environment? Perhaps that concern is unnecessarily.  
I am going to present here some simple tips that hopefully will let fresh Galera users prevent headaches when there is the need to recover part or a whole cluster in certain situations. I used Percona XtraDB Cluster (project based on Percona Server and Galera library + MySQL extensions from Codership) to prepare this post, but most if not all of the scenarios should also apply to any solution based on MySQL+Galera tandem you actually chose, whether these are binaries from Codership, MariaDB Galera Cluster or maybe your own builds.  
Unlike standard MySQL replication, a PXC cluster acts like one logical entity, which takes care about each node status and consistency as well as cluster status as a whole. This allows to maintain much better data integrity then you may expect from traditional asynchronous replication while allowing safe writes on multiple nodes in the same time. This is though for the price of more possible scenarios where database service will be stopped with no node being able to serve requests.  
Lets assume the simplest case cluster of nodes A, B and C and few possible scenarios where some or all nodes are out of service. What may happen and what we have to do, to bring them (or whole cluster) back up.

[When (and how) to move an InnoDB table outside the shared tablespace](http://www.percona.com/blog/2014/08/22/when-and-how-to-move-an-innodb-table-outside-the-shared-tablespace/)
: In my last post, “A closer look at the MySQL ibdata1 disk space issue and big tables,” I looked at the growing ibdata1 problem under the perspective of having big tables residing inside the so-called shared tablespace. In the particular case that motivated that post, we had a customer running out of disk space in his server who was looking for a way to make the ibdata1 file shrink. As you may know, that file (or, as explained there, the set of ibdata files composing the shared tablespace) stores all InnoDB tables created when innodb_file_per_table is disabled, but also other InnoDB structures, such as undo logs and data dictionary.

[A closer look at the MySQL ibdata1 disk space issue and big tables](http://www.percona.com/blog/2014/08/21/the-mysql-ibdata1-disk-space-issue-and-big-tables-part-1/)
: A recurring and very common customer issue seen here at the Percona Support team involves how to make the ibdata1 file “shrink” within MySQL. I can only imagine there’s a degree of regret by some of the InnoDB architects on their design decisions regarding disk-space management by the shared tablespace* because this has been a big frustration for many MySQL users over the years.

### Sysadmin

[Déclaration automatique des clés SSH dans le DNS via SSHFP](https://www.octopuce.fr/declaration-automatique-des-cles-ssh-dans-le-dns-via-sshfp/)
: Chez Octopuce, nous cherchons toujours à automatiser au maximum les opérations de maintenance et de déploiement de nos serveurs et machines virtuelles.  
Pour ce faire, nous utilisons Puppet, qui nous permet de déployer et maintenir facilement nos serveurs. Puppet met en œuvre le concept de Fact (pour “faits” comme dans “faits et gestes”), qui sont des clés/valeurs stockées sur le serveur puppetmaster décrivant chaque serveur.  
Parmi ces facts, on trouve les empreintes des clés SSH de nos serveurs.  
Or, il est possible, depuis quelques années, de publier ces empreintes dans le DNS pour permettre aux utilisateurs souhaitant se connecter à un serveur de vérifier l’empreinte via le DNS. Ces enregistrements DNS sont appellés SSHFP (pour SSH FingerPrint, décrit dans la RFC4255)

[Linux: Hide Processes From Other Users](http://www.cyberciti.biz/faq/linux-hide-processes-from-other-users/)
: I run a multi-user system. Most users access resources using ssh client. How can I stop leaking process information to all users on Linux operating systems? How do I prevent users from seeing processes that do not belong to them on a Debian/Ubuntu/RHEL/CentOS Linux server?

### PHP

[A new feature toggling library for PHP](http://labs.qandidate.com/blog/2014/08/18/a-new-feature-toggling-library-for-php/)
: Adding features to an existing application can seem straightforward, but what if the system you need the feature in is already running in production and the feature needs small bug fixes from time to time? Or what if developing a feature takes longer than a standard release cycle, so it can’t be rolled out yet?

[Compiling PHP Extensions](http://www.lornajane.net/posts/2014/compiling-php-extensions?utm_source=rss&utm_medium=rss&utm_campaign=compiling-php-extensions)
: There are lots of reasons why you might like to compile your own PHP extensions. For me those reasons are usually:  
    * The extension isn't available on pecl (e.g. uprofiler)
    * The extension is on pecl, but you need the newest version or a branch with a particular feature or fix in it, perhaps for testing
    * You are fixing an extension yourself (yay, we need more people like you!)

### Architecture

[Push our limits - reliability testing at Twitter](https://blog.twitter.com/2014/push-our-limits-reliability-testing-at-twitter)
: At Twitter, we strive to prepare for sustained traffic as well as spikes - some of which we can plan for, some of which comes at unexpected times or in unexpected ways. To help us prepare for these various types of traffic, we continuously test against our infrastructure to ensure it remains a highly available and scalable system.  
Our Site Reliability Engineering (SRE) team has created a framework to perform different types of load and stress tests. SREs test different stages of a service life cycle in different environments (e.g., a release candidate service in a staging environment). These tests help us anticipate how our services will handle traffic spikes and ensure we are ready for such events.

[Introducing Rudder: An etcd backed overlay network for containers](http://coreos.com/blog/introducing-rudder/)
: As we have previously blogged, Kubernetes, the container cluster manager, works great with CoreOS to distribute a workload across your entire cluster. To make it easier to find your services, Kubernetes does away with port-mapping and assigns a unique IP address to each pod. This works well on Google Compute where each host is assigned a /24 for use by individual pods. Things are not as easy on other cloud providers where a host cannot get an entire subnet to itself. Rudder aims to solve this problem by creating an overlay mesh network that provisions a subnet to each server.  
While Rudder was originally designed for Kubernetes, it is a generic overlay network that can be used as a simple alternative to existing software defined networking solutions. 

[Billion Messages - Art of Architecting scalable ElastiCache Redis tier ](http://harish11g.blogspot.fr/2014/08/art-of-architecting-highly-scalable-available-elasticache-redis-tier.html)
: Whenever we are designing a highly scalable architectures on AWS running thousands of application servers and supporting millions of requests, usage of NoSQL solutions have become inevitable part. One such solution we often been using for years on AWS is Redis . We love Redis. 
AWS introduced ElastiCache Redis on 2013 and we started using the same since it eased the management and operational efforts.  In this article i am going to share my experience on designing large scale Redis tiers supporting billions of messages per day on AWS, step by step guide on how to deploy the same, what are the Implications you face at scale ? Best Practices to be adopted while designing sharded+replicated Redis Tiers etc.

[3 (More) Common Uses for Redis in the Gaming Industry](http://redislabs.com/blog/3-more-common-uses-for-redis-in-the-gaming-industry)
: At the Game Developers Conference (GDC) four months back, I had great discussions with game developers that use Redis – here're my takes from that event. And this week, I was pleased to check out GDC Europe and at Gamescom. While GDC's European version is significantly smaller than its American equivalent, it was still a lot of fun meeting and conversing with developers. Gamescom is, well, gamescom (see photo of yours truly).  
Interestingly, and similarly to my previous GDC experience, I found out about more common use cases for Redis. Leaderboards, sessions and profiles are naturally still the top functions for which game developers use Redis, but a few more kept popping up insistingly…

[Performance improvements for photo serving](http://code.flickr.net/2014/08/26/performance-improvements-for-photo-serving/)
: We’ve been working to make Flickr faster for our users around the world. Since the primary photo storage locations are in the US, and information on the internet travels at a finite speed, the farther away a Flickr user is located from the US, the slower Flickr’s response time will be. Recently, we looked at opportunities to improve this situation. One of the improvements involves keeping temporary copies of recently viewed photos in locations nearer to users.  The other improvement aims to get a benefit from these caches even when a user views a photo that is not already in the cache.

[XLNT Platform: Driving A/B Testing at LinkedIn](http://engineering.linkedin.com/ab-testing/xlnt-platform-driving-ab-testing-linkedin)
: A/B testing is an indispensable driver behind LinkedIn’s data culture. We run more than 200 experiments in parallel daily and that number is growing quickly. We realized early on that ad hoc testing would only take us so far. We needed to change our approach to allow us to quickly quantify the impact of any A/B test in a scientific and controlled manner across LinkedIn.com and our apps. 

[Fighting spam with BotMaker](https://blog.twitter.com/2014/fighting-spam-with-botmaker)
: Spam on Twitter is different from traditional spam primarily because of two aspects of our platform: Twitter exposes developer APIs to make it easy to interact with the platform and real-time content is fundamental to our user’s experience.  
These constraints mean that spammers know (almost) everything Twitter’s anti-spam systems know through the APIs, and anti-spam systems must avoid adding latency to user-visible operations. These operating conditions are a stark contrast to the constraints placed upon more traditional systems, like email, where data is private and adding latency of tens of seconds goes unnoticed.

[Multi-Datacenter Cassandra on 32 Raspberry Pi’s](http://planetcassandra.org/blog/multi-datacenter-cassandra-on-32-raspberry-pis/)
: Here at Datastax, my fellow intern Daniel Chin and I built a 32 node DataStax Enterprise cluster running on Raspberry Pi’s! We are showcasing the always on, fault tolerant nature of Cassandra by letting anybody take down an entire data center with the press of a Big Red Button in our lobby.

[Building Dropbox’s New User Experience for Mobile, Part 1](https://tech.dropbox.com/2014/08/building-dropboxs-new-user-experience-for-mobile-part-1/)
: At Dropbox, we treat growth as an integral part of the product experience. We look at major holes in user experience that slow growth, and we try to be creative in addressing the big picture, rather than trying to “growth hack.” We look for solutions that enable users to experience the full value of Dropbox.

[The Tech Behind Dropbox’s New User Experience on Mobile (Part 2)](https://tech.dropbox.com/2014/08/tech-behind-dropboxs-new-user-experience-for-mobile/)
: In last week’s post, Kat described about how we redesigned our new user experience from the ground up to make it a delight for users to get started on Dropbox from our mobile apps. In this post, I’ll go into more detail about everything we did to make the mobile-to-desktop transition simple for users.  

[Ad-Hoc Task Management with Apache Helix](http://engineering.linkedin.com/distributed-systems/ad-hoc-task-management-apache-helix)
: Apache Helix is a generic cluster management framework used for the automatic management of partitioned and replicated distributed systems hosted on a cluster of nodes. Helix automates reassignment of tasks in the face of node failure and recovery, cluster expansion, and reconfiguration.  
Helix separates cluster management from application logic by representing an application’s lifecycle by a declarative state machine. The Apache Helix website describes in detail the architecture of the system and how it can be used to manage distributed systems. This blog post walks through Helix’s internals.

[Maximizing Our Publishing Platform Reach with Network Distribution](http://engineering.linkedin.com/publishing-platform/maximizing-our-publishing-platform-reach-network-distribution)
: One of the primary differentiators between the LinkedIn publishing platform and other existing blogging platforms is the power of network distribution - distribution of published content to a member’s connections and followers. To give you an idea of the reach of network distribution, we know that members who have published at least one article have an average of 1049 1st degree connections and 42 followers. 

[Handling 1 Billion requests a week with Symfony2](http://labs.octivi.com/handling-1-billion-requests-a-week-with-symfony2/)
: Some says that Symfony2, as every complex framework, is a slow one. Our answer’s that everything depends on you ;-) In that post, we’ll reveal some software architecture details of the Symfony2 based application running more than 1 000 000 000 requests every week.

[The Easy Way of Building a Growing Startup Architecture Using HAProxy, PHP, Redis and MySQL to Handle 1 Billion Requests a Week](http://highscalability.com/blog/2014/8/11/the-easy-way-of-building-a-growing-startup-architecture-usin.html)
: In the post I'll show you the way we developed quite simple architecture based on HAProxy, PHP, Redis and MySQL that seamlessly handles approx 1 billion requests every week. There’ll be also a note of the possible ways of further scaling it out and pointed uncommon patterns, that are specific for this project.

[Database design in SaaS platforms](http://labs.octivi.com/database-design-in-saas-platforms/)
: We introduce this next article from the series of designing SaaS platforms, where we describe common patterns of multitenant architectures. We’ll show you 3 approaches of the database modeling with scalability, security and maintainability in mind.

### Big Data

[Pig is Flying: Apache Pig on Apache Spark](http://blog.cloudera.com/blog/2014/09/pig-is-flying-apache-pig-on-apache-spark/)
: Analysts can talk about data insights all day (and night), but the reality is that 70% of all data analyst time goes into data processing and not analysis. At Sigmoid Analytics, we want to streamline this data processing pipeline so that analysts can truly focus on value generation and not data preparation.

[How-to: Translate from MapReduce to Apache Spark](http://blog.cloudera.com/blog/2014/09/how-to-translate-from-mapreduce-to-apache-spark/)
: The key to getting the most out of Spark is to understand the differences between its RDD API and the original Mapper and Reducer API.  
Venerable MapReduce has been Apache Hadoop‘s work-horse computation paradigm since its inception. It is ideal for the kinds of work for which Hadoop was originally designed: large-scale log processing, and batch-oriented ETL (extract-transform-load) operations.

[Bayesian Machine Learning on Apache Spark](http://blog.cloudera.com/blog/2014/08/bayesian-machine-learning-on-apache-spark/)
: Markov Chain Monte Carlo methods are another example of useful statistical computation for Big Data that is capably enabled by Apache Spark.  
During my internship at Cloudera, I have been working on integrating PyMC with Apache Spark. PyMC is an open source Python package that allows users to easily apply Bayesian machine learning methods to their data, while Spark is a new, general framework for distributed computing on Hadoop. Together, they provide a scalable framework for scalable Markov Chain Monte Carlo (MCMC) methods. In this blog post, I am going to describe my work on distributing large-scale graphical models and MCMC computation.

[The New Analytics Toolbox with Apache Spark — Going Beyond Hadoop](http://planetcassandra.org/blog/the-new-analytics-toolbox-with-apache-spark-going-beyond-hadoop/)
: The state of the big data analysis art has changed over the last couple years.  Hadoop has dominated the space for many years now, but there are a number of new tools available that are worth a look, whether you’re new to the analysis game or have been using Hadoop for a long time.

[Hamsterdb: An Analytical Embedded Key-value Store](http://feedproxy.google.com/~r/HighScalability/~3/7xh6m6GWL-0/hamsterdb-an-analytical-embedded-key-value-store.html)
: hamsterdb is not a new contender in this niche. In fact, hamsterdb has been around for over 9 years. In this time, it has dramatically grown, and the focus has shifted from a pure key-value store to an analytical database offering functionality similar to a column store database.

### Cloud

[Orchestrating Docker containers in production using Fig](http://blog.docker.com/2014/08/orchestrating-docker-containers-in-production-using-fig/)
: In the last blog post about Fig we showed how you could define and run a multi-container app locally. We’re now going to show you how you can deploy this app to production.

### Cassandra

[A series on Cassandra – Part 1: Getting rid of the SQL mentality](http://planetcassandra.org/blog/a-series-on-cassandra-part-1-getting-rid-of-the-sql-mentality/)
: At Websudos, Cassandra and Datastax Enterprise are core technologies in our area of competence, and moreover some of our favorite technologies in existence. There aren’t many things that can easily give you 100k writes per second, but if that’s what you are looking for you are in the right place.  
We got to learn a lot about Cassandra, by using it in multiple projects and especially while writing the Scala DSL for it, our very own phantom.

### Web Perf

[What the 10 fastest ecommerce sites can teach us about web performance](http://www.webperformancetoday.com/2014/08/12/10-fastest-ecommerce-sites-can-teach-us-web-performance/)
: We recently released our latest quarterly research into the performance and page composition of the top 500 online retailers. (The full report is available for download here.) Today, I thought it would be revealing to take a look at the ten fastest sites and the ten slowest sites and see what they have in common, where they differ, and what insights we can derive from this.

[Understanding Application Performance on the Network – Part VII: TCP Window Size](http://apmblog.compuware.com/2014/08/12/understanding-application-performance-network-part-tcp-window-size/)
: In Part VI, we dove into the Nagle algorithm – perhaps (or hopefully) something you’ll never see. In Part VII, we get back to “pure” network and TCP roots as we examine how the TCP receive window interacts with WAN links.

[Understanding Application Performance on the Network – Part VIII: Chattiness and Application Windowing](http://apmblog.compuware.com/2014/08/21/understanding-application-performance-on-the-network-chattiness-application-windowing/)
: A “chatty” application has, as an important performance characteristic, a large number of remote requests and corresponding replies – application turns, or app turns in Transaction Trace terminology. These are also often referred to as network round-trips, especially in developer documentation. The negative performance impact of these application turns increases as path latency increases, making remote access a challenge for chatty applications.

[Understanding Application Performance on the Network – Part IX: Conclusion](http://apmblog.compuware.com/2014/09/05/understanding-application-performance-on-the-network-conclusion/)
: One thing I learned – or more accurately, had reinforced – from the many comments on this blog series is that there are often subtle differences in the implementation of various TCP features and specifications; TCP slow-start and Congestion Avoidance are good examples, as is the retransmission of dropped packets (and even the Nagle algorithm). I have purposely tried to abstract the minutiae of the algorithms, describing instead their important indicators or “typical” characteristics, from which most permutations and anomalies should be recognizable. We can sometimes get caught up in precision (we have nanosecond timestamps!) when estimation is good enough, and not everyone cares to join the discussion on the relative merits of Reno and Tahoe TCP implementations. (I personally might enjoy these, especially over a glass of wine.)

[SSL Performance Diary #2: HTTP Strict Transport Security](http://zoompf.com/blog/2014/08/ssl-performance-diary-2-http-strict-transport-security)
: When we were designing the web interface to our new Zoompf Alerts beta website, SSL was a requirement from day 1. Not only did I want to protect our customers’s information, SSL provides a gateway to using SPDY, which can improve our site’s performance.  
I wanted to make it as easy as possible for people to access the Zoompf Alerts beta website. Since I am using SSL, I wanted a user to be able to type app.zoompf.com into their browsers address bar and get properly redirected to https://app.zoompf.com. This meant configuring a website at port 80, whose sole purpose is to send HTTP redirects to the SSL version of the site on 443. But how does adding this HTTP to HTTPS redirect impact page load times?

