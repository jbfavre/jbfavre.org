---
layout: post
title: "Compilation veille Twitter & RSS #22"
category: veille
---

La moisson de liens pour les semaine du 8 au 12 décembre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Architecture

[Monoliths, Cookie-Cutter or Microservices](http://paulhammant.com/2014/12/07/moniliths-cookiecutters-or-microservices/)
: The article posits that microservices is the antidote to monoliths. It doesn’t mention cookie cutter scaling at all, which is another antidote to monoliths, with the right build infrastructure and DevOps.

#### Chef

[Upcoming releases for Chef Client and Chef Development Kit](https://www.chef.io/blog/2014/12/11/upcoming-releases-for-chef-client-and-chef-development-kit/)
: Recently we have been getting some questions about the versions of Chef Client and Chef Development Kit. I wanted to share some information about the background and the upcoming releases to shed some light into this topic.

[Chef 12: Fix Untrusted Self Signed Certificates](https://www.chef.io/blog/2014/12/12/chef-12-fix-untrusted-self-signed-certificates/)
: Scenario: You’ve started up a brand new Chef Server using version 12, and you have installed Chef 12 on your local system. You log into the Management Console to create a user and organization (or do this with the command-line chef-server-ctl commands), and you’re ready to rock with this knife.rb:

[Guest Post: Creating Your Own Chef Cookbook Generator](https://www.chef.io/blog/2014/12/09/guest-post-creating-your-own-chef-cookbook-generator/)
: The Chef Development Kit (Chef DK) comes with an awesome tool: chef. This command line utility can do a number of things to streamline chef development for you, so let’s look at one of the more valuable things you can do: create your own cookbook generator.

### Databases

[If Eventual Consistency Seems Hard, Wait Till You Try MVCC](http://www.xaprb.com/blog/2014/12/08/eventual-consistency-simpler-than-mvcc/)
: This should sound familiar:  
One of the great lies about NoSQL databases is that they’re simple. Simplicity done wrong makes things a lot harder and more complicated to develop and operate. Programmers and operations staff end up reimplementing (badly) things the database should do.  
Nobody argued this line of reasoning more vigorously than when trying to defend relational databases, especially during the darkest years (ca. 2009-2010), when NoSQL still meant NO SQL DAMMIT, all sorts of NoSQL databases were sprouting, and most of them were massively overhyped.

#### Couchbase

[Pure Storage and Couchbase](http://blog.couchbase.com/pure-storage-and-couchbase)
: There is a lot of buzz around enterprise class storage, lately.   One of our partners ,Pure Storage, is a leader in the space and recently gave us the opportunity to deploy Couchbase in one of their lab environments.  The 8 node cluster was easily able to sustain a 100% write 1 million ops/second workload.  A 1,000,000 writes/second workload was generated using our pillowfight tool run from one of the cluster nodes with the following parameters:

#### InfluxDB

[Clustering, tags, and enhancements to come in 0.9.0](Clustering, tags, and enhancements to come in 0.9.0)
: We’ve been heads down working on InfluxDB v0.9.0 for a while and I’d like to update the community on what we’re working on and what the goals are for the upcoming release. It started out as a release to completely rewrite the clustering implementation, but it has turned into something much bigger. Not only are we significantly improving the clustering capabilities of Influx, we’re adding support for tags, cleaning up the API, rewriting a bunch of underlying implementation, changing storage engines, and moving to a pure Go codebase.

#### MariaDB

[MaxScale, manual control, external monitors and notification methods](https://mariadb.com/blog/maxscale-manual-control-external-monitors-and-notification-methods)
: One of the nice things about the "plug and play" approach of MaxScale is that people constantly find ways of using it that were not originally envisaged when we designed MaxScale. One such configuration that I have heard of from multiple sources is using monitoring outside of MaxScale itself. This post will discuss a little about how monitoring works and how it can be moved outside of MaxScale. In particular a simplified example will be presented which shows how to use the notification mechanism in Galera to control MaxScale's use of the nodes in a Galera cluster.

[MariaDB 10.1.2 alpha now available](https://blog.mariadb.org/mariadb-10-1-2-alpha-now-available/)
: The MariaDB project is pleased to announce the immediate availability of MariaDB 10.1.2. This is an Alpha release.

#### MySQL

[MySQL 5.7: `only_full_group_by` Improved, Recognizing Functional Dependencies, Enabled by Default!](http://mysqlserverteam.com/mysql-5-7-only_full_group_by-improved-recognizing-functional-dependencies-enabled-by-default/)
: Here’s an account of recent work which has kept me busy and excited for a few months. For those unfamiliar with the `only_full_group_by` sql mode, let me provide some context. I’ll use the world database, which can be downloaded from this MySQL Documentation page. You can find details on how to install the database on the same page. We have a table of countries and a table of languages spoken in each country. It’s a 1-to-N relationship: a country can have many languages so CountryLanguage.CountryCode is a foreign key referencing Country.Code:

[Recover MySQL root password without restarting MySQL (no downtime!)](http://www.percona.com/blog/2014/12/10/recover-mysql-root-password-without-restarting-mysql-no-downtime/)
: The situation is the classic “need to recover MySQL root password” but you cannot restart MySQL (because it is the master production server, or any other reason), which makes the –skip-grant-tables solution as a no-no possibility.

[MySQL 5.6 Transportable Tablespaces best practices](http://www.percona.com/blog/2014/12/09/mysql-5-6-transportable-tablespaces-best-practices/)
: In MySQL 5.6 Oracle introduced a Transportable Tablespace feature (copying tablespaces to another server) and Percona Server adopted it for partial backups which means you can now take individual database or table backups and your destination server can be a vanilla MySQL server. Moreover, since Percona Server 5.6, `innodb_import_table_from_xtrabackup` is obsolete as Percona Server also implemented Oracle MySQL’s transportable tablespaces feature which as I mentioned gives you the ability to copy tablespace (table.ibd) between servers. Let me demonstrate this through one example where I am going to take partial backup of selective tables instead of an entire MySQL server and restore it on a running MySQL server on destination without taking it offline.

[Global Counters And Average Patient Temperature](https://vividcortex.com/blog/2014/12/08/global-counters-and-average-patient-temperature/)
: Our recent blog post on finding wasted prepare/execute/close cycles showed how per-statement analysis can find individual queries that are not being repeatedly executed after being prepared. To recap, we found a number of statements in our own application that were being prepared, executed, and then never re-executed. This means 3 network round-trips instead of just executing the statement directly, which takes only 1 round-trip. By fixing this, we materially decreased load on our servers and improved latency for the service that issued the query.

### Big Data

#### Hadoop

[The Impala Cookbook](http://blog.cloudera.com/blog/2014/12/the-impala-cookbook/)
: Impala, the open source MPP analytic database for Apache Hadoop, is now firmly entrenched in the Big Data mainstream. How do we know this? For one, Impala is now the standard against which alternatives measure themselves, based on a proliferation of new benchmark testing. Furthermore, Impala has been adopted by multiple vendors as their solution for letting customers do exploratory analysis on Big Data, natively and in place (without the need for redundant architecture or ETL). Also significant, we’re seeing the emergence of best practices and patterns out of customer experiences.

[New in CDH 5.2: Improvements for Running Multiple Workloads on a Single HBase Cluster](http://blog.cloudera.com/blog/2014/12/new-in-cdh-5-2-improvements-for-running-multiple-workloads-on-a-single-hbase-cluster/)
: Historically, Apache HBase treats all tables, users, and workloads with equal weight. This approach is sufficient for a single workload, but when multiple users and multiple workloads were applied on the same cluster or table, conflicts can arise. Fortunately, starting with HBase in CDH 5.2 (HBase 0.98 + backports), workloads and users can now be prioritized.

#### Analytics

[How to Track User Data Without Being Creepy](http://keenio.tumblr.com/post/104951439161/how-to-track-user-data-without-being-creepy)
: There’s been a lot of scrutiny lately against companies who are acting irresponsibly with their data. This got me thinking a lot about data, ethics, and our moral responsibility as companies. Last month I gave a talk about ‘responsible analytics’ at Defrag 2014. My intention wasn’t to give a definitive decision-making guide, but to spark a discussion about the kinds of data we should and shouldn’t collect from our users.

[Data science without statistics is possible, even desirable](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:231741)
: The purpose of this article is to clarify a few misconceptions about data and statistical science.  
I will start with a controversial statement: data science barely uses statistical science and techniques. The truth is actually more nuanced, as explained below.

[Open Sourcing Cubert: A High Performance Computation Engine for Complex Big Data Analytics](http://engineering.linkedin.com/big-data/open-sourcing-cubert-high-performance-computation-engine-complex-big-data-analytics)
: What do you do when your Hadoop ETL script is mercilessly killed because it is hogging too many resources on the cluster, or if it starts missing completion deadlines by hours?  
We encountered this exact same problem more than a year ago while building the computation pipeline for XLNT, LinkedIn’s A/B testing platform. After wasting several months on optimization and tuning possibilities with Pig and Hive and still not meeting completion deadlines, we realized the problem needed an entirely new set of algorithms. Written completely in Java and built using several novel primitives, the new system proved effective in handling joins and aggregations on hefty datasets which allowed us to successfully launch XLNT

#### Dataviz

[What is the future of Data visualization and Dashboard solutions?](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:230684)
: From time to time I keep pondering on what could be the future and I am sure lot of us get this science fiction imagery where the future data analyst will be given just a pair of holographic gloves and perform three dimensional analysis.

### Virtualization

#### Docker

[Advancing Docker Security: Docker 1.4.0 and 1.3.3 Releases](https://blog.docker.com/2014/12/advancing-docker-security-docker-1-4-0-and-1-3-3-releases/)
: We’re pleased to announce that we have today released Docker Engine 1.4. What’s in it? As Solomon Hykes described last week at DockerCon Europe, its major “feature” is an emphasis on bug fixes and platform stability. Over 180 commits for fixes were merged! Docker 1.4 also adds the Overlay Filesystem as a new, experimental, storage driver. (see release notes and bump branch).

[First experiment with Docker Machine](http://blog.loof.fr/2014/12/first-experiment-with-docker-machine.html)
: Docker "machine" is a new command created by Docker team to manage docker servers you can deploy containers to. Think about boot2docker you use to run on your development workstation, but applied to all possible Cloud and on-premises hosting services.

### Log management

[Operating Apache Samza at Scale](http://engineering.linkedin.com/samza/operating-apache-samza-scale)
: At LinkedIn, we use a log-centric system called Apache Kafka to move tons of data around. If you're not familiar with Kafka, you can think of it as a publish-subscribe system that models each message as a log entry.  
However, it's difficult for a developer to spend their time thinking about a problem domain relevant to their application in addition to the complex fault tolerant semantics required to work with the log (Kafka's ISR is up there with Paxos in terms of understandability).

[Alternative Logging Frameworks for Application Servers: WildFly](http://blog.c2b2.co.uk/2014/09/alternative-logging-frameworks-for.html)
: Welcome to the third part of our blog series on configuring application servers to use alternative logging frameworks. This time we turn our gaze to WildFly, the open source application server from JBoss. Again, we'll be configuring it to use Log4j2 and SLF4J with Logback.

### Development

#### PHP

[Async – Cooperative Multitasking for Hack](http://hhvm.com/blog/7091/async-cooperative-multitasking-for-hack)
: For several months now, Hack has had a feature available called async which enables writing code that cooperatively multitasks. This is somewhat similar to threading, in that multiple code paths are executed in parallel, however it avoids the lock contention issues common to multithreaded code by only actually executing one section at any given moment.

### Web performances

[Reactive prefetch speeds Google's mobile search by 100-150 milliseconds.](http://highscalability.com/blog/2014/12/10/reactive-prefetch-speeds-googles-mobile-search-by-100-150-mi.html)
: Increasing responsiveness by parallelizing and prefetching content using hints and dependency graphs, is an old concept, but seldom do we see such a nice tight example of the benefit as is given by the great Ilya Grigorik in this G+ post. 

[Beyond spreadsheets and waterfalls: 4 tools to make your performance data exciting (to people other than you)](http://www.webperformancetoday.com/2014/12/10/step-away-spreadsheet-4-great-tools-visualize-performance-data/)
: One of my first experiences in witnessing the power of visualizing performance data was several years ago, when I started work at Strangeloop (which has since been acquired by Radware). We had been doing a proof of concept of our front-end optimization solution (then known as Site Optimizer, now called FastView) with a prospective customer. We had great results. Among other things, we cut start render and page load times by more than half on all the landing pages we tested on.

[6 web performance books that every web developer should read](http://calendar.perfplanet.com/2014/6-web-performance-books-that-every-web-developer-should-read/)
: For new developers that are starting to learn web development there is a lot to learn; HTML, CSS, and JavaScript just to mention a few! It’s important that new developers learn the importance of fast web pages and the positive effect that this can have on users. In this article I will list out my pick of 6 web performance books that every web developer should read. With Christmas just around the corner these books would make a great present for your web developers friends!

### Network

[X-Raying the Internet Backbone: A 3D View of the AS Graph (Part 1)](http://labs.opendns.com/2014/12/11/macro-view-asn-part-1/)
: Following up with our data visualization series, today we’re going to explore a brand new idea with OpenGraphiti. Everyday, network engineers manipulate real and virtual wires to connect people in the most efficient and reliable way possible. After decades of construction and evolution, it is fascinating to step back and contemplate the shape of this giant ecosystem. In this blog post, we will share some techniques to visualize the structure of the AS network: the backbone of our modern communication.

#### SSL

[SSL Performance Diary #4: Optimizing the TLS Handshake](http://zoompf.com/blog/2014/12/optimizing-tls-handshake)
: In our prior SSL Performance Diary post, Optimizing Data Encryption, we mentioned there are 2 areas of TLS that can harbor performance problems:  
-    Encrypting the data. Data sent back and forth between visiting web browsers and your web server must be encrypted and decrypted. If not configured properly, your page load times can become much slower than unencrypted traffic.  
-    Establishing a secure connection. There are several steps that must occur before a browser establishes a secured connection to your website: identities must be confirmed, algorithms must be selected, and keys must be exchanged. This is known as the TLS Handshake and can have a significant impact on your site performance.

[SSL Labs End of Year 2014 Updates](https://community.qualys.com/blogs/securitylabs/2014/12/08/ssl-labs-end-of-year-2014-updates)
: From the SSL/TLS perspective, 2014 was quite an eventful year. The best way to describe what we at SSL Labs did is we kept running to stay in the same place. What I mean by this is that we spent a lot of time reacting to high profile vulnerabilities: Heartbleed, the ChangeCipherSpec protocol issue in OpenSSL, POODLE (against SSL 3 in October and against TLS in December), and others. Ultimately, this has been a very successful year for us, with millions of assessments carried out.

[Poodle Bites TLS](https://community.qualys.com/blogs/securitylabs/2014/12/08/poodle-bites-tls)
: There’s a new SSL/TLS problem being announced today and it’s likely to affect some of the most popular web sites in the world, owning largely to the popularity of F5 load balancers and the fact that these devices are impacted. There are other devices known to be affected, and it’s possible that the same flaw is present in some SSL/TLS stacks. We will learn more in the following days.

### Security

[Best Practices for Cloud Logging, Security, & Data Protection](https://blog.logentries.com/2014/12/best-practices-for-cloud-logging-security-data-protection/)
: When we first founded Logentries in 2010 a lot of people thought Viliam Holub (co-founder, CTO, and the brain behind processing billions and billions of log events in real time) and I were crazy. The common response was:  
“People are not going to send their logs to the cloud… logs might contain very sensitive data…”  
Like typical stubborn founders we persevered in spite of this, and today we have more than 35,000 users across 100 countries. Our customers also range from fortune 100 companies to individual developers across almost all verticals from SaaS companies, to healthcare, financial services, commerce and a bunch of others.  
So, why do companies now trust sending log data to a cloud based service?  Id like to share some of the reasons we have found our customers are using secure, cloud-based logging.

[Vulnerabilty disclosure - The Infinitely Delegating Name Servers (iDNS) Attack](http://www.ssi.gouv.fr/en/the-anssi/events/vulnerabilty-disclosure-the-infinitely-delegating-name-servers-idns-attack.html)
: The French Network and Information Security Agency (ANSSI) identified a critical vulnerability in the three major open-source DNS recursive nameservers : BIND, Unbound and PowerDNS Recursor.
