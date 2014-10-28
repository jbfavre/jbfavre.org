---
layout: post
title: "Compilation veille Twitter & RSS #15"
category: veille
---

La moisson de liens pour les semaine du 20 au 24 octobre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Team organization

[6 Challenges Facing DevOps and Operations Teams in 2015](http://feeds.dzone.com/~r/zones/architects/~3/lrSpp910jNM/6-challenges-facing-devops-and)
: To say that Operations and DevOps will have a new set of challenges in the coming year is a bit redundant, as their entire job is based on solving problems and facing challenges.  
However the current and future landscape of tools, technologies, and processes is changing dramatically. While this has always been true, it’s the pace that is problematic. Additionally, the pressure from business users who believe everything is solved with an “app” has moved from annoying to destructive.

### Architecture

[How Is Google Analytics So Damn Fast?](http://feeds.dzone.com/~r/zones/architects/~3/3hHcPZBWoMw/how-google-analytics-so-damn)
: TL; DR: Google Analytics stores a massive amount of statistical data from web sites across the globe. Retrieving reports quickly from such a large amount of data requires Google to use a custom solution that is easily scalable whenever more data needs to be stored.

[How to Build a Successful API Program](http://feeds.dzone.com/~r/zones/architects/~3/7T3BCnIlFzk/how-build-successful-api)
: Companies who identify and expose core capabilities as well-defined, well-managed APIs are essentially making their business “programmable.” For these businesses, APIs act an innovation layer that allows them to quickly capitalize on new market opportunities, engage with their customers in more personalized ways and collaborate more effectively with partners. In essence, APIs are the new fabric enabling agility and fueling competitiveness.

[Prepare for Connected Enterprise using REST APIs](http://feeds.dzone.com/~r/zones/architects/~3/djNWeZcPYpg/prepare-connected-enterprise)
: We can quote innumerable stats to impress, but there is no need, it is apparent the world is getting more connected. Today’s connectivity will seem primitive in few years as the connectivity extends beyond smartphones, tablets and computers to concepts such as devices implanted in the human body.

[FIT : Failure Injection Testing](http://techblog.netflix.com/2014/10/fit-failure-injection-testing.html)
: It's no secret that at Netflix we enjoy deliberately breaking things to test our production systems. Doing so lets us validate our assumptions and prove that our mechanisms for handling failure will work when called upon. Netflix has a tradition of implementing a range of tools that create failure, and it is our pleasure to introduce you to the latest of these solutions, FIT or Failure Injection Testing.

[Paper: actor model of computation: Scalable robust information systems](http://highscalability.com/blog/2014/10/22/paper-actor-model-of-computation-scalable-robust-information.html)
: With Reactive Systems becoming the new old hotness, it will help to have a thorough grounding in the Actor Model. Here's a good start. Carl Hewitt in Actor Model of Computation: Scalable Robust Information Systems gives a very thorough and relatively concise explanation of the Actor model.

[Facebook Mobile Drops Pull For Push-based Snapshot + Delta Model](http://highscalability.com/blog/2014/10/20/facebook-mobile-drops-pull-for-push-based-snapshot-delta-mod.html)
: We've learned mobile is different. In If You're Programming A Cell Phone Like A Server You're Doing It Wrong we learned programming for a mobile platform is its own specialty. In How Facebook Makes Mobile Work At Scale For All Phones, On All Screens, On All Networks we learned bandwidth on mobile networks is a precious resource. 
Given all that, how do you design a protocol to sync state (think messages, comments, etc.) between mobile nodes and the global state holding servers located in a datacenter?  
Facebook recently wrote about their new solution to this problem in Building Mobile-First Infrastructure for Messenger. They were able to reduce bandwidth usage by 40% and reduced by 20% the terror of hitting send on a phone.  
That's a big win...that came from a protocol change.

[Sharding Pitfalls Part II: Running a Sharded Cluster](http://feeds.dzone.com/~r/zones/architects/~3/d25GxfVd504/sharding-pitfalls-part-ii)
: In Part I we discussed important considerations when picking a shard key. In this post we will go through some recommendations when running a sharded cluster at scale. Scalability is one of the core benefits of sharding in MongoDB but this can give you a false sense of security; even with that flexibility, you still have to make smart decisions about how and when you deploy resources. In this post, we will cover a couple of common mistakes that people tend to make when it comes to running a sharded cluster.

[Architecture – Top 10 Traits of a Software Architect](http://feeds.dzone.com/~r/zones/architects/~3/pb5qF13u1Gg/architecture-%E2%80%93-top-10-traits)
: This article represents my opinion on top 10 traits of a software architect. Recently, I came across a need of my fellow colleague who asked me to take a shot at defining, what would it take for someone to become an architect. The below could be applied to architect in any technologies. Note that the below does not take into account few traits of an enterprise architect. However, I purposely did not include it. Please feel free to comment/suggest if I missed to mention one or more important points. Also, sorry for the typos.

[The Case for Cyber Resiliency in IT Security](http://feeds.dzone.com/~r/zones/architects/~3/IF5P0lt_X_Q/case-cyber-resiliency-it)
: The news surrounding security breaches can be sobering but they’re stories every business owner needs to hear. The headlines involve Target, Home Depot, eBay, and many other large corporations, each suffering big losses to both their finances and their reputation. The attacks are real and they’re only increasing each year. The sad part is that though strides have been made in security, breaches are not only possible, they’re likely, and many executives aren’t recognizing it. In a recent survey, more than 80% of corporate executives said they were confident in their cyber security programs. But no amount of confidence can prevent all attacks. This fact has begun to set in among companies all over the world, which is prompting a noticeable shift in strategy and policy. Instead of focusing on preventative measures, companies are now looking to build greater cyber resiliency.

[New Gzip Settings and Deciding What to Compress](http://www.fastly.com/blog/new-gzip-settings-and-deciding-what-to-compress)
: At Fastly, we care about making our customers’ websites faster. Compressing responses using gzip is a performance best practice that speeds up pages by reducing payloads by ~70%.  
But this requires picking the right resources to compress. In some cases, responses can actually increase in size when compressed. It’s important to understand which responses should be compressed and which should pass through unchanged.

### Big Data

[New in CDH 5.2: Apache Sentry Delegated GRANT and REVOKE](http://blog.cloudera.com/blog/2014/10/new-in-cdh-5-2-apache-sentry-delegated-grant-and-revoke/)
: Apache Sentry (incubating) provides centralized authorization for services and applications in the Apache Hadoop ecosystem, allowing administrators to set up granular, role-based protection on resources, and to review them in one place. Previously, Sentry only designated administrators to GRANT and REVOKE privileges on an authorizable object. In Apache Sentry 1.5.0 (shipping inside CDH 5.2), we have implemented a new feature (SENTRY-327) that allows admin users to delegate the GRANT privilege to other users using WITH GRANT OPTION. If a user has the GRANT OPTION privilege on a specific resource, the user can now grant the GRANT privilege to other users on the same resource. Apache Hive, Impala, and Hue have all been updated to take advantage of this new Sentry functionality.

### Analytics

[Prescriptive versus Predictive Analytics - A Distinction without a Difference?](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:216952)
: Summary:  Is the addition of “Prescriptive” analytics to our nomenclature really worthwhile or are we just confusing our customers?  
I admit to being annoyed when this or that industry wag tries to coin a new term to describe some portion of the discipline we are already practicing.  Some of these folks I think are well intentioned and believe they have seen an area sufficiently unique to deserve separate description. Some I believe are motivated more by the ability to sell more reports if there are now two disciplines to be ranked and rated instead of just one.  
It is with this admitted mindset that I’ve come to the conversation about whether ‘prescriptive’ analytics is a real thing or is it just an aspect of what we’ve been doing all along. 

[Applying the Theory of Constraints to network transport](http://feeds.dzone.com/~r/zones/architects/~3/NogYdmdoiQc/applying-theory-constraints)
: For those of you into expanding your experience through reading, there is a foundational reference at the core of many MBA programs. The book, Eliyahu Goldratt’s The Goal, introduces a concept called the Theory of Constraints. Put simply, the Theory of Constraints is the premise that systems will tend to be limited by a very small number of constraints (or bottlenecks). By focusing primarily on the bottlenecks, you can remove limitations and increase system throughput.  
The book uses this theory to talk through management paradigms as the main character works through a manufacturing problem. But the theory actually applies to all systems, making its application useful in more scenarios than management or manufacturing.

[How does Artificial Neural Network (ANN) algorithm work? Simplified!](http://www.analyticsvidhya.com/blog/2014/10/ann-work-simplified/)
: In the last article (click here), we briefly talked about basics of ANN technique. But before using the technique, an analyst must know, how does the technique really work? Even though the detailed derivation may not be required, one should know the framework of the algorithm.

[Lessons in growth and increasing signups](http://engineering.pinterest.com/post/100594540604)
: On the Growth team at Pinterest, we’re constantly brainstorming ways to attract new users. Over the past year we ran a series of A/B experiments which resulted in a significant increase in daily signups and doubling of conversion rates. Here’s the story of what we’ve learned and what’s next.

[Commonly asked interview puzzles – Part II](http://www.analyticsvidhya.com/blog/2014/10/commonly-asked-interview-puzzles-part-ii/)
: Most of the analysts love solving and asking puzzles. Some of the best analysts I know, have a glean in their eyes at mention of a difficult logical puzzle. While these puzzles are fun to solve in free time, they might look scary to other people facing them in an interview backdrop.  
As Tavish mentioned in his article, use of puzzles to select candidates may not be the best way to do the recruitment. But, the reality is that puzzles get asked as part of many interviews. This also turns out to be an advantage for you, if you have solved these kind of puzzles before hand. This article will lay out a few more puzzles, which are commonly asked in interviews.

### Cloud

#### AWS

[Migrating from AWS to AWS](http://instagram-engineering.tumblr.com/post/100758229719)
: In an earlier blog post, we gave a high level description of our migration from AWS to FB data centers. What follows is an in-depth analysis of how we migrated thousands of running AWS EC2 instances into Amazon’s Virtual Private Cloud (VPC) in the span of 3 weeks with no downtime. It was extremely meticulous work, and it required the development of custom virtual networking software to make it happen. It was, as far as we are aware, the fastest and one of the largest EC2 to VPC migrations to date.

#### Docker

[Docker at OpenDNS](http://engineering.opendns.com/2014/10/22/docker-at-opendns/)
: We’ve been hard at work this year building out Quadra, our internal Platform as a Service (PaaS), for our engineering teams. Quadra relies heavily on Docker for application deployment. Last night at OpenLate, OpenDNS Infrastructure Engineer Jessica Gadling presented a talk and demo of our progress so far.

[8 Docker Deployment Patterns](http://feeds.dzone.com/~r/zones/architects/~3/zNtxK3vRbo4/8-docker-deployment-patterns)
:  I recently came across an interesting blog post that pulls together some different Docker design patterns that you might find useful. Vidar Hokstad wrote this blog article, and he has quite a bit of experience with Docker, especially in using Docker to create repeatable builds without data loss. His experience with Docker makes his curation of these patterns all that much more valuable.

[How to Deploy a Docker Application Into Production on Amazon AWS](http://java.dzone.com/articles/how-deploy-docker-application)
: Docker reached production status a few months ago. But having the container technology alone is not enough. You need a complete platform infrastructure before you can deploy your docker application in production. Amazon AWS offers exactly that: a production quality platform that offers capacity provisioning, load balancing, scaling, and application health monitoring for Docker applications.

[Docker in Production — What We’ve Learned Launching Over 300 Million Docker Containers](http://blog.iron.io/2014/10/docker-in-production-what-weve-learned.html)
: Earlier this year, we made a decision to run every task on IronWorker inside its own Docker container. Since then, we've run over 300,000,000 programs inside of their own private Docker containers on AWS infrastructure.  
Now that we’ve been in production for several months, we wanted to take the opportunity to share with the community some of the challenges we faced in running a Docker-based infrastructure, how we overcame them, and why it was worth it.

### Databases

[The Key to Distributed Database Performance: Scalability](http://server.dzone.com/articles/key-distributed-database)
: TL;DR: The realities of modern corporate networks make the move to distributed database architectures inevitable. How do you leverage the stability and security of traditional relational database designs while making the transition to distributed environments? One key consideration is to ensure your cloud databases are scalable enough to deliver the technology's cost and performance benefits.

#### MariaDB

[Dynamic Columns Tutorial – Part 2: Searching and Updating](https://mariadb.com/blog/dynamic-columns-tutorial-part-2-searching-and-updating)
: This is a continuation of my previous blog, where we will focus on some more advanced features related to Dynamic Columns. For an introduction to Dynamic Columns please refer to my previous blog. 

#### Couchbase

[Couchbase JPA Level 2 Cache](http://blog.couchbase.com/couchbase-jpa-level-2-cache-0)
: As Couchbase continues to experience growth as a company and increased adoption by the open source community we continue to encounter new challenges and use cases along the way. Many enterprises are turning to us to help add a cache to an existing application or evolve applications to next generation technologies. For these level two cache implementations we’ve helped develop a data access layer for applications in the Spring project. Spring Data Couchbase provides integration with the Couchbase Server cluster by providing POJO centric data interaction with Couchbase Buckets and helping to provide a repository-style implementation. This effort has been very successful and has generated a lot of interest.  

[Three things to know about document database modelling: part 1](http://blog.couchbase.com/three-things-know-about-document-database-modelling-part-1)
: Most of us could churn out a first stab at a relational database model while sleeping.  
Once you've chosen to work with a document database, though, you'll need to think a little differently.  
It's no more difficult, it's just that you're optimising for different things.  
So, what are the basics to getting it right?

#### Cassandra

[Notes from Cassandra Summit: The Rise of Top Line IT](http://planetcassandra.org/blog/notes-from-cassandra-summit-the-rise-of-top-line-it/)
: You can always tell a great tech event from two things: the Q&A in the sessions, and the side conversations about real-world uses. (A lousy tech event has fancy giveaways and gimmicks and same-as-last-year demos, but that’s another story.) By all the standards I know, Cassandra Summit was a great event.

[Cassandra error handling done right](http://planetcassandra.org/blog/cassandra-error-handling-done-right/)
: Proper error handling with databases is always a challenge when the safety of your data is involved. Cassandra is no exception to this rule. Thanks to the complete control of consistency, availability and durability offered by Cassandra, error handling turns out to be very flexible and, if done right, will allow you to extend the continuous availability of your cluster even further. But in order to reach this goal, it’s important to understand the various kind of errors that can be thrown by the drivers and how to handle them properly.  
To remain practical, this article will refer directly to the DataStax Java Driver exceptions and API, but all the concepts explained here can be transposed directly to other DataStax Drivers.

[Fuzzy Matching at Scale — Cassandra Summit 2014 Video/Slides](http://planetcassandra.org/blog/fuzzy-matching-at-scale-cassandra-summit-2014-videoslides/)
: In the last few months I’ve given two different talks about scalable fuzzy matching.  
The first was a Strata in San Jose, titled Similarity at Scale. In that talk I focused mostly on techniques for doing fuzzy matching (or joins) between large data sets, primarily via Cascading workflows.

[Escaping From Disco-Era Data Modeling](http://planetcassandra.org/blog/escaping-from-disco-era-data-modeling/)
: On StackOverflow, I have seen Cassandra used in a lot of strange ways – particularly when it comes to secondary indexes.  I believe much of the confusion that exists is due to the majority of new Cassandra users having their understanding of database indexing grounded in experience with relational databases.  They tend to approach a Cassandra data model with the goal of trying find the most efficient way to store the data, and then add secondary indexes in a vain attempt to satisfy their potential query patterns.

#### MySQL

[Improvements to STRICT MODE in MySQL](http://mysqlserverteam.com/improvements-to-strict-mode-in-mysql/)
: As a part of improving the error handling, in MySQL 5.7.5 we have re-implemented STRICT sql mode.  
STRICT mode in MySQL affects the errors that arise from invalid, missing, or out of range values in DML statements such as INSERT, UPDATE, and DELETE. The new implementation aims to make the behavior of STRICT mode more consistent, yet maintain backward compatibility as much as possible.

[Percona XtraDB Cluster: How to run a 2-node cluster on a single server](http://www.percona.com/blog/2014/10/21/percona-xtradb-cluster-how-to-run-a-2-node-cluster-on-a-single-server/)
: I reckon there’s little sense in running 2 or more Percona XtraDB Cluster (PXC) nodes in a single physical server other than for educational and testing purposes – but doing so is still useful in those cases. The most popular way of achieving this seems to be with server virtualization, such as making use of Vagrant boxes. But in the same way you can have multiple instances of MySQL running in parallel on the OS level in the form of concurrent mysqld processes, so too can you have multiple Percona XtraDB Cluster nodes. And the way to achieve this is precisely the same: using dedicated datadirs and different ports for each node.

#### Redis

[A few arguments about Redis Sentinel properties and fail scenarios.](http://antirez.com/news/80)
: Yesterday distributed systems expert Aphyr, posted a tweet about a Redis Sentinel issue experienced by an unknown company (that wishes to remain anonymous):“OH on Redis Sentinel "They kill -9'd the master, which caused a split brain... then the old master popped up with no data and replicated the lack of data to all the other nodes. Literally had to restore from backups."  
OMG we have some nasty bug I thought. However I tried to get more information from Kyle, and he replied that the users actually disabled disk persistence at all from the master process. Yep: the master was configured on purpose to restart with a wiped data set.  
Guess what? A Twitter drama immediately started. People were deeply worried for Redis users. Poor Redis users! Always in danger. 

### Log management

[Use ELK to visualise security data: IPTables and KippoSSH Honeypot](http://www.elasticsearch.org/blog/use-elk-display-security-datasources-iptables-kippo-honeypot/)
: Among the countless possible use cases where ELK can help save the day, displaying security-relevant data is certainly a very interesting one. In this blog post, using a virtual machine sitting on the cloud, we’re going to show how to quickly set up a clustered instance of Elasticsearch to visualise firewall and honeypot datasources, namely IPtables and KippoSSH, focusing on the ELK-relevant configuration bits.  
KippoSSH is a medium interaction honeypot capable of recording plenty of information about the attacker, including interactive TTY sessions recordings; for the purpose of this blog post, we’ll leave that latter piece of info aside, and focus on making sense of some brute force data.

### PHP

[Using XHP with Bootstrap](http://hhvm.com/blog/6515/using-xhp-with-bootstrap)
: XHP is a great way to safely create HTML user interfaces from PHP or Hack. We love how extensible it is, allowing you to create your own pseudo-elements that are composed of more basic building blocks – ultimately a series of HTML tags.

[Where are you? Implementing geolocation with GeoCoder PHP](http://www.sitepoint.com/implementing-geolocation-geocoder-php/)
: The beauty of SitePoint, to me, is that you can get inspired to try something or be told about some cool project out there. The internet is simply too big for one person to scout out on their own. GeoCoder was one of those for me. I had never heard about it and came across it on the authors Trello board.

### SEO

[Fake traffic un-detected by Google Analytics](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:216669)
: Or to put it differently, when your metrics lie to you: how to find out, and what should you do?  
The purpose of this article is to let Google aware of the problem, and fix their Google Analytics reports (filtering out the fake traffic). This scheme also impacts many companies computing website rankings. Tons of websites now have their traffic stats wrong, and should consider using home-made solutions, to filter out fake traffic undetected by vendors.

### Network

[Netflow Ingress/Egress et Top-Talkers](http://feedproxy.google.com/~r/Networklife/~3/ERg7m5Pvl5Y/)
: Aujourd’hui je m’intéresse à Netflow, un des topics dans « IP Services » pour le CCIE v5. Historique Netflow à évolué pour passer d’une technologie de cache pour le switching à un outil puissant pour l’analyse de flux.

[Netflow Aggregation cache](http://feedproxy.google.com/~r/Networklife/~3/UdrrIRl4AaQ/)
: L’aggregation cache de Netflow est une fonctionnalité qui à fait son apparition depuis la version 8. Je vais tenter de synthétiser cette fonction dans cet article. L’agrégation de l’export des données Netflow est en général effectué par les outils de collection de données sur les...
