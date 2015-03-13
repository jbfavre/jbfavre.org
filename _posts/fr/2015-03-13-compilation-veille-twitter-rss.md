---
layout: post
title: "Compilation veille Twitter & RSS #2015-10"
category: veille
date: 2015-03-13 18:00 +0100
---

La moisson de liens pour les semaine du 9 au 13 mars 2015.
Ils ont, pour la plupart été publiés sur mon compte Twitter.
Les voici rassemblés pour ceux qui les auraient raté.

Bonne lecture

## Databases

### Cassandra

[Cassandra Migration to EC2](http://highscalability.com/blog/2015/3/11/cassandra-migration-to-ec2.html)
: In January we migrated our entire infrastructure from dedicated servers in Germany to EC2 in the US. The migration included a wide variety of components, web workers, background task workers, RabbitMQ, Postgresql, Redis, Memcached and our Cassandra cluster. Our main requirement was to execute this migration without downtime.

### MemSQL

[Geospatial Intelligence Coming to MemSQL](http://blog.memsql.com/geospatial-intelligence/)
: This week at the ESRI Developers Summit in Palm Springs, our friends at ESRI are previewing upcoming features for the next release of MemSQL, using a huge real-world geospatial dataset.  
Esri develops geographic information systems (GIS) that function as an integral component in nearly every type of organization. In a recent report by the ARC Advisory Group, the Geographic Information System Global Market Research Study, the authors stated, “Esri is, without a doubt, the dominant player in the GIS market.”

### MariaDB

[Using pt-table-checksum with MariaDB Galera](https://mariadb.com/blog/using-pt-table-checksum-mariadb-galera)
: A rapidly increasing number of large, high traffic sites are using MariaDB Galera for their database needs. This makes sense since it works so well. Administrators will connect asynchronous slaves to Galera for reporting, back-ups and disaster recovery.

### MySQL

[MySQL and geospatial programming: An introduction to GIS](http://www.percona.com/blog/2015/03/13/mysql-and-geospatial-programming-an-introduction-to-gis/)
: Geographic information systems (GIS) are used by application developers to incorporate geographic information into their datasets to create apps with cool features such finding the address to the best steakhouse in town or the locations of local points of historical interest (the list is endless). In a nutshell, GIS captures, store, checks and displays data related to positions on Earth’s surface.

[Purging and Rotating Logs Made Easy with MySQL Utilities](http://mysqlhighavailability.com/purging-and-rotating-logs-made-easy-with-mysql-utilities/)
: The MySQL Utilities team is happy to introduce a new MySQL utility named  ‘mysqlbinlogpurge‘, which allows users to easily and safely purge binary logs on a master by determining the binary logs that are obsolete. This utility is included in MySQL Utilities

[MySQL 5.7: InnoDB Intrinsic Tables](http://mysqlserverteam.com/mysql-5-7-innodb-intrinsic-tables/)
: The MySQL Optimizer sometimes needs a temporary data-store during query processing, for storing intermediate results. Before MySQL 5.7, this need was serviced exclusively using a combination of the HEAP/MEMORY storage engine (for smaller tables) and the MyISAM storage engine (for larger tables). You can find more information on when disk based temporary tables (MyISAM or InnoDB) are used instead of MEMORY tables here.

[Easy query metrics with MySQL Performance Schema](http://www.percona.com/blog/2015/03/12/easy-query-metrics-with-mysql-performance-schema/)
: The MySQL Performance Schema exposes so much data that it’s not trivial to learn, configure, and use. With recently released Percona Agent 1.0.11 you can get query metrics – like min, max, and average query execution time – with a few clicks

[Advanced JSON for MySQL](http://www.percona.com/blog/2015/03/10/advanced-json-mysql-indexing-aggregation-highly-complex-json-documents/)
: JSON is an text based, human readable format for transmitting data between systems, for serializing objects and for storing document store data for documents that have different attributes/schema for each document. Popular document store databases use JSON (and the related BSON) for storing and transmitting data.

[5 free handy tools for monitoring and managing MySQL replication](http://www.percona.com/blog/2015/03/09/5-free-handy-tools-for-monitoring-and-managing-mysql-replication/)
: MySQL Replication is very simple to set up. In this post I’ll discuss its importance and five handy tools for monitoring and managing MySQL replication.  
What is MySQL Replication? It’s the process of copying the (real-time events) data from one master instance to another slave instance and maintaining the redundant consistent data in a different machine. This enables a distributed database system that shares the same level of information.

## Virtualization

[Tiny Docker Operating Systems](https://blog.docker.com/2015/03/tiny-docker-operating-systems/)
: In a recent post, The New Minimalist Operating Systems, I briefly described three new OSs designed with Docker in mind.  I also mentioned Boot2Docker, which I considered to be the smallest (23MB) Docker-focused OS at the time.  Less than two weeks later, a new tiny Docker OS has arrived: RancherOS.  If you are interested in what makes these two very minimal OSs tick, read on.

[CoreOS on VMware vSphere and VMware vCloud Air](http://coreos.com/blog/vmware-vcloud-air-and-vsphere/)
: At CoreOS, we want to make the world successful with containers on all computing platforms. Today, we are taking one step closer to that goal by announcing, with VMware, that CoreOS is fully supported and integrated with both VMware vSphere 5.5 and VMware vCloud Air. Enterprises that have been evaluating using containers but needed fully supported environments to begin now have the support to get started.

## Tools

[A Handy GitHub Backup Script](https://vividcortex.com/blog/2015/03/07/handy-github-backup-script/)
: We use GitHub to host all of our source code at VividCortex. We use the GitHub API in a very simple way to ensure we’ve backed up all of the source code, because we add new repositories often.

## Architecture

[Scaling the collection of self-service metrics](http://engineering.linkedin.com/metrics/scaling-collection-self-service-metrics)
:  Almost four years ago, LinkedIn's Site Reliability Engineering (SRE) team began the arduous task of transitioning its metrics gathering infrastructure from a slow, labor-intensive system to the robust metrics pipeline which is still in place today: Autometrics.  The self-service nature of Autometrics was a boon to LinkedIn SREs and software engineers alike, allowing for greatly simplified and streamlined instrumentation of both system-level and application-level metrics.  Autometrics is now a foundational piece of LinkedIn's infrastructure which is leveraged by many internal tools and applications, either directly or indirectly, to enable many operational tasks -- monitoring, alerting, trend analysis, and capacity planning just to name a few. 

[Using Services to Break Down Monoliths](http://engineeringblog.yelp.com/2015/03/using-services-to-break-down-monoliths.html)
: At Yelp we value our ability to quickly ship code. We’re constantly pushing changes out to production, and we even encourage our interns to ship code on their first day. We’ve managed to maintain this pace even as the engineering team has grown to over 300 people and our codebase has reached several million lines of Python code (with a helping of Java on the side).

[ELK: Using a Centralized Logging Architecture (Part 1)](http://java.dzone.com/articles/elk-using-centralized-logging)
: Welcome, dear reader, to another post from my blog. On this new series, we will talk about a architecture specially designed to process data from log files coming from applications, with the junction of 3 tools, Logstash, ElasticSearch and Kibana. But after all, do we really need such a structure to process log files?

[ELK: Using a Centralized Logging Architecture (Part 2)](http://java.dzone.com/articles/elk-using-centralized-logging-0)
: Welcome, dear reader, to another post of our series about the ELK stack for logging. On the last post, we talked about LogStash, a tool that allow us to integrate data from different sources to different destinations, using transformations along the way, in a stream-like form. On this post, we will talk about ElasticSearch, a indexer based on apache Lucene, which can allow us to organize our data and make textual searches on the data, in a scalable infrastructure. So, let's begin by understanding how ElasticSearch is organized on the inside.

[ELK: Using a Centralized Logging Architecture - Final Part](http://www.dzone.com/articles/elk-using-centralized-logging-1)
: Welcome, dear reader! This is the last part of our series about the ELK stack, that provides a centralized architecture for gathering and analyse of application logs. On this last part, we will see how we can construct a rich front-end for our logging solution, using Kibana.

[Serving configuration data at scale with high availability](http://engineering.pinterest.com/post/112895488589)
: We have a lot of important and common data that’s not modified frequently but accessed at a very high rate. One example is our spam domain blacklist. Since we don’t want to show Pinners spammy Pins, our app/API server needs to check a Pin’s domain against this domain blacklist when rendering the Pin. This is just one example, but there are hundreds of thousands of Pin requests every second, which generates enormous demand for access to this list.

## Big Data

[Can Spark Streaming survive Chaos Monkey?](http://techblog.netflix.com/2015/03/can-spark-streaming-survive-chaos-monkey.html)
: Netflix is a data-driven organization that places emphasis on the quality of data collected and processed. In our previous blog post, we highlighted our use cases for real-time stream processing in the context of online recommendations and data monitoring. With Spark Streaming as our choice of stream processor, we set out to evaluate and share the resiliency story for Spark Streaming in the AWS cloud environment.  A Chaos Monkey based approach, which randomly terminated instances or processes, was employed to simulate failures.

[Emergence of the In-Memory Data Fabric](http://gridgain.blogspot.fr/2015/02/emergence-of-in-memory-data-fabric.html)
:  Some of us may have already heard the terms Data Grid and Data Fabric, however, neither of these terms has been well defined in the industry. In this blog, I will try to add some clarity to both terms by outlining some main features for data grids and data fabrics.

### Hadoop

[Understanding HDFS Recovery Processes (Part 2)](http://blog.cloudera.com/blog/2015/03/understanding-hdfs-recovery-processes-part-2/)
: Having a good grasp of HDFS recovery processes is important when running or moving toward production-ready Apache Hadoop. In the conclusion to this two-part post, pipeline recovery is explained.  
An important design requirement of HDFS is to ensure continuous and correct operations that support production deployments. For that reason, it’s important for operators to understand how HDFS recovery processes work. In Part 1 of this post, we looked at lease recovery and block recovery. Now, in Part 2, we explore pipeline recovery.

[How-to: Tune Your Apache Spark Jobs (Part 1)](http://blog.cloudera.com/blog/2015/03/how-to-tune-your-apache-spark-jobs-part-1/)
: When you write Apache Spark code and page through the public APIs, you come across words like transformation, action, and RDD. Understanding Spark at this level is vital for writing Spark programs. Similarly, when things start to fail, or when you venture into the web UI to try to understand why your application is taking so long, you’re confronted with a new vocabulary of words like job, stage, and task. Understanding Spark at this level is vital for writing good Spark programs, and of course by good, I mean fast. To write a Spark program that will execute efficiently, it is very, very helpful to understand Spark’s underlying execution model.

## Analytics

[Measuring user perceived latency](http://engineering.foursquare.com/2015/03/12/measuring-user-perceived-latency/)
: At Foursquare, tracking and improving server-side response times is a problem many engineers are familiar with. We collect a myriad of server-side timing metrics in Graphite and have automated alerts if server endpoints respond too slowly. However, one critical metric that can be a bit harder to measure for any mobile application is user perceived latency. How long did the user feel like they waited for the application to startup or the next screen to load after they’ve tapped a button? Steve Souder gives a great talk about the perception of latency in this short talk.

[4 steps to better goals and metrics](http://engineering.pinterest.com/post/112720487359)
: I’ve found over and over again that many organizations suffer from the same problem, goal setting . It’s not always clear how goals are set or how to set them. This is especially true of startups. I had to learn this process the hard way by making lots of mistakes and banging my head against walls. So you can spare your own head and a few innocent walls, I’m sharing my brain dump on formulating goals and metrics.

## Dataviz

[Are Scatterplots The Killer Data Visualization Tool You're Not Using?](https://vividcortex.com/blog/2015/03/05/scatterplots-killer-data-visualization-tool-youre-not-using/)
: At VividCortex, we deal with a lot of data, day in and day out. It’s not just our customer data: we actually consume a lot of data and reports produced by others as well. For example, there are reports in Salesforce’s CRM, various analytics solutions we use, industry reports we read, and on and on. Speaking personally, I probably study at least 10 charts a day in depth to try to understand their meaning. And it’s only growing as our business and activity grows.

## Management

[It appears that DevOps may be more symptom than solution](http://slott-softwarearchitect.blogspot.fr/2015/03/it-appears-that-devops-may-be-more.html)
: It appears that DevOps may be a symptom of a bigger problem. The bigger problem? Java.  
Java development -- with a giant framework like Spring -- seems to accrete layers and layers of stuff. And more stuff.  And bonus stuff on top the the excess stuff.

[The Art of DevOps Part II – Islands of Development](http://apmblog.dynatrace.com/2015/03/12/the-art-of-devops-islands-of-development/)
: Welcome back to part two of my four part series on The Art of DevOps. I have previously set the stage, so in this article I will focus on the primary objectives in executing a solid DevOps operation specifically within the Islands of Development. The intel herein revolves around clear, concise communications and sharpening defenses in the continuous delivery pipeline by engaging a higher level of intelligence: advanced performance management.

[Microservices, DevOps, and the cost of change?](http://blog.christianposta.com/microservices/microservices-and-reducing-the-cost-of-change/)
: As developers, we all love shiny new things. New technologies (Docker, Kubernetes), new languages (Golang, NodeJS), new hyped conversation starters (Microservices, DevOps, Cloud). And everyone seems to have an opinion about why you should do this architecture, or why you should use that language. At the end of the day, your employer is expecting you to deliver using a means to an end, but what is that end?

[Learning from Today’s DevOps Leaders](http://apmblog.dynatrace.com/2015/03/09/learning-from-todays-devops-leaders/)
: Google, Amazon, Netflix, Facebook, Etsy and Microsoft have adopted DevOps principles. So have The Gap, Nordstrom, the World Bank and GM. And just about every tech start-up has it in their DNA.  
These organizations know that their revenue, their market share—their very futures depend on satisfying their customers’ ever-increasing demands for new features, greater speed and their personal ‘perfect’ experience—every time.  These companies continuously deliver new value to their customers because they understand the alternative…

[Toute l’estime que je vous porte (French only)](https://n.survol.fr/n/toute-lestime-que-je-vous-porte)
: Tous les jours, je résous des problèmes nouveaux, pour lesquels je n’ai encore jamais implémenté de solution.  
Si vous n’avez jamais fait d’informatique, mettez-vous bien ça dans la tête : Contrairement au maçon qui peut construire des dizaines de maisons, l’informaticien ne fait jamais deux fois la même chose. Il peut réutiliser la solution précédente à l’infini, en quelques heures. Qu’un développeur fasse deux fois exactement la même chose est le symptôme d’un problème d’organisation.

[Nomadic programming (part 1)](http://www.matthewbass.com/2008/06/13/nomadic-programming/)
: I’m a freelance software developer which means I generally work from home unless a client needs me to be on-site. I don’t mind being alone to a certain extent, but after a few straight weeks it can get pretty lonely.  
Recently, I’ve started doing what I’ve termed “nomadic programming.” Namely, spending the day roaming between various wi-fi hotspots instead of working from home. This has worked really well for me. So well, in fact, that I think the concept needs to start spreading.

[Nomadic programming (part 2)](http://www.matthewbass.com/2015/02/17/nomadic-programming-part-2/)
: As defined in part 1, a nomad is a freelancer who spends the day roaming between various wi-fi hotspots instead of working from home. This isn’t just about hanging out at a coffee shop like a hipster. This is about getting out of the house and into a more stimulating environment, creating opportunity for networking, and yes, enjoying some delicious food and drink in the process.  
So now that you’re onboard with the concept, what’s the actual procedure for being a nomad? I’ve been nomading for 8 years and have picked up a few tips and tricks that I’ve found maximize enjoyment and productivity. Follow these guidelines for nomading success.

