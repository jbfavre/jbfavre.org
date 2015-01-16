---
title: "Compilation veille Twitter & RSS #06"
category: veille
---

La moisson de liens pour la semaine du 14 au 18 juillet 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Architecture

[Bitly: lessons learned building a distributed system that handles 6 billion clicks a month](http://highscalability.com/blog/2014/7/14/bitly-lessons-learned-building-a-distributed-system-that-han.html)
:  Have you ever wondered how bitly makes money? A URL shortener can’t be that hard to write, right? Sean O'Connor, Lead Application Developer at bitly, answers the how can bitly possibly make money question immediately in a talk he gave on bitly at the Bacon conference.

[Scaling feature flags with Zookeeper](http://yellerapp.com/posts/2014-05-14-zookeeper-feature-flags.html)
:  They’re one of those tools that make running complicated systems much more manageable. For those not in the know, feature flags are a way of adding a conditional to your code that lets a configurable number of users or requests through, originally designed for restricting new features to internal users before rolling them out to the rest of the userbase.

### Configuration management

[Release: Chef Container 0.2.0 (beta)](http://www.getchef.com/blog/2014/07/15/release-chef-container-0-2-0-beta/)
:  Chef released a version of the Chef client that can run inside a Linux container. This container-friendly client is called chef-container. In this post we’ll give you an introduction to chef-container, its purpose and its components. We’ll also tell you about a new knife plugin for managing container images. Then, we’ll show you how to launch an instance of Apache2, running inside a Docker container.

[Meet the Chef Analytics Platform]([http://www.getchef.com/blog/2014/07/15/meet-the-chef-analytics-platform/)
:  The Chef analytics platform is a premium feature of Chef. It provides real-time visibility into what is happening on your Chef server and is the latest in a growing suite of features that will provide a comprehensive view of your infrastructure. Chef analytics runs on separate hardware from the Chef server and consists of several components. Today, we are releasing the first version of the analytics platform, which includes the ability to log Chef actions. Over time, the analytics platform will provide additional capabilities for analyzing metrics and event data from Chef servers and clients.

### Application Performance Management

[Scaling Packetbeat using Redis and Logstash](http://packetbeat.com/blog/scaling-packetbeat-with-redis-and-logstash.html)
:  Our getting started guide walks you through installing the simplest architecture for the Packetbeat system. This is nice and easy to get started with and enough for networks with small traffic. It also uses the minimum amount of servers: a single machine running Elasticsearch + Kibana. The Packetbeat agents insert the transactions directly into the Elasticsearch instance.  
While this is easy to get started with, if your application has to support significant traffic, it is wise to use multiple servers (or virtual machines) for your monitoring system.

[Facette](https://github.com/facette/facette)
:  Facette is a web application to display time series data from various sources — such as collectd or Graphite — on graphs, designed to be easy to setup and to use.

### Web performances

[How to create the illusion of faster web pages (while also creating actual happier users)](http://www.webperformancetoday.com/2014/07/16/eight-tricks-improve-perceived-web-performance/)
:  The internet may change, and web pages may grow and evolve, but user expectations are constant. Throughout several studies, these numbers about response times and human perception have been consistent for more than 45 years.  
These numbers are hard-wired. We have zero control over them. They’re consistent regardless of the type of device, application, or connection we’re using at any given moment.

[A beginner's guide to HTTP cache headers](http://www.mobify.com/blog/beginners-guide-to-http-cache-headers/)
:  This article offers an exploration into HTTP caching headers and associated CDN behaviour. If you're looking to understand how caching headers fit into the modern web, or are just curious about what everyone is talking about around you, this resource is for you.

### Databases

#### MySQL

[Simple MySQL Master HA with mysqlnd_ms](http://www.mysqlperformanceblog.com/2014/07/14/simple-mysql-master-ha-mysqlnd_ms/)
:  The mysqlnd plugin, MySQL Master Slave, is a transparent layer on top of mysqlnd extension. This allows you to do read-write splitting and slave reads load balancing without needing to change anything from your application. But do you know you can also achieve a form of high availability with this plugin?

[High availability with mysqlnd_ms on percona XtraDB cluster](http://www.mysqlperformanceblog.com/2014/07/16/high-availability-with-mysqlnd_ms-on-percona-xtradb-cluster/)
:  In my first post, “Simple MySQL Master HA with mysqlnd_ms,” I showed a simple HA solution using asynchronous MySQL replication. This time we will see how to leverage an all-primary cluster where you can write to all nodes.

[MariaDB Replication, MaxScale and the need for a binlog server](http://karlssonondatabases.blogspot.fr/2014/07/mariadb-replication-maxscale-and-need.html)
:  This is an introduction to MariaDB Replication and to why we need a binlogs server and what this is. The first part is an introduction to replication basics, and if you know this already, then you want want to skip past the first section or two.

[MySQL Slave Scaling (and more)](http://blog.booking.com/mysql_slave_scaling_and_more.html)
:  At Booking.com, we have very wide replication topologies. It is not uncommon to have more than fifty (and sometimes more than a hundred) slaves replicating from the same master. When reaching this number of slaves, one must be careful not to saturate the network interface of the master. A solution exists but it has its weaknesses. We came up with an alternative approach that better fits our needs: the Binlog Server.


#### Cassandra

[No Downtime Database Migrations](http://planetcassandra.org/blog/post/no-downtime-database-migrations/)
:  This post will discuss the strategy, it’s goals, and what we learned along the way. The strategy applies to any database migration, and is not scoped only to moving between databases either.

[The Myth of Schema-less](http://planetcassandra.org/blog/post/the-myth-of-schema-less/)
:  I have grown increasingly frustrated with the world as people have become more and more convinced that “schema-less” is actually a feature to be proud of (or even exists). For over ten years I’ve worked with close to a dozen different databases in production and have not once seen “schemaless” truly manifest.

[Modèle de stockage physique dans Cassandra](http://planetcassandra.org/blog/post/modele-de-stockage-physique-dans-cassandra/) (in French)
:  Voici le premier article d’une longue série sur la modélisation de données dans Apache Cassandra avec CQL3.


### Hadoop & Big Data

[The New Hadoop Application Architectures Book is Here!](http://blog.cloudera.com/blog/2014/07/the-new-hadoop-application-architectures-book-is-here/)
:  The goal of this book is to give developers and architects guidance on architecting end-to-end solutions using Hadoop and tools in the ecosystem. We have split the book into two broad sections: the first section discusses various considerations for designing applications, and the second section describes the architectures of some of the most common applications of Hadoop and their architecture, thereby applying the considerations learned in the previous section.

[Estimating Financial Risk with Apache Spark](http://blog.cloudera.com/blog/2014/07/estimating-financial-risk-with-apache-spark/)
:  Learn how Spark facilitates the calculation of computationally-intensive statistics such as VaR via the Monte Carlo method.

[Introduction to Markov chain : simplified! ](http://www.analyticsvidhya.com/blog/2014/07/markov-chain-simplified/)
:  Markov chain is a simple concept which can explain most complicated real time processes.Speech recognition, Text identifiers, Path recognition and many other Artificial intelligence tools use this simple principle called Markov chain in some form. In this article we will illustrate how easy it is to understand this concept.


### Continuous integration

[Setting Up Continuous Integration & Continuous Deployment With Jenkins](http://code.tutsplus.com/tutorials/setting-up-continuous-integration-continuous-deployment-with-jenkins--cms-21511)
:  The daily life of a developer is filled with monotonous and repetitive tasks. Fortunately, we live in a pre-artificial intelligence age, which means computers are great at handling boring chores and they hardly ever complain about it!
