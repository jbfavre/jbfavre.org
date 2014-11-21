---
layout: post
title: "Compilation veille Twitter & RSS #19"
category: veille
---

La moisson de liens pour les semaine du 17 au 21 novembre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Organization

[Maintaining Quality at Scale](http://nerds.airbnb.com/maintaining-quality-scale/)
: When I joined Airbnb in the fall of 2012 things were a little chaotic to say the least. At some point in the preceding year the growth of the company had kicked into high gear, or hyper-growth, as some call it. Along with the increase in site traffic and transaction volume, the engineering team also expanded very rapidly. When I arrived we were a team of about 40, compared to 16 one year before (and over 130 today). Looking back now, I think we were in the midst of a make-or-break period in Airbnb’s history.

### Architecture

[Large scale distributed consensus approaches: Computing with a hundred node cluster](http://ayende.com/blog/169090/large-scale-distributed-consensus-approaches-computing-with-a-hundred-node-cluster)
: I’m using 100/99 node cluster as the example, but the discussion also apply for smaller clusters (dozens of nodes) and bigger clusters (hundreds or thousands). Pretty much the only reason that you want to go with clusters of that size is that you want to scale out your processing in some manner. I’ve already discussed why a hundred node cluster isn’t a good option for safety reasons. 

[Web services vs. SOA and pretty URL vs. REST](http://arian-celina.com/web-services-vs-soa-and-pretty-url-vs-rest/)
: It has been quite a time since Service Oriented Architecture (SOA) and Representational State Transfer (REST) architectures are around, yet there are some misconceptions about them I hear very often, which I would like to discuss here.

[API Best Practices: Plan Your API](http://blogs.mulesoft.org/api-best-practices-series-plan/)
: Perhaps the foundation of the foundation, understanding why you are building an API is a crucial step towards understanding what data/ methods your API should make accessible and how your users will utilize it. Unfortunately, API is a buzzword right now, and many companies are rushing to build APIs with the idea that “we’re going to make our data accessible and our users will love it!” There’s probably some truth to that, but that is not a good enough reason. What exactly are you making accessible and why? Who are your API users – are they your customers, or third party services, or developers who are looking to extend upon your application for their customers? Understanding the market you are serving is vital to the success of any product or service.

[What is a Monolith?](http://www.codingthearchitecture.com/2014/11/19/what_is_a_monolith.html)
: There is currently a strong trend for microservice based architectures and frequent discussions comparing them to monoliths. There is much advice about breaking-up monoliths into microservices and also some amusing fights between proponents of the two paradigms - see the great Microservices vs Monolithic Melee. The term 'Monolith' is increasingly being used as a generic insult in the same way that 'Legacy' is!

[We are leaving 3x-4x performance on the table just because of configuration.](http://feedproxy.google.com/~r/HighScalability/~3/ufUUQ5a981w/we-are-leaving-3x-4x-performance-on-the-table-just-because-o.html)
: Performance guru Martin Thompson gave a great talk at Strangeloop: Aeron: Open-source high-performance messaging, and one of the many interesting points he made was how much performance is being lost because were aren't configuring machines properly.

[Architecture of Web Applications](http://feeds.dzone.com/~r/zones/architects/~3/pj5bbRIdkSk/architecture-web-applications)
: I consider software development more art than exact science, and as such, in software development almost always there is not a single way of solving a problem. Although there are defined best practices, it is a matter of problem being solved and the knowledge of the team that influences most the definition of the architecture of web applications and software applications in general.

[Accelerating Rails, Part 1: Built-in Caching](http://www.fastly.com/blog/accelerating-rails-part-1-built-in-caching)
: Ruby on Rails is a powerful, user-friendly web framework that allows developers to rapidly build applications. Its wide popularity is largely due to “the Rails way,” aka convention over configuration. Scaling Rails apps used to really suck (Twitter Fail Whale, anyone?), but we’ve come a long way.

[Building a complete Tweet index](https://blog.twitter.com/2014/building-a-complete-tweet-index)
: Today, we are pleased to announce that Twitter now indexes every public Tweet since 2006.  
Since that first simple Tweet over eight years ago, hundreds of billions of Tweets have captured everyday human experiences and major historical events. Our search engine excelled at surfacing breaking news and events in real time, and our search index infrastructure reflected this strong emphasis on recency. But our long-standing goal has been to let people search through every Tweet ever published.i

[Pipes, Tubes, and Email](http://dev.theladders.com/2014/11/pipes-tubes-and-email/)
: Sending email is a major part of our business. Over the years, TheLadders has moved through several iterations of getting emails out to our millions of job seekers and recruiters. We’ve both built in-house solutions and utilized Email Service Providers (ESPs).

[Three new components to increase website scalability and performance](https://www.varnish-software.com/blog/three-new-components-increase-website-scalability-and-performance)
: Unlimited cache sizing, increased caching performance and customized cache optimization support content-heavy, high-traffic sites. Varnish Software is pleased to officially announced the release of Varnish Massive Storage Engine, Varnish High Availability and Varnish Tuner. These three components are designed to support the scalability and performance needs of content heavy, high-traffic websites and are now available as part of our Varnish Plus offering.

[Colossus: A New Service Framework from Tumblr](http://engineering.tumblr.com/post/102906359034)
: One of the biggest challenges we continue to face at Tumblr is how to properly organize and scale our infrastructure as the platform continues to grow. One strategy that has been very promising is the implementation of microservices. These are small, specialized applications designed to efficiently encapsulate a single feature or component. Instead of having one monolithic application that contains the entire site’s business logic, the clean separation of responsibilities provided by microservices helps facilitate a well-organized infrastructure as well as making it easier to address bugs and performance bottlenecks.

[Using ESI, Part 2: Leveraging VCL and ESI to Use JSONP](http://www.fastly.com/blog/using-esi-part-2-leveraging-vcl-and-esi-to-use-jsonp)
: In my last post about Edge Side Includes (ESI), I discussed how ESI can be used to mix and match cacheable content (such as the front page of an ecommerce site) with uncacheable content (such as a user's shopping basket on the site). I also explained how you can use ESI to auto-generate dynamic information in data responses. In the example of the ecommerce site, ESI can add location-based information into a JSON (JavaScript Object Notation) response.

[Aeron: Do we really need another messaging system?](http://highscalability.com/blog/2014/11/17/aeron-do-we-really-need-another-messaging-system.html)
: Do we really need another messaging system? We might if it promises to move millions of messages a second, at small microsecond latencies between machines, with consistent response times, to large numbers of clients, using an innovative design.

[Do I Need PaaS if I Use Docker?](http://feedproxy.google.com/~r/NatiShalom/~3/nUHSOClmcT4/do-i-need-paas-if-i-use-docker.html)
: In my recent post on OpenStack  “Do I Need OpenStack if I Use Docker?” I covered the confusion that has emerged around one area of disruption that Docker has created. In this post, I’d like to segue into another similar topic that has emerged around the same concept where I sense similar disruption and confusion: the use of PaaS in its traditional form vs using a straight Docker approach.

### Dev

[Testing Strategies in a Microservice Architecture](http://feeds.dzone.com/~r/zones/architects/~3/oSXZqeUPemE/testing-strategies)
: Microservices has been quite the topic of conversation this year, with a rapid rise of interest. But although this architectural style is often a useful one it has its challenges, which can easily lead a less experienced team into trouble. Testing is a central part of this challenge, which is particularly relevant for those of us that consider testing to be a central part of effective software development.

[Why Should Developers Consider a Cloud Based Platform for Coding?](http://feeds.dzone.com/~r/zones/architects/~3/z3wHWKhHPac/why-should-developers-consider)
:  In common computer parlance, a computing platform is a combination of hardware architecture and software framework on which software programs and applications run. But these traditional platforms have taken a backseat today. With the emergence of cloud computing, we are witnessing a tectonic shift in the way data is accessed and used.

### Network

[Staging a Netfilter ruleset in a network namespace](http://vincent.bernat.im/en/blog/2014-netfilter-firewall-script.html)
: A common way to build a firewall ruleset is to run a shell script calling iptables and ip6tables. This is convenient since you get access to variables and loops. There are three major drawbacks with this method.

[Traffic correlation using netflows](https://blog.torproject.org/blog/traffic-correlation-using-netflows)
: People are starting to ask us about a recent tech report from Sambuddho's group about how an attacker with access to many routers around the Internet could gather the netflow logs from these routers and match up Tor flows. It's great to see more research on traffic correlation attacks, especially on attacks that don't need to see the whole flow on each side. But it's also important to realize that traffic correlation attacks are not a new area.

### Security

[WireLurker and Its Patterns](http://labs.opendns.com/2014/11/14/wirelurker/)
: More than a week ago, Unit42 of Palo Alto Networks revealed the existence of WireLurker – a iOS specific trojan capable of capturing sensitive user data. This blog post will be looking at a month’s worth of DNS traffic history to the two sites associated with WireLurker.

### Big Data

[Introducing geo-explorer: an open source dashboard for tracking app usage by location](http://keenio.tumblr.com/post/103141480466/introducing-geo-explorer-an-open-source-dashboard-for)
: Need to monitor your app activity based on location? The geo-explorer dashboard is a fun and interactive way to take a different look at your data. (You might remember it as part of our open source dashboard repo that launched a few weeks ago.)

#### Analytics

[R: Joining multiple data frames](http://www.markhneedham.com/blog/2014/11/07/r-joining-multiple-data-frames/)
: I’ve been looking through the code from Martin Eastwood’s excellent talk ‘Predicting Football Using R‘ and was intrigued by the code which reshaped the data into that expected by glm.

[Common data science project flow](http://horicky.blogspot.fr/2014/11/common-data-science-project-flow.html)
:  As working across multiple data science projects, I observed a similar pattern across a group of strategic data science projects where a common methodology can be used.  In this post, I want to sketch this methodology at a high level.

[Steps for effective text data cleaning (with case study using Python)](http://www.analyticsvidhya.com/blog/2014/11/text-data-cleaning-steps-python/)
: The days when one would get data in tabulated spreadsheets are truly behind us. A moment of silence for the data residing in the spreadsheet pockets. Today, more than 80% of the data is unstructured – it is either present in data silos or scattered around the digital archives. Data is being produced as we speak – from every conversation we make in the social media to every content generated from news sources. In order to produce any meaningful actionable insight from data, it is important to know how to work with it in its unstructured form. As a Data Scientist at one of the fastest growing Decision Sciences firm, my bread and butter comes from deriving meaningful insights from unstructured text information.

#### Hadoop

[Apache Hive on Apache Spark: The First Demo](http://blog.cloudera.com/blog/2014/11/apache-hive-on-apache-spark-the-first-demo/)
: Apache Spark is quickly becoming the programmatic successor to MapReduce for data processing on Apache Hadoop. Over the course of its short history, it has become one of the most popular projects in the Hadoop ecosystem, and is now supported by multiple industry vendors—ensuring its status as an emerging standard.

[Hadoop beyond traditional MapReduce – Simplified](http://www.analyticsvidhya.com/blog/2014/11/hadoop-mapreduce/)
: In previous articles on Hadoop, our focus have been on MapReduce routines. MapReduce are the basic functional unit of a Hadoop system. Following are the links of few articles published on Hadoop till date

[How Apache Sqoop 1.4.5 Improves Oracle Database/Apache Hadoop Integration](http://blog.cloudera.com/blog/2014/11/how-apache-sqoop-1-4-5-improves-oracle-databaseapache-hadoop-integration/)
: Thanks to Guy Harrison of Dell Inc. for the guest post below about time-tested performance optimizations for connecting Oracle Database with Apache Hadoop that are now available in Apache Sqoop 1.4.5 and later.  
Back in 2009, I attended a presentation by a Cloudera employee named Aaron Kimball at the MySQL User Conference in which he unveiled a new tool for moving data from relational databases into Hadoop. This tool was to become, of course, the now very widely known and beloved Sqoop!

[MemSQL and Cisco Work Together to Make Real-Time Performance on Hadoop a Reality](http://blog.memsql.com/memsql-and-cisco-work-together-to-make-real-time-performance-on-hadoop-a-reality/)
: While Hadoop is great for storing large volumes of data, it’s too slow for building real-time applications. However, our recent collaboration with Cisco provides a solution for Hadoop users who want a better way of processing real-time data. Using Cisco’s Application Centric Infrastructure including APIC and Nexus switch technology, we’ve been able to demonstrate exceptional throughput on concurrent MemSQL and Hadoop 2.0 workloads.

[Predictions for Apache Spark, IoT, and In-Memory Computing](http://blog.memsql.com/apache-spark-predictions/)
: While at Strata+Hadoop World, MemSQL CEO, Eric Frenkiel, sat down with Mike Hendrickson of O’Reilly Media for a conversation about the evolution of the database ecosystem, and how Hadoop and in-memory computing fit into the picture. 

### Databases

[Cache is the new RAM](http://blog.memsql.com/cache-is-the-new-ram/)
: One of the (few) advantages of being in technology for a long time is that you get to see multiple tech cycles beginning to end. You get to see how breakthroughs actually propagate. If all you have seen is a part of the curve, it’s hard to extrapolate correctly. You either overshoot the short-term progress or undershoot the long. What’s surprising is not how quickly the facts on the ground change, but how slowly engineering practice changes in response. This is a Strowger switch, an automated way to connect phone circuits. It was invented in 1891.

[Temporal Databases: Why you should care and how to get started (Part 2 of 3)](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:223395)
: Not every database requires a temporal database implementation, but some do. We can help you get started. As discussed in our previous article, the SQL-2011 standard included clauses for the definition of temporal tables as part of the SQL/Foundation. However, this standard is very new and not yet widely adopted. For now, most of you will need to extend your current database tables to incorporate temporal concepts.

#### Cassandra

[PagerDuty built on Apache Cassandra for fault-tolerant IT Alerts you can count on](http://planetcassandra.org/blog/interview/pagerduty-built-on-apache-cassandra-for-fault-tolerant-it-alerts-you-can-count-on/)
: PagerDuty is the central hub for on-call and operations dispatch. At its core, it ties together all your monitoring services into one place, manages your on-call schedules, escalation policies, and notification methods and ensures that if something is wrong in your service, the right person gets alerts so they can act quickly to resolve any issues. I personally work on the pipeline of alerts that starts with our monitoring integrations or HTTP and email API and ends with a person getting a call, SMS, email, or push notification.

#### MySQL

[How a set of queries can be killed in MySQL using Percona Toolkit’s pt-kill](http://www.percona.com/blog/2014/11/19/how-a-set-of-queries-can-be-killed-in-mysql-using-pt-kill/)
: You might have encountered situations where you had to kill some specific select queries that were running for long periods and choking the database. This post will go into more detail with an example of report query offloading.

[Avoiding MySQL ALTER table downtime](http://www.percona.com/blog/2014/11/18/avoiding-mysql-alter-table-downtime/)
: MySQL table alterations can interrupt production traffic causing bad customer experience or in worst cases, loss of revenue. Not all DBAs, developers, syadmins know MySQL well enough to avoid this pitfall. DBAs usually encounter these kinds of production interruptions when working with upgrade scripts that touch both application and database or if an inexperienced admin/dev engineer perform the schema change without knowing how MySQL operates internally.

[MySQL’s INNODB_METRICS table: How much is the overhead?](http://www.percona.com/blog/2014/11/18/mysqls-innodb_metrics-table-how-much-is-the-overhead/)
: Starting with MySQL 5.6 there is an INNODB_METRICS table available in INFORMATION_SCHEMA which contains some additional information than provided in the SHOW GLOBAL STATUS output – yet might be more lightweight than PERFORMANCE_SCHEMA.

[Typical misconceptions on Galera for MySQL](http://www.percona.com/blog/2014/11/17/typical-misconceptions-on-galera-for-mysql/)
: Even if a Galera node looks like a regular MySQL server, the underlying replication mechanism is very different. This implies some changes in the way you have to configure the Galera nodes. Here are some of the most common misconceptions about Galera.

[Optimizing MySQL for Zabbix](http://www.percona.com/blog/2014/11/14/optimizing-mysql-zabbix/)
: This blog post was inspired by my visit at the annual Zabbix Conference in Riga, Latvia this year, where I gave a couple of talks on MySQL and beyond.  
It was a two day single-track event with some 200 participants, a number of interesting talks on Zabbix (and related technologies) and really well-organized evening activities. I was amazed how well organized the event was and hope to be invited to speak there next year as well. 

#### MariaDB

[How to connect Python programs to MariaDB](https://mariadb.com/blog/how-connect-python-programs-mariadb)
: You can use the popular programming language Python to manage data stored in MariaDB. Here is everything you need to know about connecting to MariaDB from Python for retrieving, updating, and inserting information.

#### Elasticsearch

[Introduction to Elasticsearch Snapshot and Restore module](http://en.kodcu.com/2014/11/introduction-to-elasticsearch-snapshot-and-restore-module/)
: When working with large amounts of data, backup and restoring is an important requirement if necessary. Elasticsearch have a snapshot and restore module that addresses this need.
