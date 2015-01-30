---
layout: post
title: "Compilation veille Twitter & RSS #2015-04"
category: veille
---

La moisson de liens pour les semaine du 26 au 30 janvier 2015.
Ils ont, pour la plupart été publiés sur mon compte Twitter.
Les voici rassemblés pour ceux qui les auraient raté.

Bonne lecture

## GIT

[Comprendre et maîtriser les subtrees Git (French only, sorry guys)](http://www.git-attitude.fr/2015/01/30/git-subtrees/)
: Il y a un mois, nous explorions en détail les submodules ; nous vous avions alors dit que notre prochain article de fond serait sur les subtrees, qui constituent l’alternative.  
Comme précédemment, nous allons donc explorer le sujet en détail, en réalisant l’ensemble des manipulations courantes pas à pas, ensemble, pour en illustrer les bonnes pratiques.  
Voici l’article promis ! Si vous n’avez pas lu le précédent, je vous y encourage fortement, ne serait-ce que pour bien avoir des éléments de comparaison, et reposer la problématique.

## DNS

[DNSSEC Done Right](http://blog.cloudflare.com/dnssec-done-right/)
: I’ve been working on DNSSEC evolution for a long time as implementor, IETF working group chair, protocol experimenter, DNS operator, consultant, and evangelist. These different perspectives allow me to look at the protocol in a holistic way.

## Web Performance

[Key Performance Metrics For Load Tests Beyond Response Time- Part II](http://apmblog.dynatrace.com/2015/01/28/key-performance-metrics-load-tests-beyond-response-time-part-ii/)
: In Part I of this blog I explained which metrics on the Web Server, App Server and Host allow me to figure out how healthy the system and application environment is: Busy vs. Idle Threads, Throughput, CPU, Memory, et. Cetera.  
In Part II, I focus on the set of metrics captured from within the application server (#Exceptions, Errors, …) as well as the interaction with the database (connection pools, roundtrips to database, amount of data loaded …). Most of the screenshots shown in this blog comes from real performance data shared from our Dynatrace Free Trial users that leveraged my Share Your PurePath program where I helped them analyze the data they captured. I also hope you comment on this blog and share your metrics with the larger performance testing community.

## Scalability

[Instagram Strategy to Radically Reduce Traffic: Kill all the spambots!](http://highscalability.com/blog/2015/1/28/instagram-strategy-to-radically-reduce-traffic-kill-all-the.html)
: How do you scale to handle increased user traffic? Have less traffic. No, this is not a koan. The best way to deal with traffic is not to have it.

## SEO

[Botify Chrome Plugin: See Your Pages' SEO Indicators While Browsing the Website!](https://www.botify.com/blog/chrome-plugin/)
: Imagine you are navigating your website. Every time you go to a page, SEO information about that page appears in a side toolbar - and warnings, if there are problems. You can click to display many detailed indicators from your Botify report, while you are still on the page. This is essentially what the Botify Chrome plugin does. 

[Demystifying SEO with experiments](http://engineering.pinterest.com/post/109318939139)
: Search engine optimization (SEO) has been one of the biggest drivers of growth for Pinterest. However, it wasn’t always easy to find winning strategies at our scale. Traditionally, SEO tactics include trying out different known strategies and hoping for the best. You might have a good traffic day or a bad traffic day and not know what really triggered it, which often makes people think of SEO as magic rather than engineering.

## Log management

[Infographic: Top 4 Log Management Challenges](https://blog.logentries.com/2015/01/infographic-top-4-log-management-challenges/)
: At Logentries we chat to new users everyday who are looking for an improved solution for centralizing and analyzing their log data. They have often tried rolling their own solution, have previously gone the open source route, or are using an “old school” logging technology.

## Big Data

[Why Pig? Meetup Talk by Jonathan Coveney [Video, Slides, Transcript]](http://blog.mortardata.com/post/109495522361)
: In October, Jonathan Coveney, then at Twitter, gave an engaging and detailed talk to the NYC Pig User Group about one such choice. Jonathan, who is a committer on the Apache Pig project, talked about what Pig does best and why it has proved successful in so many large-scale deployments, as well as where Pig needs updating and where an alternative, such as Twitter’s Scalding, can be more effective.

[How-to: Use BIRT with Impala for Interactive Big Data Reporting](http://blog.cloudera.com/blog/2015/01/how-to-use-birt-with-impala-for-interactive-big-data-reporting/)
: The Actuate (now OpenText) products BIRT Designer Professional and BIRT iHub allow you to connect to multiple data sources to create and deliver meaningful visualizations securely, with scalability reaching millions of users and devices. And now, with Impala emerging as a standard Big Data query engine for many of Actuate’s customers, solid BIRT integration with Impala has become critical.

[Kafka at LinkedIn – Current and Future](http://engineering.linkedin.com/kafka/kafka-linkedin-%E2%80%93-current-and-future)
: The LinkedIn engineering team has developed and built Apache Kafka into a powerful open source solution for managing streams of information. We use Kafka as the messaging backbone that helps the company’s applications to work together in a loosely coupled manner. LinkedIn relies heavily on the scalability and reliability of Kafka and a surrounding ecosystem of both open source and internal components. We are continuing to invest in Kafka to ensure that our messaging backbone stays healthy as we ask more and more from it. 

[Netflix's Viewing Data: How We Know Where You Are in House of Cards](http://techblog.netflix.com/2015/01/netflixs-viewing-data-how-we-know-where.html)
: Over the past 7 years, Netflix streaming has expanded from thousands of members watching occasionally to millions of members watching over two billion hours every month.  Each time a member starts to watch a movie or TV episode, a “view” is created in our data systems and a collection of events describing that view is gathered.  Given that viewing is what members spend most of their time doing on Netflix, having a robust and scalable architecture to manage and process this data is critical to the success of our business.  In this post we’ll describe what works and what breaks in an architecture that processes billions of viewing-related events per day.

[Introduction to Online Machine Learning : Simplified](http://www.analyticsvidhya.com/blog/2015/01/introduction-online-machine-learning-simplified-2/)
: Data is being generated in huge quantities everywhere. Twitter generates 12 + TB of data every day, Facebook generates 25 + TB of data everyday and Google generates much more than these quantities everyday.

[Apache Samza Graduates from Apache Incubator](http://engineering.linkedin.com/samza/apache-samza-graduates-apache-incubator)
:  Apache Samza is a stream processing framework that LinkedIn developed to solve some of our toughest stream processing challenges. We open sourced it in September of 2013 as an Apache Incubator project. I'm very pleased to announce that Samza recently graduated from Apache Incubator into a top-level Apache project. 

[How to use Data Science Studio for the AXA Datascience.net Challenge?](http://www.dataiku.com//blog/2015/01/26/how-to-use-data-science-studio-for-the-axa-datascience-net-challenge.html)
: Are you participating in AXA and datascience.net's latest challenge? If so, find out how Data Science Studio can help you out.

### Analytics

[Solving Poisson Distribution Problems Using SciPy](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:244546)
: A call center has a rule that if more than 8 customers calls in 24 hours about Issue X, then there should be an alarm & that that Issue X should be forwarded to Tier 2 team for further investigation. However, the Tier 2 team believes that 24 hours is too long to wait since the customer experience could suffer. They want to predict BEFORE the 24 hour interval. Therefore, they want the probability at any given time based on historical hourly calling pattern if the 8 customers calling in 24 hours will be breached?

### DataViz

[Visualizing 2014 Attack Data](https://labs.opendns.com/2015/01/28/visualizing-2014-attack-data/)
: Leveraging the data and threat intelligence derived from our massively distributed and global DNS infrastructure, OpenDNS saw more than 2% of the world’s Internet connections, blocked more than 80,000,000 malicious requests per day, and ensured quick and reliable DNS resolution for more than 50 million active users daily in 196 countries.

### Hadoop

[New in CDH 5.3: Apache Sentry Integration with HDFS](http://blog.cloudera.com/blog/2015/01/new-in-cdh-5-3-apache-sentry-integration-with-hdfs/)
: It’s been more than a year and a half since a couple of my colleagues here at Cloudera shipped the first version of Sentry (now Apache Sentry (incubating)). This project filled a huge security gap in the Apache Hadoop ecosystem by bringing truly secure and dependable fine grained authorization to the Hadoop ecosystem and provided out-of-the-box integration for Apache Hive. Since then the project has grown significantly–adding support for Impala and Search and the wonderful Hue App to name a few significant additions.

## Network

[Resilient Networking: Planning for Failure](https://www.igvita.com/2015/01/26/resilient-networking/)
: A 4G user will experience a much better median experience both in terms of bandwidth and latency than a 3G user, but the same 4G user will also fall back to the 3G network for some of the time due to coverage, capacity, or other reasons. Case in point, OpenSignal data shows that an average "4G user" in the US gets LTE service only ~67% of the time. In fact, in some cases the same "4G user" will even find themselves on 2G, or worse, with no service at all.

## HaProxy

[Web application name to backend mapping in HAProxy]()
: Let’s take a web application platform where many HTTP Host header points to.
Of course, this platform hosts many backends and HAProxy is used to perform content switching based on the Host header to route HTTP traffic to each backend.

## Security

[Protect Your Applications from Hacker Research](https://community.qualys.com/blogs/securitylabs/2015/01/26/protect-your-applications-from-hacker-research)
: The prevalence of accidents, like that of vulnerabilities, tells us there is no perfect thing. And even if any given vulnerability is unexpected, we know from experience that the existence of vulnerabilities is inevitable. Hackers know this too, of course, and a determined hacker will use whatever tools are available to him to find vulnerabilities to exploit. One of the most obvious tools for a hacker is research, and simply inspecting the data your application publishes about itself can yield helpful information to a hacker. But how much data your application makes available to hacker research is within your control. It is feasible to mitigate the risk of hacker research by implementing policy compliance best practices. As a Policy Compliance signature developer, I will take Apache HTTP Server as an example to illustrate how applications can leak data that is helpful to hackers, and how you can prevent it.

[SQL Injections in MySQL LIMIT clause](https://rateip.com/blog/sql-injections-in-mysql-limit-clause/)
: Countless number of articles was written on the exploitation of SQL Injections. This post is dedicated to a very specific situation. When assessing the severity of SQL Injection in certain application, I encountered a problem, which I was not able to solve quickly using web search. It’s about a question if SQL injection vulnerability in the LIMIT clause in MySQL 5.x database is currently exploitable.

[Sony's Two Big Mistakes: No Encryption, and No Backup ](http://gomorpheus.com/blog/2014-12-30-sony-s-two-big-mistakes-no-encryption-and-no-backup)
: Even if you can't prevent all unauthorized access to your organization's networks, you can mitigate the damage -- and prevent most of it -- by using two time-proven, straightforward security techniques: encrypt all data storage and transmissions; and back up your data to the cloud or other off-premises site. Best of all, both security measures can be implemented without relying on all-too-human humans.

## Dev

[The 6 best interactive Python tutorial courses](http://blog.stxnext.com/posts/2014/12/The-6-best-interactive-Python-tutorial-courses/)
: If you are not yet able to programme, Udacity  seems to be the best course (if you already know another programming language, you can skip this step). The next recommended stage is LearnPython.org. After this course, you should be able to manage during the recruitment interview to STX Next as a Junior Python Developer.

[Reducing Test Times by Only Running Impacted Tests ](http://java.dzone.com/articles/reducing-test-times-only)
: This article follows on from my Omnipresent, Infallible, Omnipotent and Instantaneous Build Technologies one a couple of day ago. Specifically the last section: “Minimalist test execution, via hacks”, that addressed test times being very lengthy.  
I’ve made a proof of concept of that for Maven. The tests impacted by a change (a pending change specifically) can now be quickly determined and fed into the test runner to massively reduce test times. Massively reduced, this is, if you’ve managed to engineer hours of Selenium tests.

[Premature Optimization Is Not Evil ](http://www.xenoterracide.com/2015/01/premature-optimization-is-not-evil.html)
: Or rather people should stop saying this because most of the people that say it don't actually seem to actually know what is meant by "Premature Optimization" or how to determine when it is evil. I've heard people say premature optimization is evil to asking. "Is there a 3rd party library that does this more efficiently?" (knowing if there are better options is premature optimization?), "Thinking about architecting your app for horizontal scalability is premature optimization" (it is if the design is significantly more complex, but if it's just between using REST and ensuring stateless (which is about the same complexity up front, but it'd be harder to convert later)), "wanting to do Dependency Injection is..", "making that code easier to read and simpler and thus faster", and on and on. On the other hand, no one seems to think that requiring Redis, Mongodb, and NodeJS because it's webscale is premature optimization, even if the clustering is horribly convoluted and you end up in callback hell (not saying you are, just saying). Basically, you're not asking to do the thing that everyone else is doing, is premature optimization. 

## Android

[Android State Saving](http://blog.getprismatic.com/android-state-saving/)
: We’ve written about managing user data maintained within the memory of the application (a.k.a. “app state”) in the past. In this post, we talk about some of the challenges we faced when managing state in our recently released Android app. For performance and tooling reasons, we decided to write Prismatic for Android as a native Java app. This meant we had to face the challenges of managing app state in a new and unfamiliar context: the Android Application Framework. Our solution manages app state in a clean and modular way that coexists in harmony with the Android activity lifecycle.

## Databases

[Four Ways Your DBMS is Holding You Back – And One Simple Fix](http://blog.memsql.com/dbms-disadvantages/)
: Our data is changing faster than our data centers, making it harder and harder to keep up with the influx of incoming information, let alone make use of it. IT teams still tolerate overnight batch processing. The cost of scaling legacy solutions remains cost prohibitive. And many promised solutions force a complete departure from the past.

### Cassandra

[Apache Cassandra and Low-Latency Applications](http://planetcassandra.org/blog/apache-cassandra-and-low-latency-applications/)
: Over the years, Grid Dynamics has had many projects related to NoSQL, particularly Apache Cassandra. In this post, we want to discuss a project which brought exciting challenges to us, and questions we tried to answer in that project remain relevant today, as well.

### Elasticsearch

[Numeric Aggregations: An Exploration of UK Housing Data](http://www.elasticsearch.org/blog/numeric-aggregations-an-exploration-of-uk-housing-data/)
: The Elasticsearch aggregations series continues! In the previous blog posts, we discovered how to create aggregation requests, and how to embed aggregations within other aggregations. Today, we will explore some of the aggregations available for numeric data.

[You Know, for Security: Shield Goes GA](http://www.elasticsearch.org/blog/you-know-for-security-shield-goes-ga/)
: Today we are pleased to announce Shield 1.0 GA — the first release of our security plugin for Elasticsearch. While we announced the coming of Shield back in November, today is when the security functionality for Elasticsearch completes the transition that started with a general wish, moved to concrete ideas and execution plan, and is now a reality.

[How to fix your Elasticsearch cluster stuck in initializing shards mode?](https://t37.net/how-to-fix-your-elasticsearch-cluster-stuck-in-initializing-shards-mode.html)
: Elasticsearch is one of my favorite piece of software. I’ve been using it since 0.11 and deployed every version since 0.17.6 in production. However, I must admit it’s sometimes a pain in the ass to manage. It can behave unexpectedly and either vomit gigabytes in your logs, or stay desperately silent.

### MySQL

[Multi-threaded replication with MySQL 5.6: Use GTIDs!](http://www.percona.com/blog/2015/01/29/multi-threaded-replication-with-mysql-5-6-use-gtids/)
: MySQL 5.6 allows you to execute replicated events in parallel as long as data is split across several databases. This feature is named “Multi-Threaded Slave” (MTS) and it is easy to enable by setting slave_parallel_workers to a > 1 value. However if you decide to use MTS without GTIDs, you may run into annoying issues. Let’s look at two of them.

[Everything You Need to Know About Scaling MySQL – Part 4: Facebook and Google’s Difficulties with MySQL](http://blog.clustrix.com/2015/01/27/everything-need-know-scaling-mysql-part-4-facebook-googles-difficulties-mysql/)
: As we discussed last time, the vast majority of databases are SQL-based, and many of those are running MySQL. Which works fine, until you need to scale-up your database, and then MySQL hits some difficulties.

[MySQL benchmarks on eXFlash DIMMs](http://www.percona.com/blog/2015/01/26/mysql-benchmarks-exflash-dimms/)
: In this blog post, we will discuss MySQL performance on eXFlash DIMMs. Earlier we measured the IO performance of these storage devices with sysbench fileio.

[MySQL table Point-in-Time-Recovery from mysqldump backup](http://www.fromdual.com/mysql-table-point-in-time-recovery-from-mysqldump-backup)
: Sometimes we face the situation where we have a full MySQL database backup done with mysqldump and then we have to restore and recover just one single table out of our huge mysqldump file.  
Further our mysqldump backup was taken hours ago so we want to recover all the changes on that table since our backup was taken up to the end.

[Using Percona Cloud Tools to solve real-world MySQL problems](http://www.percona.com/blog/2015/01/23/using-percona-cloud-tools-to-solve-real-world-mysql-problems/)
: For months when speaking with customers I have been positioning Percona Cloud Tools (PCT) as a valuable tool for the DBA/Developer/SysAdmin but ofig
nly recently have I truly been able to harness the data and make a technical recommendation to a customer that I feel would have been very difficult to accomplish otherwise.

[Proposal to change additional defaults in MySQL 5.7](http://www.tocker.ca/2015/01/23/proposal-to-change-additional-defaults-in-mysql-5-7.html)
: Following on from my earlier proposal to change Replication + InnoDB settings, in the MySQL team, we are proposing to make the following additional changes to defaults in MySQL 5.7

### MaxScale

[MaxScale Firewall Filter](https://mariadb.com/blog/maxscale-firewall-filter)
: MaxScale’s filter system is very flexible and enables a new way of interacting with queries. The upcoming firewall filter shows just one of the many ways that you can control and manage the flow of queries through MaxScale.  
The firewall filter is meant to offer finer and more varied control over queries and their execution. The main idea of the filter is to work as a base to build and improve upon and to show just how that can be done with MaxScale.

## Cloud

[TOSCA and YANG for Application and Network Orchestration](http://getcloudify.org/2015/01/07/VNF-network-function-virtualization-netconf-yang-NFV.html)
: I work quite a bit with TOSCA based definitions for application orchestration and more specifically to orchestrate virtual network functions (VNFs AKA NFV - network function virtualization). In this capacity, I’ve recently been encountering quite a number of Telcos and service providers mentioning TOSCA, YANG and modeling languages in general. 

[Rocket and App Container 0.2.0 Release](http://coreos.com/blog/rocket-and-appc-0.2.0/)
: This week both Rocket and the App Container (appc) spec have reached 0.2.0. Since our launch of the projects in December, both have been moving very quickly with a healthy community emerging. Rocket now has cryptographic signing by default and a community is emerging around independent implementations of the appc spec. Read on for details on the updates.

## Docker

[Next generation development with Docker and Fig](http://blog.stxnext.com/posts/2015/01/development-with-docker-and-fig/)
: At STX Next we're always looking for ways to work more efficiently. Recently we observed a couple of problems related to deployment environments, which we ended up solving by introducing Docker and Fig in projects. Not only do these tools allow new developers to contribute to projects more quickly, they also give developers more confidence that what works locally, will also work on production.

[Setting Environment Variables for Docker with Fig](http://jlorenzen.blogspot.com/2015/01/setting-environment-variables-for_9.html)
: For the past few months I've been playing around with Docker, and so far I've had a ton of fun. The documentation is excellent, and in one simple command you can start experimenting. After going through the tutorial, one of my first goals was to figure out the best way to create a Docker image for a spring-boot service. My initial goals were to make it easy to set environment variables, since our projects follow the twelve-factor methodology. One of the several factors we follow is the third factor (III. Config), which recommends storing the config in the environment. While this has many benefits, one of the downsides is the tendency to create a lot of environment variables because it's quick, easy, and well defined. This makes it difficult to configure, test, and run the service. But as we will see, Fig will not only make it easy to set environment variables, it will also provide many other benefits.

[Docker Hub Improvements](https://blog.docker.com/2015/01/docker-hub-improvements/)
: Docker Hub has become an integral part of the Docker experience for our incredible community. As our user community has scaled exponentially, we have begun to put significant effort into improving its scale, performance and reliability. A number of these changes have happened through new software releases, but we also have made significant upgrades in hardware which happened during our recent scheduled maintenance window.
Big 
## Architecture

[Combining HTML5 Web Applications with OpenCV](http://java.dzone.com/articles/combining-html-web)
: OpenCV is a popular library for image processing in C++. It promises very high performance and  even real-time video processing algorithms.  While it is a native library, available for Linux, Windows and OSX, it also features Java bindings that make it available to JVM applications.

[Distributed and Diverse: The New Reality of Modern Data Persistence](https://vividcortex.com/blog/2015/01/23/polyglot-persistence-distributed-database-new-reality/)
: We create applications in an age of simple, powerful, flexible databases that do magic for us. There’s a large variety of modern databases that supply just what’s needed for lots of use cases, so we can pick the right tool for the job. We’ve never had it better, right? So why is “it’s the database again” still a sufficient explanation for a lot of outages and performance problems?

## Management

[Scrum, Kanban or maybe Scrum-ban](http://blog.stxnext.com/posts/2014/05/scrum-kanban-or-maybe-scrumban/)
: Okay, so you want to implement Agile in your project, but you don’t know which methodology to use. Scrum? Kanban? Some combination of the two? In this article, we’ll give you some basic information about each methodology to help you decide which one is right for you.

[Why do I need daily meetings](http://blog.stxnext.com/posts/2014/06/why-do-i-need-daily-meetings/)
: Stand-up is a daily status meeting for team members. It is a meeting primarily for the team, not for the customer. The meeting is meant to get a good idea of where the team is in the sprint. Stand-up was created for Scrum, but it can also be used in any development methodology.

[Daily Stand-Up Meetings Are a Good Tool for a Bad Manager](http://java.dzone.com/articles/daily-stand-meetings-are-good)
: A stand-up meeting (or simply "stand-up") is "a daily team-meeting held to provide a status update to the team members", according to Wikipedia. In the next few paragraphs, I attempt to explain why these meetings, despite being so popular in software development teams, are pure evil and should never be used by good managers.

[Building credibility for your analytics team—and why it matters](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:242958)
: Building a successful analytics team requires investment in everything from people and tools to infrastructure and event tracking. But the biggest payoffs can often come from investing in credibility.  
If you work with data regularly, chances are you trust it. You know how it's collected and stored. You know the caveats and the roadblocks you face when analyzing it. But, when you bring your findings to those further removed, you're asking them to take a leap of faith and trust in data they may know very little about.

[At What Time in the Day Are We Most Productive?](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:243036)
: ​When are you at your peak?​  
It's 6:00am. Alarm clock's ringing. Begrudgingly you get up, throw on a pot of coffee, take a shower and are still moving slow as you are out the door and off to work. By the time we get to work, we feel that we are ready for the day. 
