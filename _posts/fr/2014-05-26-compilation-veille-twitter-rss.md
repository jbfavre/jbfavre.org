---
title: "Compilation veille Twitter & RSS #01"
category: veille
---

La moisson de liens pour la semaine du 19 au 23 mai 2014  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Web

[Your link shorteners harm your readers and destroy the Web](http://t37.net/why-link-shorteners-harm-your-readers-and-destroy-the-web.html)
:  Link shorteners appeared as a consequence of the rise of Twitter. With a 140 characters limitation, sending full links over the micro blogging network was almost impossible. All you need to build your own URL shortener is a 30 lines PHP script and a 4 to 6 characters domain name. Many services launched, relying on providing analytics for a domain you don’t own to differ from the competition.

### Load-balancing

[A side-effect of "tcp pre-connect" feature in moderns web browsers](http://blog.haproxy.com/2014/05/26/haproxy-and-http-errors-408-in-chrome/)
:  408 is the status code used by web servers or proxies when the client has not sent a whole HTTP request during a certain period of time. It is an absolutely normal behavior!  
That said, modern browsers have now some advanced features like “tcp pre-connect”…  
As its name designate it, a browser may open tcp connection to web servers before you want to browse them. Purpose is to speed up browsing for the client by saving the time to establish these connections.

### Virtualization

[How to use Docker and OpenvSwitch together with Ceph](http://fbevmware.blogspot.com/2014/05/software-defined-compute-network-and.html)
:  This post is an extension to the Coupling Docker and Open vSwitch one published late 2013. The idea is quite simple : use Docker, Open vSwitch, Ceph and CRIU to provide software-defined capabilities (SDC, SDN, SDS...)

### Big Data

[Parquet, a column-oriented storage system for Hadoop, is now part of Apache Incubator Project](http://blog.cloudera.com/blog/2014/05/congratulations-to-parquet-now-an-apache-incubator-project/)
:  Yesterday, Parquet was accepted into the Apache Incubator. Congratulations to all the contributors to what will eventually become Apache Parquet!  
In its relatively short lifetime (co-founded by Twitter and Cloudera in July 2013), Parquet has already become the de facto standard for columnar storage of Apache Hadoop data — with native support in Impala, Apache Hive, Apache Pig, Apache Spark, MapReduce, Apache Tajo, Apache Drill, Apache Crunch, and Cascading (and forthcoming in Presto and Shark).

[5 project's abstract from "MIT Sloan Data Analytics Club Hackathon", sponsored by Elasticsearch](http://www.elasticsearch.org/blog/elasticsearch-teams-mit-sloan-data-analytics-hackathon/)
:  Following from the success and popularity of the Hopper Hackathon we participated in late last year, last week we sponsored the MIT Sloan Data Analytics Club Hackathon for our latest offering to Elasticsearch aficionados. More than 50 software engineers, business students and other open source software enthusiasts signed up to participate, and on a Saturday to boot! The full day’s festivities included access to a huge storage and computing cluster, and everyone was set free to create something awesome using Elasticsearch.

### Databases

[How to quickly and efficiently monitor mysql (through a cloud-hosted service)](http://www.mysqlperformanceblog.com/2014/05/23/3-minute-mysql-monitor/)
:  There are many cool, new things happening with Percona Cloud Tools.  To avoid “tl;dr” I will highlight only one new feature after a brief, general announcement.  The new feature is a 3-minute MySQL monitor.  I’ll blog later about other features.  
The general announcement is: Last week we quietly released a brand-new agent called percona-agent, and we added MySQL and system monitoring to Percona Cloud Tools.  We also wrote a brand-new API from the ground up.  We call it all “PCT v2″.  For you it means a better experience and more features, all still free while we’re in beta.

[How to deploy Mysql Percona cluster within Docker](http://www.mysqlperformanceblog.com/2014/05/26/installing-three-node-percona-xtradb-cluster-5-6-docker/)
:  I will be showing you how to setup a three-node Percona XtraDB Cluster (PXC) 5.6 on the Docker open-source engine. Just to review Docker… “is an open-source engine that automates the deployment of any application as a lightweight, portable, self-sufficient container that will run virtually anywhere.”

### PHP

[PHP Fights HHVM and Zephir with PHPNG](http://www.sitepoint.com/php-fights-hhvm-zephir-phpng/)
:  Chaos in the old world! First HipHop, years ago, and no one bats an eye. Then suddenly, HHVM happens, introduces Hack, and all hell breaks loose – Facebook made a new PHP and broke/fixed everything (depending on who you ask). Furthermore, Zephir spawns and threatens with C-level compilation of all your PHP code, with full support for current PHP extensions (while Zephir is not intended to replace C or PHP, it does let you write near-PHP code and compile it to C, which lets you easily rewrite all your PHP apps to a format that can be close-sourced and compiled for speed and security). It’s mushroom growth time for alternative PHP runtimes, and HippyVM appears as well.

### Fun

[Network engineering leads to everything even showbizz :)](https://www.youtube.com/watch?v=aPtr43KHBGk)
:  {% oembed https://www.youtube.com/watch?v=aPtr43KHBGk %}
