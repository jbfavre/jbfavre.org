---
layout: post
title: "Compilation veille Twitter & RSS #2015-07"
category: veille
---

La moisson de liens pour les semaine du 16 au 20 janvier 2015.
Ils ont, pour la plupart été publiés sur mon compte Twitter.
Les voici rassemblés pour ceux qui les auraient raté.

Bonne lecture

## Monitoring

[Active vs. Passive Server Monitoring](https://blog.logentries.com/2015/02/active-vs-passive-server-monitoring/)
: Server monitoring is a requirement, not a choice. It is used for your entire software stack, web-based enterprise suites, custom applications, e-commerce sites, local area networks, etc. Unmonitored servers are lost opportunities for optimization, difficult to maintain, more unpredictable, and more prone to failure.

[How to Use JMeter for Performance Load Testing Your Web Application](http://www.thegeekstuff.com/2015/02/jmeter-load-testing/)
: JMeter is a desktop application that can be used to perform functional testing and load testing.  
While the JMeter application itself is designed as pure Java application, it can be used to perform load testing of any kind of web application, including those that are written in PHP, .NET, etc.

[Real-time distributed tracing for website performance and efficiency optimizations](http://engineering.linkedin.com/distributed-service-call-graph/real-time-distributed-tracing-website-performance-and-efficiency)
: With LinkedIn’s service-oriented architecture, a single page view request can fan out calls to downstream services spanning multiple backend tiers, many levels deep. Though applications depend on downstream services, developers have no insight on the relationships and performance of these services. This poses a number of major challenges, including performance optimization and root cause analysis.

[A Microscope on Microservices](http://techblog.netflix.com/2015/02/a-microscope-on-microservices.html)
: At Netflix we pioneer new cloud architectures and technologies to operate at massive scale - a scale which breaks most monitoring and analysis tools. The challenge is not just handling a massive instance count but to also provide quick, actionable insight for a large-scale, microservice-based architecture. Out of necessity we've developed our own tools for performance and reliability analysis, which we've also been open-sourcing (e.g., Atlas for cloud-wide monitoring). In this post we’ll discuss tools that the Cloud Performance and Reliability team have been developing, which are used together like a microscope switching between different magnifications as needed.

## Security

[How a Missing Security Check Enabled a CSRF Attack](https://community.qualys.com/blogs/securitylabs/2015/02/19/how-a-missing-security-check-enabled-a-csrf-attack)
: Cross-site scripting (XSS) and cross-site request forgery (CSRF) have been well-known attack vectors for a long time. In my previous articles, I describe how XSS vulnerabilities can be used to attack popular open source web applications and application frameworks, and how some web applications are compromised by CSRF attacks because of implementation flaws on the server side.

## Dev

[Free Book: Is Parallel Programming Hard, And, If So, What Can You Do About It?](http://highscalability.com/blog/2015/2/18/free-book-is-parallel-programming-hard-and-if-so-what-can-yo.html)
: Is Parallel Programming Hard? Yes. What Can You Do About It? To answer that, Paul McKenney, Distinguished Engineer at IBM Linux Technology Center, vetran of parallel powerhouses SRI and Sequent, has written an epic 400+ page book: Is Parallel Programming Hard, And, If So, What Can You Do About It?

### Android

[Open sourcing Spyglass - a flexible library for implementing mentions on Android](http://engineering.linkedin.com/android/open-sourcing-spyglass-flexible-library-implementing-mentions-android)
: Today, I am excited to announce the first release of Spyglass, an open-source Android library from LinkedIn. Spyglass is a flexible library that provides customizable widgets in order to simplify the implementation of mentions in your apps. A mention is a tappable annotation in a text field that corresponds to the name of an individual or entity. It supports Android versions as far back as Gingerbread (API level 9).

### PHP

[Announcing a Specification for Hack](http://hhvm.com/blog/8537/announcing-a-specification-for-hack)
: Today we are excited to announce the availability of the initial specification for the Hack programming language.  
When we announced Hack, we were very excited for the community to get their hands on a programming language that has helped Facebook engineers become more productive in their day-to-day development and became, alongside PHP, the language used when developing applications running on HHVM. At the time of release, we had documentation geared for the programmer using Hack to develop applications. However, we did not have official documentation for those that might want to create a Hack implementation of their own or something like a Hack conformance test-suite. This specification fills that gap. It is the document for the Hack implementer, and an excellent supplemental document for the Hack user.

[Introduction to Silex – A Symfony Micro-framework](http://www.sitepoint.com/introduction-silex-symfony-micro-framework/)
: Silex is a PHP micro-framework based on Symfony components and inspired by the Sinatra Ruby framework. In this article, we are going to get started with the framework and see the how it fits our needs.

[Coming Soon in HHVM](http://hhvm.com/blog/8405/coming-soon-in-hhvm)
: The next HHVM release, 3.6, is on the horizon. We expect it to be released at the very end of February or in early March. It’s going to be a big release. Not only will it be our second release with long-term support, but it will contain several exciting new features — and lay the groundwork for continued development later this year.

## Virtualization

### Docker

[Test Drive Your Dockerfiles with RSpec and ServerSpec](http://robots.thoughtbot.com/tdd-your-dockerfiles-with-rspec-and-serverspec)
:Docker, a portable, lightweight runtime and packaging tool, is all the rage these days. It’s hard to go to any sort of tech meetup without overhearing people gushing to each other about how cool it is. I’d written some Dockerfiles but wanted to start test driving them. It’s actually fairly straightforward using RSpec and ServerSpec. Here’s how to TDD a Dockerfile that installs Node on Ubuntu.

## Big Data

[What’s New in Cloudera Director 1.1?](http://blog.cloudera.com/blog/2015/02/whats-new-in-cloudera-director-1-1/)
: Cloudera Director, which was released in October of 2014, delivers production-ready, self-service interaction with Apache Hadoop clusters in cloud environments. You can find background information about Cloudera Director’s purpose and fundamental features in our earlier introductory blog post and technical overview blog post.

[How-to: Deploy and Configure Apache Kafka in Cloudera Enterprise](http://blog.cloudera.com/blog/2015/02/how-to-deploy-and-configure-apache-kafka-in-cloudera-enterprise/)
: Earlier today, Cloudera announced that, following an incubation period in Cloudera Labs, Apache Kafka is now fully integrated into Cloudera’s Big Data platform, Cloudera Enterprise (CDH + Cloudera Manager). Our customers have expressed strong interest in Kafka, and some are already running Kafka in production.

[2015: More innovation, but still a year of transition](http://izoratti.blogspot.com/2015/02/2015-more-innovation-but-still-year-of.html)
: First things first: I could use this title for every year, it is an evergreen. In order for this title to make sense, there must be a specific context and in this case the context is Big Data. We have seen new ideas and many announcements in 2014, and in 2015 those ideas will shape up and early versions of innovative products will start flourishing.  
Like many other people, I prepared some comments and opinions to post back in early January then, soon after the season’s break, I started flying around the world and the daily routine kept me away from the blog for some time. So, as a good last blogger, it may be time for me to post my own predictions, for the joy of my usual 25 readers.

### Hadoop

[Understanding HDFS Recovery Processes (Part 1)](http://blog.cloudera.com/blog/2015/02/understanding-hdfs-recovery-processes-part-1/)
: An important design requirement of HDFS is to ensure continuous and correct operations to support production deployments. One particularly complex area is ensuring correctness of writes to HDFS in the presence of network and node failures, where the lease recovery, block recovery, and pipeline recovery processes come into play. Understanding when and why these recovery processes are called, along with what they do, can help users as well as developers understand the machinations of their HDFS cluster.

[Quick Apache Hadoop Admin Command Reference Examples](http://www.thegeekstuff.com/2015/02/hadoop-command-reference/)
: If you are working on Hadoop, you’ll realize there are several shell commands available to manage your hadoop cluster.  
This article provides a quick handy reference to all Hadoop administration commands.

### Analytics

[Real-time analytics at Pinterest](http://engineering.pinterest.com/post/111380432054)
: As thousands of people gather in the Bay Area this week for Strata + Hadoop World, we wanted to share how data-driven decision-making is in our company DNA.  Most recently, we built a real-time data pipeline to ingest data into MemSQL using Spark Streaming, as well as a highly scalable infrastructure that collects, stores and processes user engagement data in real-time, while solving challenges that would allow us to achieve

[How Pinterest Measures Real-Time User Engagement with Spark](http://blog.memsql.com/pinterest-apache-spark-use-case/)
: With Spark on track to replace MapReduce, enterprises are flocking to the open source framework in effort to take advantage of its superior distributed data processing power.

[RAD - Outlier Detection on Big Data](http://techblog.netflix.com/2015/02/rad-outlier-detection-on-big-data.html)
:  Outlier detection can be a pain point for all data driven companies, especially as data volumes grow. At Netflix we have multiple datasets growing by 10B+ record/day and so there’s a need for automated anomaly detection tools ensuring data quality and identifying suspicious anomalies.  Today we are open-sourcing our outlier detection function, called Robust Anomaly Detection (RAD), as part of our Surus project.

[Fighting spam at Pinterest](http://engineering.pinterest.com/post/111577153239)
: Spammers used to love us, but not anymore.  
Pinterest is a great platform to spam because of the large amount of traffic we drive to other sites. Spammers want to divert traffic to their sites so Pinners will fall for scams. To do this, they’ll disguise Pins as promising weight loss products, work-from-home opportunities, cheap designer handbags and more. This is where the Pinterest BlackOps team comes in. Our mission isn’t to fight spam, but to make it so we don’t need to.

[Top Mistakes Developers Make When Using Python for Big Data Analytics](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:250184)
: Regarding mistake #1, I disagree. I do it all the time, and it's faster than finding, understanding, and fine-tuning a piece of code that will work for you, unless you are looking for something basic such as computing correlations for weighted observations. If you are good, your reinvented wheel will be better, implemented faster, more robust, and more customized than existing ones.

## Infrastructure

[Big Data is Driving Datacenter Infrastructure Development](http://www.plexxi.com/2015/02/plexxi-pulse-big-data-driving-datacenter-infrastructure-development/)
: You may have seen last week that we partnered with Cloudera, certifying the Plexxi Switch on Cloudera’s Enterprise 5 platform.  
This partnership, while exciting for us and our partners, plays a larger role in the IT landscape as a whole. According to an article this week by Arthur Cole of Enterprise Networking Planet, this move embodies Cole’s belief that networking infrastructure development is increasingly being driven by Big Data applications. He cites the key challenge as not finding somewhere to store all the data (e.g. storage) but rather how to make it available to “diverse and disparate sets of resources quickly and at a relatively low cost.”

## Architecture

[Handling five billion sessions a day – in real time](https://blog.twitter.com/2015/handling-five-billion-sessions-a-day-in-real-time)
: Since we first released Answers seven months ago, we’ve been thrilled by tremendous adoption from the mobile community. We now see about five billion sessions per day, and growing. Hundreds of millions of devices send millions of events every second to the Answers endpoint. During the time that it took you to read to here, the Answers back-end will have received and processed about 10,000,000 analytics events.

[HTTP/2 Specification Is Final](http://ma.ttias.be/the-http2-spec-is-final/)
: February 18th, 2015. A day that, for better or worse, will change the internet.  
    The IESG has formally approved the HTTP/2 and HPACK specifications, and they’re on their way to the RFC Editor, where they’ll soon be assigned RFC numbers, go through some editorial processes, and be published.
    mnot.net 
This means HTTP/2 has been finalised and the spec is ready to be implemented.

[Idempotence, Hysteresis and Determinism](http://slott-softwarearchitect.blogspot.fr/2015/02/idempotence-hysteresis-and-determinism.html)
: Three terms that seem to cause confusion: Idempotence, Hysteresis and Deterministic. The subject came up during my webcast on the Five Kinds of Python Functions. We can use all three terms to describe a function. Two of them are relevant to common design questions in software. The third is a higher-order architectural consideration, and not really part of writing a function definition in Python.

[What's the Deal Between SOA and Microservices?](http://www.lucassaldanha.com/what-is-the-deal-between-soa-and-microservices/)
: One day I was talking with other developers in my company about some modifications that we'll need to do in our current architecture of one specific system. At some point, one of these developers stated that we can't say that our architecture is based on Microservices because we have modules that communicate with each other directly and synchronously. He said that we must call it a Service Orientated Architecture (SOA).

## Databases

[Query Digesting and String Quoting Syntax in SQL](https://vividcortex.com/blog/2015/02/16/query-digesting-and-string-quoting-syntax-in-sql/)
: One of the interesting challenges in writing a system like VividCortex is writing a query digesting algorithm that deals with all of the technology-specific features, bugs, and quirks. When we added PostgreSQL performance monitoring recently, I knew this would be a new challenge because Postgres uses ANSI standard syntax for quoted strings, but MySQL uses different syntax. After checking a bit further, I also found something I didn’t know about: PostgreSQL also supports a nonstandard quoting syntax, which is called “dollar quoting.”

### Elasticsearch

[Kibana, aggregation execution order, and you](http://www.elasticsearch.org/blog/kibana-aggregation-execution-order-and-you/)
: By now you may have spotted those crafty little arrow buttons in the Visualize screen of Kibana 4 and said “Hey, what are you doing over there? And what are you up to?”. Well, those buttons control the aggregation execution order. This concept defines how Elasticsearch goes about analyzing your data, and how Kibana displays the result.

[Kibana 4. Literally.](http://www.elasticsearch.org/blog/kibana-4-literally/)
: Kibana 4 is now, literally, figuratively, conceptually, spiritually, and deliciously production ready. Ok, it was ready a week ago, but we wanted to make absolutely sure that we were totally happy with it. And we are, and we want to share the happiness that is Kibana 4.0.0 GA with you. Gratuitous screenshots and backstory below. If you’re just too excited for all of that, we’ve devised a two-step plan

### MySQL

[Everything You Need to Know About Scaling MySQL – Part 7: Customer Issues With MySQL](http://blog.clustrix.com/2015/02/17/everything-need-know-scaling-mysql-part-7-customer-issues-mysql/)
: During the previous entries in this series, we discussed the various struggles that scaling a legacy MySQL database can cause and the options e-commerce sites have in combating those issues.

[‘Indexing’ JSON documents for efficient MySQL queries over JSON data](http://www.percona.com/blog/2015/02/17/indexing-json-documents-for-efficient-mysql-queries-over-json-data/)
: I recently got back from FOSDEM, in Brussels, Belgium. While I was there I got to see a great talk by Sveta Smirnova, about her MySQL 5.7 Labs release JSON UDF functions. It is important to note that while the UDF come in a 5.7 release it is absolutely possible to compile and use the UDF with earlier versions of MySQL because the UDF interface has not changed for a long time. However, the UDF should still be considered alpha/preview level of quality and should not be used in production yet! For this example I am using Percona Server 5.6 with the UDF.

[MySQL Dumping and Reloading the InnoDB Buffer Pool](http://mysqlserverteam.com/mysql-dumping-and-reloading-the-innodb-buffer-pool/)
: MySQL’s default storage engine as of version 5.5 is InnoDB. InnoDB maintains a storage area called the buffer pool for caching data and indexes in memory. By keeping the frequently-accessed data in memory, related searches are retrieved much faster than reading from disk.

[How to setup a PXC cluster with GTIDs (and have async slaves replicating from it!)](http://www.percona.com/blog/2015/02/20/how-to-setup-a-pxc-cluster-with-gtids-and-have-async-slaves-replicating-from-it/)
: This past week was marked by a series of personal findings related to the use of Global Transaction IDs (GTIDs) on Galera-based clusters such as Percona XtraDB Cluster (PXC). The main one being the fact that transactions touching MyISAM tables (and `FLUSH PRIVILEGES`!) issued on a giving node of the cluster are recorded on a GTID set bearing the node’s `server_uuid` as “source id” and added to the binary log (if the node has binlog enabled), thus being replicated to any async replicas connected to it. However, they won’t be replicated across the cluster (that is, all of this is by design, if `wsrep_replicate_myisam` is disabled, which it is by default).

[Shinguz: Creating Event Handlers with MySQL Enterprise Monitor](http://www.fromdual.com/creating-event-handlers-with-mysql-enterprise-monitor)
: MySQL Enterprise Monitor (MEM) has by default no Event Handlers created and activated. These Event Handlers you have to define yourself according to your needs.  
In this article we discuss how to create MySQL Enterprise Monitor Event Handlers with MEM v.3.0.18. For other (older) versions the steps may vary...

## Management

[The DevOps Identity Crisis](http://www.xaprb.com/blog/2015/02/07/devops-identity-crisis/)
: DevOps is everywhere! The growth and mindshare of the movement is remarkable. But if you care deeply about DevOps, you might agree with me when I say that although its moment has “arrived,” DevOps is in serious trouble. The movement is fragmented and weakly defined, and is being usurped by those who care more about short-term opportunities than the long-term viability of DevOps.

[The Art of the Dojo](https://codeascraft.com/2015/02/17/the-art-of-the-dojo/)
: According to the Wikipedia page I read earlier while waiting in line for a latte, dojo literally means place of the way in Japanese, but in a modern context it’s the gathering spot for students of martial arts. At Etsy and elsewhere, dojos refer to collaborative group coding experiences.

[Organisation Antipattern: Release Feature Branching](http://www.alwaysagileconsulting.com/organisation-antipattern-release-feature-branching/)
: Feature Branching is a version control practice in which developers commit their changes to a branch of a source code repository before merging into trunk at a later date. Popularised in the 1990s and 2000s by centralised Version Control Systems (VCS) such as ClearCase, Feature Branching has evolved over the years and is currently enjoying a resurgence in popularity thanks to Distributed Version Control System (DVCS) tools such as GitHub.

[The Art of DevOps: An Introduction to the Landscape](http://apmblog.dynatrace.com/2015/02/19/art-devops-introduction-landscape/)
: Welcome to my four part series on what I’m going to call the Art of DevOps.  We will embark on a mission to reveal the extremely valuable intelligence that’s been collected about a unique strategy to continuously deliver assets to the operational battleground safely, securely and quickly.  This strategy drives optimal monitoring of the frontlines and enhanced communications with the troops supporting the initial development.  I do make the assumption that most of you are battle worthy veterans in one or more of the environments that I’ll review.  Beyond this introduction blog, I’ll brief you on some of the best DevOps tactics to aid in your deployments while providing maximum situational awareness within each environment. I’ll also do my best to expand upon the best lines of defense with minimal traumatization. Unfortunately, in my experience, many of you will be in a moral deficit either over lack of preparation such as test automation, damaged assets or organizational challenges in one or more areas of deployment. The goal of this series is to help you recognize where your deficits are, how to address certain scenarios and which tactics you need to use to lead a successful DevOps operation.

[Defining DevOps](http://nirmata.com/2015/02/defining-devops/)
: Over the last few years, I've spent quite a bit of time learning and discussing DevOps, as well as putting into practice DevOps principles and values. I’ve read several  articles that provide detailed descriptions of what DevOps is, and what DevOps is not. Most of these talk about moving development and operations teams closer together, the cultural changes involved, etc. But none of these provided me with a simple and satisfying definition for DevOps.

[How to Have Efficient Sprint Planning Meetings](http://www.dzone.com/articles/how-have-efficient-sprint)
: Too many of us have been burnt by this. There we are again. Getting together every other Monday, usually devoid of a clear agenda, trying to “plan” a sprint. We start OK. But before you know it, we are all over the place. We argue in a civilized manner on how this story is not clear, or that the story needs to be discussed a lot more for it to be even estimated. Confusion creeps in. Soon the engineers take over “planning” part of the meeting and morph it into a “clarification” frenzy. The Product Owner (PO) is overwhelmed as technical terms are thrown in the air and on-the-fly technical solutions are spit-balled. Sadly, sometimes legitimate good solutions get lost in translation and noise. The Scrum Master or team lead brings things under control, but there is lost time.

[What Development & Test Managers do in Agile Organizations](http://java.dzone.com/articles/what-development-test-managers)
: Is there room for functional managers, such as development and test managers, in agile organizations? Maybe. It depends on whether they take the role of an agile manager.

[How do you estimate that which you've never done?](http://java.dzone.com/articles/how-do-you-estimate-which)
: Have you heard about #noestimates? No? Well I’m sure you can guess what it is anyway. But reading the debates reminded me of a story.  
While at Game Developer’s Conference a few years ago, I was arguing about estimation with a certain project manager, who, despite having no actual development experience, was in charge of development (Icelandic society is notoriously nepotistic).

[You Need Feature Teams to Produce Features](http://www.jrothman.com/mpd/project-management/2015/02/you-need-feature-teams-to-produce-features/)
: Many organizations create teams by their architectural part: front end, back end, middleware. That may have worked back in the waterfall days. It doesn’t work well when you want to implement by feature. (For better images, see Managing the Stream of Features in an Agile Program.)
