---
layout: post
title: "Compilation veille Twitter & RSS #2015-03"
category: veille
---

La moisson de liens pour les semaine du 19 au 23 janvier 2015.
Ils ont, pour la plupart été publiés sur mon compte Twitter.
Les voici rassemblés pour ceux qui les auraient raté.

Bonne lecture

## Cloud

[Deployment Pipelines in Amazon Web Services – An Introduction](http://www.stelligent.com/continuous-integration/deployment-pipeline-aws/)
: This is the first article in a series that will be describing the typical stages and steps we define when implementing deployment pipelines for our customers. This first article introduces what will be covered in more detail in other articles in this series.  
All we do at Stelligent is implement Continuous Delivery in Amazon Web Services (AWS). This also means we embrace DevOps principles. While many of the practices are relevant to any provider (in the cloud or within data centers), I’m using some specific AWS references in this article.

## Monitoring

[Présent et avenir du monitoring de flux](http://blog.octo.com/present-et-avenir-du-monitoring-de-flux/)
: Avoir un monitoring de flux performant est critique : intégrant tous les flux de données il est à même d’offrir une vision synthétique de tout le système d’information.  
L’objectif de cet article est de vous permettre de comparer votre système actuel avec les bonnes pratiques généralement observées et de vous donner des pistes d’évolution.

[Grafana: monitor metrics collected by collectd into InfluxDB (English)](http://vincent.composieux.fr/article/grafana-monitor-metrics-collected-by-collectd-into-influxdb)
: Actually, the modern tool to render beautiful charts is Grafana.  
I will explain in this article how to install a stack using collectd + InfluxDB + Grafana.  
The idea is to have collectd that will collect us metrics on the system and tools installed on. These metrics will be added into InfluxDB database and Grafana will render them with amazing real-time charts.  
To do that, we also will need a third tool: a proxy that wil listen collectd events and insert metrics into InfluxDB.

## Python

[6 Python Performance Tips](http://blog.newrelic.com/2015/01/21/python-performance-tips/)
: Python is such a cool language because you can do so much with it in such a short time with so little code. Not only that, it supports many tasks, such as multiprocessing, with ease.  
Python detractors sometimes claim Python is slow. But it doesn’t have to be that way: Try these six tips to speed up your Python applications.

## PHP

[On PHP function calls](http://jpauli.github.io//2015/01/22/on-php-function-calls.html)
: This blog post is a technical explanation of a PHP optimization found with BlackFire profiler into a PHP script. The related post is located here : http://blog.blackfire.io/owncloud.html

[New Relic extension for HHVM updated to latest version](http://feeds.liip.ch/~r/liip_blog_php/~3/jCzxY9gBQKA/new-relic-extension-for-hhvm-updated-to-latest-version.html)
: Since I first published my New Relic extension for HHVM, I didn't do much and we stayed on that HHVM version (3.1). A lot changed in HHVM, which was one of the reasons I didn't do much: Too many changes in there, but it was for the good.

## Embedded

[Installing CyanogenMod on the Barnes and Noble Nook HD+](http://www.xaprb.com/blog/2015/01/19/install-cyanogenmod-nook-hdplus/)
: I wrote previously about how much I was using and enjoying my 9-inch Barnes and Noble Nook HD+. I’m still using and enjoying it, but a few of the things I mentioned in that article—the useless home screen, the schizophrenic updates from two app stores at once, and so on—started to annoy me. I started to fantasize about installing a clean, uncluttered Android operating system on it instead of using the Nook operating system. The best-known general-purpose Android OS is CyanogenMod, and that’s what I was thinking about.

## Architecture

[Learn from my pain - 5 Lessons from Ello's Adventures in Rapid Scaling](http://highscalability.com/blog/2015/1/21/learn-from-my-pain-5-lessons-from-ellos-adventures-in-rapid.html)
: Within one week Ello went from thousands of sessions a day to a few million sessions a day. Mike Pack wrote a great article sharing what they’ve learned: 5 Early Lessons from Rapid, High Availability Scaling with Rails.

[The Ephemeral Life of Dockerized Microservices](http://blog.iron.io/2015/01/the-ephemeral-life-of-dockerized.html)
: When using the word 'ephemeral', it's hard not to think of Snapchat these days, however the concept applies to the on demand computing pattern we promote here at Iron.io with our task processing service IronWorker. At a glance, each Docker container in which a task runs is only alive for the duration of the process itself, providing a highly effective environment for powering applications that follow the microservices architectural style.

[Docker...Containers, Microservices and Orchestrating the Whole Symphony](http://getcloudify.org/2014/12/14/TOSCA-docker-container-orchestration-microservices-architecture-kubernetes.html)
: The microservices architecture is far from a new trend, it’s generally accepted as a better way to build apps these days. The common way to build apps was, until a few years ago, the monolithic approach - which was, if you look at it from a functional perspective, basically one deployment unit that does everything. Monolithic apps are good for small scale teams and projects, but when you need something that has a larger scale and involves many teams, it starts to become problematic. It’s much harder to make changes, as the code base becomes bigger and more people make changes to it.

[Why Microservices Matter](https://blog.heroku.com/archives/2015/1/20/why_microservices_matter)
: All successful applications grow more complex over time, and that complexity creates challenges in development. There are two essential strategies to manage this problem: a team can keep everything together (create a monolith) or a team can divide a project into smaller pieces (create microservices). 

[Surviving a Datacenter Outage](https://www.pagerduty.com/blog/surviving-datacenter-outage/)
: PagerDuty was built around one simple idea: waking up the right people when things break. When an event is triggered, PagerDuty makes magic to notify the right person or team that something is wrong.

[API Best Practices: Hypermedia (Part 3)](http://blogs.mulesoft.org/api-best-practices-hypermedia-part-3/)
: First off, let me apologize for the delay in this third part of the hypermedia sub-series. Christmas meant a warm trip back to Minnesota, a road trip through the Texas panhandle, and numerous snow storms in between — until finally I had the chance to cut through the mountainous desert of Southern California on my way back to beautiful San Francisco.

[Microservices in the Enterprise: Friend or Foe?](https://taidevcouk.wordpress.com/2015/01/17/microservices-in-the-enterprise-friend-or-foe/)
: The microservice hype is everywhere, and although the industry can’t seem to agree on an exact definition, we are repeatedly told that moving away from a monolithic application to a Service-Oriented Architecture (SOA) consisting of small services is the correct way to build and evolve software systems. However, there is currently an absence of traditional ‘Enterprise’ organisations talking about their adoption of microservices. This blog post is a preview to a larger article, which explores the use of microservices in the Enterprise.

## Dev

[MQ Telemetry Transport Protocol for IoT](http://java.dzone.com/articles/mq-telemetry-transport)
: MQTT protocol is a lightweight, open and simple network protocol for the device communications. It is based on the principle of publishing messages and subscribing to topics, or "pub/sub". The protocol runs over TCP/IP, or over other network protocols that provide ordered, lossless, bi-directional connections. It was designed for the low-bandwidth, high latency networks in the late 1990s/early 2000s and its support to connect over thousands of clients to a single server. This characteristic is a suite for the devices which has very limited processing powers and limited memory, such as sensors, mobile devices, monitoring devices. Since It provides a common interface for everything, new sensors or devices can integrate very easily with the system.  

[The magic behind configure, make, make install](http://robots.thoughtbot.com/the-magic-behind-configure-make-make-install)
: If you’ve used any flavour of Unix for development, you’ve probably installed software from source with this magic incantation:  
`./configure`  
`make`  
`make install`  
I know I’ve typed it a lot, but in my early days using Linux I didn’t really understand what it meant, I just knew that if I wanted to install software this was the spell to recite.  
Recently I’ve been building my own Unix tools, and I wanted to tap into this standard install process; not only is it familiar to many Unix users, it’s also a great starting point for building a package for Homebrew and the various Linux and BSD package managers. It was time to dig into the Unix Grimoire and find out what the incantation does.

### Mobile

[Mobile Deep Linking for Web and Hybrid Apps](http://developer.telerik.com/featured/mobile-deep-linking-web-hybrid-apps/)
: Every now and then, new statistics pop up confirming that an ever growing proportion of online traffic originates from mobile devices. The HTML5 specification reflects this, as the spec has been stuffed with APIs that allow web applications to use hardware commonly found in mobile devices. Browsers also implement operating system specific links – for instance, when you browse for an image, instead of a plain file browser, you get to choose between using your device photos app or camera.

### Tests

[Key Performance Metrics For Load Tests Beyond Response Time- Part I](http://apmblog.dynatrace.com/2015/01/22/key-performance-metrics-load-tests-beyond-response-time-part/)
: Whether it is JMeter, SoapUI, Load Runner, SilkTest, Neotys or one of the cloud-based load testing solutions such as Keynote, Dynatrace (formerly Gomez) or others, breaking an application under heavy load is easy these days. Finding the problem based on automatically generated load testing reports is not. Can you tell me what is wrong based on the following reports?

[Automated CSS Regressive Testing in Practice](http://dsheiko.com/weblog/automated-css-regressive-testing-in-practice)
: We write unit-tests tests for server-side source code and for JavaScript. Even when putting aside benefits of TDD approach it gives us a priceless thing – early problem reporting during refactoring. So you make change, you run tests and you will know at once if anything broke. What about CSS? You encapsulate a declaration set into a separate rule, look through the site pages where dependent classes used and satisfied proceed with refactoring. After finishing your work you test the site thoroughly, opening every page, every modal, drop-down and expandable. Now you find out that on the very first change you broke the styles of a component that shows only by user action so missed it back then. It turns out that refactoring decision wasn't quite good. But it's late to change.

## Network

[RFC 3633: IPv6 Prefix Options for Dynamic Host Configuration Protocol (DHCP) version 6](http://www.bortzmeyer.org/3633.html)
: On peut en IPv6 déléguer un préfixe d'adresse IP d'un routeur à un autre routeur. Par exemple, le routeur du FAI peut, via DHCP, déléguer au routeur CPE le préfixe que celui-ci annoncera ensuite en RA (Router Advertisement) sur le réseau local.

## Security

[Gitrob: find sensitive information published to your GitHub org before someone else does ](http://thechangelog.com/gitrob-find-sensitive-information-published-github-org-someone-else/)
: It is widely known that sensitive information such as private keys and credentials often get mistakenly pushed to public GitHub repos.  
Has it happened to you? Gitrob — a CLI from Michael Henriksen — will do its darnedest to find out for you.

[Security Panel Lands In Firefox 37](https://ma.ttias.be/security-panel-inspector-lands-in-firefox-37/)
: Firefox Nightly (or if you prefer, Firefox's Developer Edition) just got a pretty interesting new feature, called the Security Panel.

[Why not DANE in browsers](http://www.imperialviolet.org/2015/01/17/notdane.html)
: Thomas Ptacek laid out a number of arguments against DNSSEC recently (and in a follow up). We don't fully agree on everything, but it did prompt me to write why, even if you assume DNSSEC, DANE (the standard for speaking about the intersection of TLS and DNSSEC) is not a foregone conclusion in web browsers.

## Web performances

[These 7 things are slowing down your site’s user experience (and you have no control over them)](http://www.webperformancetoday.com/2015/01/21/xx-things-slowing-site-control/)
: As a website owner, you have 100% control over your site, plus a hefty amount of control over the first and middle mile of the network your pages travel over. You can (and you should) optimize the heck out of your pages, invest in a killer back end, and deploy the best content delivery network that money can buy. These tactics put you in charge of several performance areas, which is great.

[A Simple Performance Comparison of HTTPS, SPDY and HTTP/2](http://blog.httpwatch.com/2015/01/16/a-simple-performance-comparison-of-https-spdy-and-http2/)
: Firefox 35 was released this week and became the first browser to enable support for the HTTP/2 protocol by default.  
The HTTP/2 specification has not been finalised so Firefox actually enabled the Draft 14 version of HTTP/2 but little is expected to change in the final draft. Google is now supporting HTTP/2 draft 14 on its web servers alongside the SPDY protocol giving us a chance to compare the performance of raw HTTPS, SPDY and HTTP/2 on the same web page.

[Make Performance Part of Your Workflow](https://codeascraft.com/2014/12/11/make-performance-part-of-your-workflow/)
: One way to minimize the operational cost of performance work is to incorporate it into your daily workflow by implementing tools and developing a routine of benchmarking performance.

[Etsy Q3 2014 Site Performance Report](https://codeascraft.com/2014/12/22/q3-2014-site-performance-report/)
: We’re well into the fourth quarter of 2014, and it’s time to update you on how we did in Q3. This is either a really late performance report or an early Christmas present – you decide! The short version is that server side performance improved due to infrastructure changes, while front-end performance got worse because of third party content and increased amounts of CSS/JS across the site. In most cases the additional CSS/JS came from redesigns and new features that were part of winning variants that we tested on site. We’ve also learned that we need some better front-end monitoring and analysis tools to detect regressions and figure out what caused them.

## Product Management

[Converting To Jobs Stories](http://robots.thoughtbot.com/converting-to-jobs-stories)
: We have used user stories as part of our design and development process for many years. You could find several mentions of them throughout our playbook. We used user stories to give designers and developers context to the problems that the user is having and give space for them to solve that problem while building the product.

## Management

[Transitioning to a DevOps Model](https://www.pagerduty.com/blog/transitioning-to-devops/)
: As the pace of development and business continues to scale, teams need an agile and collaborative work environment to succeed. Moving to a DevOps model is a critical part of setting your engineering teams up to succeed, but making the transition can be challenging for many companies.

[Pair Programming Lessons from Improv](http://blog.gdinwiddie.com/2014/12/31/pair-programming-lessons-from-improv/)
: A few years back, I took a course in “Beginning Improv Acting.” I don’t plan to make a living performing improv theater, but I thought it would be beneficial for becoming more comfortable and competent at public speaking. It did that, but it also taught me some deeper lessons about collaboration, some so deep I can’t yet articulate them.

[Making Remote Work: Tools](http://blog.jayfields.com/2015/01/making-remote-work-tools.html)
: I recently wrote about my experiences working on a remote team. Within that blog entry you can find a more verbose version of the following text:  
"Communication is what I consider to be the hardest part of remote work. I haven't found an easy, general solution. A few teammates prefer video chat, others despise it. A few teammates like the wiki as a backlog, a few haven't ever edited the wiki. Some prefer strict usage of email/chat/phone for async-unimportant/async-important/sync-urgent, others tend to use one of those 3 for all communication."  
As you can tell, we have several different communication tools. When writing, I generally prefer to include concrete examples. This blog entry will list each tool referenced above. However, I cannot emphasize enough that: this list is a snapshot of what we're using, not a recommended set of tools.

[We Invite Everyone at Etsy to Do an Engineering Rotation: Here’s why](https://codeascraft.com/2014/12/22/engineering-rotation/)
: At Etsy, it’s not just engineers who write and deploy code – our designers and product managers regularly do too. And now any Etsy employee can sign up for an “engineering rotation” to get a crash course in how Etsy codes, and ultimately work with an engineer to write and deploy the code that adds their photo to our about page. In the past year, 70 employees have completed engineering rotations. Our engineers have been pushing on day one for a while now, but it took a bit more work to get non-coders prepared to push as soon as their second week. In this post I’ll explain why we started engineering rotations and what an entire rotation entails.

## Big Data

[Bigdata Analytics and Supply chain management](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:241560)
: I am a newbie to Bigdata and would like to highlight some significant advantages if incorporated in a company's supply-chain management strategies, expecting the reader's views and suggestions.  
Because, in recent past I have developed a online supply-chain management systems in which sellers and customers are matched using an algorithm. It acted as a decision support system and I needed to dig deeper on the available data to get more insights over the data pattern (even for evaluating its correctness).

[The Cognitive Cost of Switching Technology Stacks](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:241115)
: Cognitive load is a term applied to the overall effort used in working memory for an individual performing a task. Faced with any technology choice, we tend to concoct an approximation in our minds of the cost of effort, compared to the benefit of change.  The cost that has been on my mind recently – is that of cognitive load. Even thinking about the irony of that statement adds to my cognitive load.

[Lambda Architecture for Big Data](https://tsicilian.wordpress.com/2015/01/05/lambda-architecture-for-big-data/)
: An increasing number of systems are being built to handle the Volume, Velocity and Variety of Big Data, and hopefully help gain new insights and make better business decisions. Here, we will look at ways to deal with Big Data’s Volume and Velocity simultaneously, within a single architecture solution.

### Machine learning

[The future of machine learning at Pinterest](http://engineering.pinterest.com/post/108743949829)
: One of the key ways we provide relevant and scalable solutions is through building distributed systems using machine learning. To accelerate our work in discovery and monetization, today we’re announcing the acquisition of Kosei, which includes some of the best minds in machine learning and data science.

### Hadoop

[New in Cloudera Labs: Google Cloud Dataflow on Apache Spark](http://blog.cloudera.com/blog/2015/01/new-in-cloudera-labs-google-cloud-dataflow-on-apache-spark/)
: For the past decade, a lot of the future has been concentrated at Google’s headquarters in Mountain View. Because of the scale of its operations, Google usually bumped up against the limitations of the current state-of-the-art before anyone else, and was required to come up with its own solutions to the problems it encountered. From time to time, it would publish its solutions, either in the form of open source software projects like Guava or protocol buffers, or as research papers that would challenge and inspire the broader academic and open source communities. Open source projects like Apache Hadoop, Apache HBase, and Apache Parquet (incubating) were all inspired by research papers that Google published about their internal data management systems.

[How-to: Deploy Apache Hadoop Clusters Like a Boss](http://blog.cloudera.com/blog/2015/01/how-to-deploy-apache-hadoop-clusters-like-a-boss/)
: Learn how to set up a Hadoop cluster in a way that maximizes successful production-ization of Hadoop and minimizes ongoing, long-term adjustments.  
Previously, we published some recommendations on selecting new hardware for Apache Hadoop deployments. That post covered some important ideas regarding cluster planning and deployment such as workload profiling and general recommendations for CPU, disk, and memory allocations. In this post, we’ll provide some best practices and guidelines for the next part of the implementation process: configuring the machines once they arrive. Between the two posts, you’ll have a great head start toward production-izing Hadoop.

[Introducing statsd-jvm-profiler: A JVM Profiler for Hadoop](https://codeascraft.com/2015/01/14/introducing-statsd-jvm-profiler-a-jvm-profiler-for-hadoop/)
: At Etsy we run thousands of Hadoop jobs over hundreds of terabytes of data every day.  When operating at this scale optimizing jobs is vital: we need to make sure that users get the results they need quickly, while also ensuring we use our cluster’s resources efficiently.  Actually doing that optimizing is the hard part, however.  To make accurate decisions you need measurements, and so we have created statsd-jvm-profiler: a JVM profiler that sends the profiling data to StatsD.

### DataViz

[How the JavaScript Heatmap Implementation Works ](http://acuriousanimal.com/blog/2014/12/23/how-the-javascript-heatmap-implementation-works/)
: A heatmap is a powerful way to visualize data. Given a matrix of data each value is represented by a color. The implementation of the heatmap algorithm is expensive in computation terms: for each grid’s pixel you need to compute its color from a set of known values. As you could imagine, it is not feasible to implement it on the client side because map rendering would be really slow.

### Analytics

[Assorted links](https://www.chrisstucchio.com/blog/2015/assorted_links_jan_05_2015.html)
: Archiset - a wonderful set of architectural and movie illustrations. Actually look at nearly everything by Federico Babina.

[One tailed vs two tailed A/B tests - your decision procedure is the deciding factor](https://www.chrisstucchio.com/blog/2015/one_tailed_and_two_tailed_tests.html)
: Over the past year or so, there have been a number of articles discussing the use of one tailed vs two tailed A/B tests. For example, How Optimizely (Almost) Got Me Fired. The use of a one or two tailed test is an important issue. What every analysis I've read fails to understand is that the issue cannot be decided at the level of statustics alone - it needs to be decided from within the context of a decision procedure.

[Probabilistic Techniques, Data Streams and Online Learning](http://java.dzone.com/articles/probabilistic-techniques-data)
:  I look forward to 2015 as the year when randomized algorithms, probabilistic techniques and data structures become more pervasive and mainstream. The primary driving factors for this will be more and more prevalence of big data and the necessity to process them in near real time using minimal (or constant) memory bandwidth. You are given data streams where possibly you will see every data only once in your lifetime and you need to churn out analytics from them in real time. You cannot afford to store all of them in a database on disk since it will incur an unrealistic performance penalty to serve queries in real time. And you cannot afford to store all information in memory even if you add RAM at your own will. You need to find clever ways to optimize your storage, employ algorithms and data structures that use sublinear space and yet deliver information in real time.

[The Changing Nature of Predictive Analytics in the Enterprise](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:240470)
: Today, an increasing number of institutional clients are looking for solutions, strategies and roadmaps to implement Big Data and Predictive Analytics initiatives within their own organizations. While the exact nature of the solutions and recommendations may differ from client to client, based on a number of factors, like the industry they operate in, the size of their operations and business model, there are common threads that can be applied to their needs.

[Why Topological Data Analysis Works](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:239312)
: Topological data analysis has been very successful in discovering information in many large and complex data sets. In this post, I would like to discuss the reasons why it is an effective methodology.  
One of the key messages around topological data analysis is that data has shape and the shape matters. Although it may appear to be a new message, in fact it describes something very familiar.

[Personalized Recommendations at Etsy](https://codeascraft.com/2014/11/17/personalized-recommendations-at-etsy/)
: Providing personalized recommendations is important to our online marketplace.  It benefits both buyers and sellers: buyers are shown interesting products that they might not have found on their own, and products get more exposure beyond the seller’s own marketing efforts.  In this post we review some of the methods we use for making recommendations at Etsy.  The MapReduce implementations of all these methods are now included in our open-source machine learning package “Conjecture” which was described in a previous post.

## Databases

[Introducing Espresso - LinkedIn's hot new distributed document store](http://engineering.linkedin.com/espresso/introducing-espresso-linkedins-hot-new-distributed-document-store)
:  Espresso is LinkedIn's online, distributed, fault-tolerant NoSQL database that currently powers approximately 30 LinkedIn applications including Member Profile, InMail (LinkedIn's member-to-member messaging system), portions of the Homepage and mobile applications, etc. Espresso has a large production footprint at LinkedIn with over a dozen clusters in use. It hosts some of the most heavily accessed and valuable datasets at LinkedIn serving millions of records per second at peak. It is the source of truth for hundreds of terabytes (not counting replicas) of data. 

### Cassandra

[Kindling: An Introduction to Spark with Cassandra (Part 1)](http://planetcassandra.org/blog/kindling-an-introduction-to-spark-with-cassandra/)
:  Erich is the CTO for SimpleRelevance a company which does dynamic content personalization using all the tools of data science.  Before joining SimpleRelevance, Erich spent many years working on scalable distributed architectures.  In college, he focused on mathematics and computer graphics.  To this day, he still loves studying and talking about mathematics and is currently having a lot of fun with category theory and the functional languages F# and Clojure.

### ElasticSearch

[Intro to Aggregations pt. 2: Sub-Aggregations](http://www.elasticsearch.org/blog/intro-to-aggregations-pt-2-sub-aggregations/)
: Welcome Back! Last time on Intro to Aggregations, we explored the basic concepts of aggregations and how to start using them. We toyed with simple bucket and metric aggregations, which gave us simple analytics.  
Today, we are going to learn about sub-aggregations. The most powerful feature of aggregations in Elasticsearch is the ability to embed aggregations (both buckets and metrics) inside…wait for it…other aggregations. Sub-aggregations allow you to continuously refine and separate groups of criteria of interest, then apply metrics at various levels in the aggregation hierarchy to generate your report.

[Scaling TrackJS with Elasticsearch for Fun and Profit](http://www.elasticsearch.org/blog/scaling-trackjs-with-elasticsearch-for-fun-and-profit/)
: JavaScript errors are not great, and rarely do they provide you with enough information to identify what went wrong. TrackJS, a JavaScript error reporting service for modern web applications, helps solve this problem. Similar to an airplane’s black box, TrackJS captures events from the application, user, and network leading up to the error, so you can recreate and fix the problem. If you’re building a JavaScript app, this is an essential tool.

### MySQL

[Identifying useful info from MySQL row-based binary logs](http://www.percona.com/blog/2015/01/20/identifying-useful-information-mysql-row-based-binary-logs/)
: As a MySQL DBA/consultant, it is part of my job to decode the MySQL binary logs – and there are a number of reasons for doing that. In this post, I’ll explain how you can get the important information about your write workload using MySQL row-based binary logs and a simple awk script.

[Importing big tables with large indexes with Myloader](http://www.percona.com/blog/2015/01/20/importing-big-tables-large-indexes-myloader/)
: Mydumper is known as the mysqldump but faster, much faster. So, if you take logical backup you will choose Mydumper instead of mysqldump. But what about the restore? Well, who needs to restore a logical backup? It takes ages! Even with Myloader. But, this could change just a bit if we are able to take advantage of Fast Index Creation.

[Looking deeper into InnoDB’s problem with many row versions](http://www.percona.com/blog/2015/01/19/looking-deeper-innodbs-problem-many-row-versions/)
: A few days ago I wrote about MySQL performance implications of InnoDB isolation modes and I touched briefly upon the bizarre performance regression I found with InnoDB handling a large amount of versions for a single row. Today I wanted to look a bit deeper into the problem, which I also filed as a bug.  
First I validated in which conditions the problem happens. It seems to happen only in `REPEATABLE-READ` isolation mode and only in case there is some hot rows which get many row versions during a benchmark run. For example the problem does NOT happen if I run sysbench with “uniform” distribution.

[Everything You Need to Know About Scaling MySQL – Part 3: Your Options](http://blog.clustrix.com/2015/01/20/everything-need-know-scaling-mysql-part-3-options/)
: It’s safe to say that 20 years ago, when MySQL was developed, programmers working on the project likely were unable to predict the extremely pervasive nature of today’s Internet. As such, the open source relational database management system was built with severe limitations—though, at that time, those limitations were merely theoretical.

[Everything You Need to Know About Scaling MySQL - Part 2](http://blog.clustrix.com/2015/01/13/everything-need-know-scaling-mysql-part-2-difficulties/)
: If you have an e-commerce website and haven’t done anything to the database that powers it in recent memory, you’re most likely running MySQL, a database which traces its roots back to 1995. After all, the term “NewSQL” didn’t become a part of the digital lexicon until Matt Aslett, an analyst for the 451 Group, coined it in 2011.

[Impacts of `max_allowed_packet size` problems on your MySQL database](http://www.fromdual.com/impacts-of-max_allowed_packet-size-problems-on-your-mysql-database)
: We recently run into some troubles with `max_allowed_packet` size problems during backups with the FromDual Backup/Recovery Manager and thus I investigated a bit more in the symptoms of such problems.

[Getting Mutex Information from MySQL's `performance_schema` ](http://www.percona.com/blog/2015/01/06/getting-mutex-information-from-mysqls-performance_schema/)
: We have been using the `SHOW ENGINE INNODB MUTEX` command for years. It shows us mutex and rw-lock information that could be useful during service troubleshooting in case of performance problems. As Morgan Tocker announced in his blog post the command will be removed from MySQL 5.7 and we have to use `performance_schema` to get that info.

### MariaDB

[Streaming MariaDB backups in the cloud](https://mariadb.com/blog/streaming-mariadb-backups-cloud)
: If you are a DBA or system administrator, you should already be familiar with Percona Xtrabackup, the free hot backup tool for MariaDB and MySQL, and you probably use it to take onsite backups of your production databases.  
But what if the backup server is inaccessible because of an outage, or the data has been corrupted? Offsite backups should also be part of a complete disaster recovery strategy.

[Advanced MariaDB monitoring with Nagios](https://mariadb.com/blog/advanced-mariadb-monitoring-nagios)
: Nagios, one of the most popular hardware, network, and application monitoring tools, can also handle advanced MariaDB monitoring. With Nagios you can monitor the MariaDB server and its performance, as well as individual MariaDB databases and the information in them.  
For this article I used the free Nagios Core, but the procedures I describe should be similar for the commercial version of Nagios and for Nagios derivatives such as Shinken.

[Devops with MariaDB, Part 1](https://mariadb.com/blog/devops-mariadb-part-1)
: This new blog series will be about how to easily automate common MariaDB administration tasks using Ansible. We will showcase how to automatically install and configure software such as MariaDB server, MariaDB Galera and MaxScale with ease in reproducible environments.

## System

[Convert Your Bash Scripts With chef apply](https://www.chef.io/blog/2015/01/16/convert-your-bash-scripts-with-chef-apply/)
: Chef is a mighty set of tools that can automate and verify your infrastructure, but its full power is a lot to digest. Most of us learn new tools by trying them out for an hour or two, and that’s usually how we make a decision. Today I want to show how you can get real value out of Chef real fast, maybe on a Friday afternoon with a couple of hours set aside for experimenting, by replacing a shell script with a list of Chef declarations.

[Learning systemd](https://ma.ttias.be/learning-systemd/)
: Systemd is coming a linux distro near you.  
In fact, if you're using RHEL 7+, CentOS 7+, Fedora 15+ or Arch, you're already using systemd. You can always stick to a distribution that stays clear of systemd, but chances are you'll eventually run into systemd -- so we may as well learn to get along with it.

### Chef

[Quick Tip: Define Resources to Notifiy in LWRPs](http://jtimberman.housepub.org/blog/2015/01/17/quick-tip-define-resources-to-notifiy-in-lwrps/)
: In this quick tip, I’ll explain why you may need to create resources to notify in a provider, even if the resource exists in a recipe, when using `use_inline_resources` in Chef’s LWRP DSL.  
I’ll use an example cookbook, notif, to illustrate. First, I’ve created `cookbooks/notif/resources/default.rb`, with the following content.
