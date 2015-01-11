---
layout: post
title: "Compilation veille Twitter & RSS"
category: veille
---

La moisson de liens pour les semaine du 3 au 7 novembre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Big Data

[Start with Good Science on Good Data, Then we'll Talk 'Big Data'](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:220775)
: We are currently witnessing a land rush of investment in Big Data architectures promising companies that they can turn their data into gold using the latest in distributed computing and advanced analytical methods. Although there is indeed much potential in applying machine learning and statistical analysis to largedatasets, many companies are hardly sitting on the kind of data that will allow them to compete using hundreds of machines chugging through terabytes of data.

#### Hadoop

[NoSQL in a Hadoop World](http://blog.cloudera.com/blog/2014/11/nosql-in-a-hadoop-world-2/)
: Ah, the good old days. I recall vividly that in 2007, I was faced to store 1 billion XML documents and make them accessible as well as searchable. I had few choices on a given shoestring budget: build something one my own (it was the rage back then—and still is), use an existing open source database like PostgreSQL or MySQL, or try this thing that Google built successfully and that was now implemented in open source under the Apache umbrella: Hadoop.

[Pig on Spark: Video + slides from Mayur Rustagi's talk](http://blog.mortardata.com/post/101947952581)
:  During the recent Strata + Hadoop World conference in New York, we hosted a meetup of the NYC Pig User Group. Among the data-minded folks in town for the week was Sigmoid Analytics co-founder Mayur Rustagi, who gave a talk updating the group on the Pig-on-Spark initiative.

[Flafka: Apache Flume Meets Apache Kafka for Event Processing](http://blog.cloudera.com/blog/2014/11/flafka-apache-flume-meets-apache-kafka-for-event-processing/)
: In this previous post you learned some Apache Kafka basics and explored a scenario for using Kafka in an online application. This post takes you a step further and highlights the integration of Kafka with Apache Hadoop, demonstrating both a basic ingestion capability as well as how different open-source components can be easily combined to create a near-real time stream processing workflow using Kafka, Apache Flume, and Hadoop. (Kafka integration with CDH is currently incubating in Cloudera Labs.)

#### Analytics

[Choosing a classifier for predictions](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:221152)
: One of the biggest decisions that a data scientist need to make during a predictive modeling exercise is to choose the right classifier.There is no best classifier for all problems. The accuracy of the classifier varies based on the data set. Correlation between the predictor variables and the outcome is a key influencer. The choice need to be made based on experimentation. There are two main selection criteria here.

[Social Influence Analysis](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:221197)
: Realizing existence of, following or being part of networks of brightest thought leaders is not all about to just node-edge relationship in social network terminology. It is about hearing their thoughts, expectations or vision on, for me, technology. The key challenge, though, is how to unveil brightest thought leaders in vast social world.

#### DataViz

[Charts on Grids – Responsive Dashboard Templates with Bootstrap](http://keenio.tumblr.com/post/101269629091)
: Building a dashboard for your customers? Need a quick and easy way to share stuff with your team? Check out the new keen/dashboards on Github and get up and running super quick with great-looking, customizable dashboard templates.

[Kids, always remember to clear your intervals](http://swizec.com/blog/kids-always-remember-to-clear-your-intervals/swizec/6614)
: Making fake demo graphs is always fun. Here you are, making a graph without data, generating random datapoints, trying to make it as realistic as possible.  
Two days ago I was failing at the same.

### Virtualization

#### Docker

[Microservices in Microcontainers with Docker](http://architects.dzone.com/articles/microservices-microcontainers)
: After first using fat Docker containers to build PAAS like capabilities (http://www.slideshare.net/IlkkaAnttonen/open-slava-2014ilkkaanttonen) I have now switched my thinking towards simpler containers. The size of the core-container crept to over a gigabyte whereas microcontainers can be kept very small, in the megabytes or tens of megabytes range instead of hundreds of megabytes.

[Docker Global Hack Day](http://blog.loof.fr/2014/11/docker-global-hack-day.html)
: Rennes edition for local hack day was not what I expected it to be as we didn't actually hacked much during the evening meeting, but during the week-end, remotely from home, with my colleague Yoann.

[Docker Joins Dell’s Multi-Cloud Roadmap](https://blog.docker.com/2014/11/docker-joins-dells-multi-cloud-roadmap/)
: Today, Dell took another stride forward with its multi-cloud roadmap by launching the Dell Cloud Marketplace beta program, which includes key industry alliances with Docker, Delphix and Pertino. The Dell Cloud Marketplace provides developers and IT managers with the ability to compare, purchase, use and manage public cloud services from a range of vendors, including Amazon Web Services, Google Cloud Platform and Joyent. This can be achieved through a single, unified console on Dell.com.

[Dockerized by Marianna Tessel SVP Engineering](https://blog.docker.com/2014/11/dockerized-by-marianna-tessel-svp-engineering/)
: I am incredibly excited to be spending my first week here at Docker!  The shift from a big more established company back to the start-up world was a key element in my job exploration.  What drew me specifically to this thrilling opportunity at Docker is something that I wanted to share especially for those of you who are perhaps also looking to be a part of the great things that are happening in tech.

### Databases

[Using REST with the CQRS Pattern to Blend NoSQL & SQL Data](http://www.espressologic.com/implementing-cqrs-pattern-sql-nosql-world/)
: New demands are being put on IT organizations everyday to deliver agile, high-performance, integrated mobile and web applications. In the meantime, the technology landscape is getting complex everyday with the advent of new technologies like REST, NoSQL, Cloud while existing technologies like SOAP and SQL still rule everyday work. Rather than taking religious side of the debate, NoSQL can successfully co-exist with SQL in this ‘polyglot’ of data storage and formats.  However, this integration also adds another layer of complexity both in architecture and implementation.  This document offers a guide on how some of the relatively newer technologies like REST can help bridge the gap between SQL and NoSQL with an example of a well known pattern called CQRS. This document is organized as follows:

[The Role of the DBA in NoSQL](http://blog.mongodirector.com/the-role-of-the-dba-in-nosql/)
: What is the role of the DBA in the rapidly evolving world of NoSQL? A majority of the early NoSQL adoption is in the fast growing world of small and medium companies based on public clouds.  In most of these companies the DBA role does not exist and this has led a lot of people to proclaim the end of the DBA.  Is the DBA going down the road of the dinosaur? I think the answer is more nuanced than that. Firstly lets examine a few trends we are seeing in the marketplace that are going to have a great downstream impact on the technology workplace.

#### Cassandra

[Cassandra Summit 2014: Building Personalization Apps on Cassandra](http://planetcassandra.org/blog/cassandra-summit-2014-building-personalization-apps-on-cassandra/)
: Earlier this year, WibiData announced our partnership with DataStax to integrate our modular, open-source, Apache 2.0-licensed framework Kiji with Cassandra. At Cassandra Summit, I talked about how Kiji lets Cassandra developers build real-time big data applications like product and music recommenders or personalized search engines.

#### ElasticSearch

[Shield: You Know, For Security (Coming Soon)](http://www.elasticsearch.org/blog/shield-know-security-coming-soon/)
: Since the early days of Elasticsearch, one could secure Elasticsearch using external systems. For example, since Elasticsearch APIs are exposed through REST over HTTP, users secure it using proxies or firewalls.

[Elasticsearch 1.4.0 and 1.3.5 released](http://www.elasticsearch.org/blog/elasticsearch-1-4-0-released/)
: Today, we are happy to announce the release of Elasticsearch 1.4.0, based on Lucene 4.10.2, and of bug fix release Elasticsearch 1.3.5.

#### MySQL

[Inside Distributed Architectures: Seeing In-Flight Requests And Blockers in Realtime](https://vividcortex.com/blog/2014/11/06/inside-distributed-architecture/)
: VividCortex’s SaaS backend is a service-oriented architecture, which means that in addition to our external APIs that our agents and web UI use, we also have internal APIs. Deploy a bunch of API servers across a cluster of machines, hook everything up and make all the parts talk to each other, and what do you have? You have a distributed system that’s hard to troubleshoot, that’s what.

[Resizing the InnoDB Buffer Pool Online](http://mysqlserverteam.com/resizing-buffer-pool-online/)
: As described in the MySQL 5.7 manual here, we can now resize the buffer pool without restarting the mysqld process starting with MySQL 5.7.5.

[MySQL Query Performance Statistics In The Performance Schema](https://vividcortex.com/blog/2014/11/03/mysql-query-performance-statistics-in-the-performance-schema/)
: We’ve recently added the ability to monitor MySQL query performance statistics from MySQL’s `PERFORMANCE_SCHEMA`, and there were a number of lessons learned. There are definitely right and wrong ways to do it. If you are looking to the `P_S` tables for monitoring MySQL query performance, this blog post might save you some time and mistakes.

[Data inconsistencies on MySQL replicas: Beyond pt-table-checksum](http://www.percona.com/blog/2014/11/04/data-inconsistencies-on-mysql-replicas-beyond-pt-table-checksum/)
: Percona Toolkit’s pt-table-checksum is a great tool to find data inconsistencies between a MySQL master and its replicas. However it is sometimes not enough to know that there are inconsistencies and let pt-table-sync fix the issue: you may want to know which exact rows are different to identify the statements that created the inconsistency. This post shows one way to achieve that goal.

[What’s New in MySQL 5.7? (So Far)](http://mysqlserverteam.com/whats-new-in-mysql-5-7-so-far/)
: We recently announced our 5.7.5 Milestone Release, yet another milestone on our road to 5.7 GA. The purpose of our milestone releases is to get community feedback and to ensure high quality on 5.7 from day one. This blog post gives the reader a high level view on 5.7 so far, while also attempting to demonstrate where we are heading as many of the individual pieces make much more sense when you can see the bigger picture. You might further drill into the series of milestone blog posts (5.7.1, 5.7.2, 5.7.3, 5.7.4, 5.7.5) and even further down to the individual worklogs with their specifications and implementation details. Or perhaps you prefer to just look at the source code at github.com/mysql.

#### Redis

[Redis latency spikes and the Linux kernel: a few more details](http://antirez.com/news/84)
:  Today I was testing Redis latency using m3.medium EC2 instances. I was able to replicate the usual latency spikes during BGSAVE, when the process forks, and the child starts saving the dataset on disk. However something was not as expected. The spike did not happened because of disk I/O, nor during the fork() call itself. 

### Architecture

[Tunable Triggers for Automatic Horizontal Scaling](http://blog.jelastic.com/2014/11/06/tunable-triggers-automatic-horizontal-scaling/)
: In our recent publication, we shared our outstanding new Jelastic Multi Nodes feature, which allows you to manually scale all the middleware stacks in your environment, providing numerous possibilities for increasing your application’s performance and reliability.  
Today we’d like to pay special attention to the application server scaling as it can be performed automatically based on resource consumption. The key role of an app server is to handle the incoming requests, therefore, it’s important to increase and decrease the amount of its instances during the time when the load is changing.

[The Modern API](http://java.dzone.com/articles/modern-api)
: The concept of the API is as old as programming itself. Documents defining a series of methods, or services with a given input and output are ubiquitous in programming. Today, APIs are the defining mechanism for interacting with services on the web: whether you’re logging in to Google, tweeting on Twitter, finding Facebook friends, this can all be done through the services that are defined in their respective APIs. How is it that these and other APIs come to be? How is it that services can be altered, updated, or removed altogether? At DataXu there was much discussion about how to best implement our API, and at PlanIt I took some of the results of those discussions and implemented them in the form of a RESTful API written in Ruby on Rails.

[Post Mortem: The One Where We Accidentally DDOSed Ourselves](http://keenio.tumblr.com/post/101427090951)
: An old boss of mine had a phrase he used whenever shit hit the fan. You know, those special and sometimes amazing circumstances that inevitably happen when you’re trying to run a bunch of computers toward a common goal. He was fond of saying: “opportunities arise”.  
This summer at Keen IO, we a had a series of postmortem-worthy “opportunities” that threatened everything we hold near and dear: the stability of our platform, the trust of our customers, and the sanity of our team. Please allow us to tell you about them in cathartic detail.

[The Top 5 Things You are Doing Today to Hinder Scalability](http://feeds.dzone.com/~r/zones/architects/~3/Q552mPRJCrc/top-5-things-you-are-doing)
: At the CFSummit 2014, I presented on The Top 5 Things You are Doing Today to Hinder Scalability.

[Introducing Dynomite - Making non distributed databases, distributed](http://techblog.netflix.com/2014/11/introducing-dynomite.html)
: Netflix has long been a proponent of the microservices model. This model offers higher-availability, resiliency to failure and loose coupling. The downside to such an architecture is the potential for a latent user experience. Every time a customer loads up a homepage or starts to stream a movie, there are a number of microservices involved to complete that request. Most of these microservices use some kind of stateful system to store and serve data. A few milliseconds here and there can add up quickly and result in a multi-second response time.

[4 Ways to Ensure Continuous Delivery Helps, Not Hurts](https://blog.logentries.com/2014/11/4-ways-to-ensure-continuous-delivery-helps-not-hurts/)
: Customer demands aren’t the only thing pushing development and operations teams into more frequent software releases. It is also need for quicker feedback on product quality, the desire to reduce bottlenecks in operations teams, and the goal to utilize less overhead on projects.

### Analytics

[Prediction intervals too narrow](http://robjhyndman.com/hyndsight/narrow-pi/)
: Almost all pre­dic­tion inter­vals from time series mod­els are too nar­row. This is a well-known phe­nom­e­non and arises because they do not account for all sources of uncer­tainty. In my 2002 IJF paper, we mea­sured the size of the prob­lem by com­put­ing the actual cov­er­age per­cent­age of the pre­dic­tion inter­vals on hold-out sam­ples. We found that for ETS mod­els, nom­i­nal 95% inter­vals may only pro­vide cov­er­age between 71% and 87%. The dif­fer­ence is due to miss­ing sources of uncertainty.

[7 tips to overcome your analytics learning hurdles today](http://www.analyticsvidhya.com/blog/2014/11/7-tips-overcome-analytics-learning-hurdles-today/)
: I have been writing and answering queries on career transition into analytics for more than 18 months now. While this experience has been very fulfilling, I still feel that there is a gap between what I tell people and what they implement.

### Network

[Network Engineers, Pay Attention to Big Data](http://www.plexxi.com/2014/10/network-engineers-pay-attention-big-data/)
: You have probably realized we are having a Big Data kind of week here at the Plexxi blog. And for good reason. The amount of development and change in this big bucket of applications we conveniently label “Big Data”, is astonishing.

[RFC 7368: IPv6 Home Networking Architecture Principles](http://www.bortzmeyer.org/7368.html) (French only)
: Le projet Homenet de l'IETF est très ambitieux. Il s'agit de définir une architecture et des protocoles pour des réseaux IPv6 à la maison. Non seulement tout doit marcher « tout seul » (on ne peut pas demander à M. Michu de lire le RFC, ou même la documentation) mais en outre le groupe de travail Homenet prévoit deux innovations principales par rapport aux réseaux IPv4 des maisons actuelles : un inter-réseau à la maison (plusieurs réseaux séparés par des routeurs) et pas de NAT, la plaie des communications actuelles. Ce premier RFC du groupe de travail Homenet décrit l'architecture générale envisagée.

[Traffic Optimizer: The Power of Negatives](http://techblog.netflix.com/2014/11/traffic-optimizer-power-of-negatives.html)
: Search marketing is an area of vast possibility and vast potential where there are hundreds of different ways to do similar things. Global sites like Netflix serve millions of different search ads to people all over the world each day. We try to optimize this traffic to make sure that the right ads are served to the right people. 

### Dev

[What Is JSON? An Introductory Guide](https://blog.logentries.com/2014/11/what-is-json-an-introductory-guide/)
: Some days it’s hard to remember if Moore’s law applies to increasing computer power or the number of technologies and breadth of terminology impacting our daily work.  
JSON, short for JavaScript Object Notation, continues to gain momentum in our increasingly connected world. Reading this primer will give you a baseline understanding so you can start having intelligent conversations about the pros and cons of using JSON with your team.

#### Front

[Which CSS Preprocessor Should You Choose?](https://blog.logentries.com/2014/10/which-css-preprocessor-should-you-choose/)
: With the growing number of CSS Preprocessors like LESS, Sass, Turbine, Stylus and Swith CSS to name a few, it’s hard to decide which to choose for your project, and which will provide the best CSS authoring.

[REM Sass Mixin With Pixel Fallback](http://www.paulund.co.uk/rem-sass-mixin-pixel-fallback)
: The REM CSS unit is similar to the EM CSS unit except it allows you to size elements relative to the root of the HTML tag, as it stands for Root EM. The EM unit is relative to the font-size of the parent, which can cause problems in working out the correct size to use in descendent elements.

### DNS

[DNSSEC: Complexities and Considerations](http://blog.cloudflare.com/dnssec-complexities-and-considerations/)
: DNSSEC is an extension to DNS: it provides a system of trust for DNS records. It’s a major change to one of the core components of the Internet. In this post we examine some of the complications of DNSSEC, and what CloudFlare plans to do to reduce any negative impact they might have. The main issues are zone content exposure, key management, and the impact on DNS reflection/amplification attacks.

### SEO

[Crawl Speed: How Many Pages/Second? 7 Points to Take Into Account](https://www.botify.com/blog/crawler-impact-performance/)
: You are about to start a crawl on your website. Where should you place the cursor, for the number of pages per second?  
The Botify crawler can go up to 100 p/s. Soon, it will go even faster. What's the maximum crawl speed your site will tolerate without degrading performance for users?  
Confident users will say “ No problem, we can crawl at 10 pages per second, or even 20! Considering the number of concurrent users our Web server can serve, no worries!”.
