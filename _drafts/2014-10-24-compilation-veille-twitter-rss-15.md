---
layout: post
title: "Compilation veille Twitter & RSS #16"
category: veille
---

La moisson de liens pour les semaine du 20 au 24 octobre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Architecture

[Facebook Mobile Drops Pull For Push-based Snapshot + Delta Model](http://highscalability.com/blog/2014/10/20/facebook-mobile-drops-pull-for-push-based-snapshot-delta-mod.html)
: We've learned mobile is different. In If You're Programming A Cell Phone Like A Server You're Doing It Wrong we learned programming for a mobile platform is its own specialty. In How Facebook Makes Mobile Work At Scale For All Phones, On All Screens, On All Networks we learned bandwidth on mobile networks is a precious resource. 
Given all that, how do you design a protocol to sync state (think messages, comments, etc.) between mobile nodes and the global state holding servers located in a datacenter?  
Facebook recently wrote about their new solution to this problem in Building Mobile-First Infrastructure for Messenger. They were able to reduce bandwidth usage by 40% and reduced by 20% the terror of hitting send on a phone.  
That's a big win...that came from a protocol change.

[Sharding Pitfalls Part II: Running a Sharded Cluster](http://feeds.dzone.com/~r/zones/architects/~3/d25GxfVd504/sharding-pitfalls-part-ii)
: In Part I we discussed important considerations when picking a shard key. In this post we will go through some recommendations when running a sharded cluster at scale. Scalability is one of the core benefits of sharding in MongoDB but this can give you a false sense of security; even with that flexibility, you still have to make smart decisions about how and when you deploy resources. In this post, we will cover a couple of common mistakes that people tend to make when it comes to running a sharded cluster.

### Big Data

[New in CDH 5.2: Apache Sentry Delegated GRANT and REVOKE](http://blog.cloudera.com/blog/2014/10/new-in-cdh-5-2-apache-sentry-delegated-grant-and-revoke/)
: Apache Sentry (incubating) provides centralized authorization for services and applications in the Apache Hadoop ecosystem, allowing administrators to set up granular, role-based protection on resources, and to review them in one place. Previously, Sentry only designated administrators to GRANT and REVOKE privileges on an authorizable object. In Apache Sentry 1.5.0 (shipping inside CDH 5.2), we have implemented a new feature (SENTRY-327) that allows admin users to delegate the GRANT privilege to other users using WITH GRANT OPTION. If a user has the GRANT OPTION privilege on a specific resource, the user can now grant the GRANT privilege to other users on the same resource. Apache Hive, Impala, and Hue have all been updated to take advantage of this new Sentry functionality.

### Analytics

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

#### Docker

[How to Deploy a Docker Application Into Production on Amazon AWS](http://java.dzone.com/articles/how-deploy-docker-application)
: Docker reached production status a few months ago. But having the container technology alone is not enough. You need a complete platform infrastructure before you can deploy your docker application in production. Amazon AWS offers exactly that: a production quality platform that offers capacity provisioning, load balancing, scaling, and application health monitoring for Docker applications.

[Docker in Production — What We’ve Learned Launching Over 300 Million Docker Containers](http://blog.iron.io/2014/10/docker-in-production-what-weve-learned.html)
: Earlier this year, we made a decision to run every task on IronWorker inside its own Docker container. Since then, we've run over 300,000,000 programs inside of their own private Docker containers on AWS infrastructure.  
Now that we’ve been in production for several months, we wanted to take the opportunity to share with the community some of the challenges we faced in running a Docker-based infrastructure, how we overcame them, and why it was worth it.

### Databases

[The Key to Distributed Database Performance: Scalability](http://server.dzone.com/articles/key-distributed-database)
: TL;DR: The realities of modern corporate networks make the move to distributed database architectures inevitable. How do you leverage the stability and security of traditional relational database designs while making the transition to distributed environments? One key consideration is to ensure your cloud databases are scalable enough to deliver the technology's cost and performance benefits.

#### Couchbase

[Couchbase JPA Level 2 Cache](http://blog.couchbase.com/couchbase-jpa-level-2-cache-0)
: As Couchbase continues to experience growth as a company and increased adoption by the open source community we continue to encounter new challenges and use cases along the way. Many enterprises are turning to us to help add a cache to an existing application or evolve applications to next generation technologies. For these level two cache implementations we’ve helped develop a data access layer for applications in the Spring project. Spring Data Couchbase provides integration with the Couchbase Server cluster by providing POJO centric data interaction with Couchbase Buckets and helping to provide a repository-style implementation. This effort has been very successful and has generated a lot of interest.  

[Three things to know about document database modelling: part 1](http://blog.couchbase.com/three-things-know-about-document-database-modelling-part-1)
: Most of us could churn out a first stab at a relational database model while sleeping.  
Once you've chosen to work with a document database, though, you'll need to think a little differently.  
It's no more difficult, it's just that you're optimising for different things.  
So, what are the basics to getting it right?

#### Cassandra

[Cassandra error handling done right](http://planetcassandra.org/blog/cassandra-error-handling-done-right/)
: Proper error handling with databases is always a challenge when the safety of your data is involved. Cassandra is no exception to this rule. Thanks to the complete control of consistency, availability and durability offered by Cassandra, error handling turns out to be very flexible and, if done right, will allow you to extend the continuous availability of your cluster even further. But in order to reach this goal, it’s important to understand the various kind of errors that can be thrown by the drivers and how to handle them properly.  
To remain practical, this article will refer directly to the DataStax Java Driver exceptions and API, but all the concepts explained here can be transposed directly to other DataStax Drivers.

[Fuzzy Matching at Scale — Cassandra Summit 2014 Video/Slides](http://planetcassandra.org/blog/fuzzy-matching-at-scale-cassandra-summit-2014-videoslides/)
: In the last few months I’ve given two different talks about scalable fuzzy matching.  
The first was a Strata in San Jose, titled Similarity at Scale. In that talk I focused mostly on techniques for doing fuzzy matching (or joins) between large data sets, primarily via Cascading workflows.

[Escaping From Disco-Era Data Modeling](http://planetcassandra.org/blog/escaping-from-disco-era-data-modeling/)
: On StackOverflow, I have seen Cassandra used in a lot of strange ways – particularly when it comes to secondary indexes.  I believe much of the confusion that exists is due to the majority of new Cassandra users having their understanding of database indexing grounded in experience with relational databases.  They tend to approach a Cassandra data model with the goal of trying find the most efficient way to store the data, and then add secondary indexes in a vain attempt to satisfy their potential query patterns.

#### MySQL

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
