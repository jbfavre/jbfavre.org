---
layout: post
title: "Compilation veille Twitter & RSS"
category: veille
---

La moisson de liens pour les semaine du 6 au 10 octobre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Varnish

[How To Configure Varnish Cache 4.0 with SSL Termination on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-configure-varnish-cache-4-0-with-ssl-termination-on-ubuntu-14-04)
: In this tutorial, we will cover how to use Varnish Cache 4.0 to improve the performance of your existing web server. We will also show you a way to add HTTPS support to Varnish, with Nginx performing the SSL termination. We will assume that you already have a web application server set up, and we will use a generic LAMP (Linux, Apache, MySQL, PHP) server as our starting point.

[Blog for a Sysadmin - Monitoring Health in Varnish Cache](https://www.varnish-software.com/blog/blog-sysadmin-monitoring-health-varnish-cache)
: At Varnish Software, we like to share tips and tricks and ensure our knowledge is being shared with our readers. In what I hope will become a series under the guise of 'Blog for a Sysadmin', I'd like to take you through the essentials of maintaining your Varnish Cache setup. First up—Monitoring your Varnish Cache setup.

### Redis

[Redis Developers Day, October 2nd 2014, London](https://redislabs.com/blog/redis-developers-day-october-2nd-2014-london)
: A month or so ago antirez had tweeted about putting together this awesome event. I immediately let the Redis Labs team know that we were going on a field trip, so they should get their passports in order. Then the waiting began – 28 days that seemed to go at the speed of a multi-join poorly-indexed SQL query.

[Redesigning Our DNS Database for Low Latency](http://labs.opendns.com/2014/10/01/redesigning-dns-database-low-latency/)
: 2 years ago, when we started studying how DNS records could be used to discover malicious activity, we needed a way to quickly access current and historical data.  
3rd party solutions were too slow and too limited to implement Kopis, the very first model we wanted to try.  
The logs collected by the resolvers were already copied to HDFS for long-term storage, so a simple way to quickly retrieve records based on a DNS name or associated data was to store additional copies in HBase.  
The system turned out to be still too slow to automatically label new domains, but it was good enough to compute an informative reputation score for a specific domain when a user requested it. Thus, the “Security Graph” was born.

### Couchbase

[The next generation storage engine for Couchbase Server and Couchbase Lite: ForestDB. Now available in Beta!](http://blog.couchbase.com/next-generation-storage-engine-couchbase-server-and-couchbase-lite-forestdb-now-available-beta)
: ForestDB project is an open source embeded key/value storage engine with great performance and space efficiency. The project started implementation a year ago. The main objective was to address the main drawbacks of typical B+-Tree index structure and push disk IO performance to the next level.

[Announcing new version of Couchbase Plug-in for ElasticSearch - 2.0](http://blog.couchbase.com/announcing-new-version-couchbase-plug-elasticsearch-20-0)
: I am happy to announce the major update to our Couchbase Plug-in for ElasticSearch. Plug-in is now updated to work with latest release of Couchbase Server 3.0 and Elasticsearch 1.3.0. Also, plug-in is backward compatible with previous version of Couchbase Server 2.5.x.

[Announcing the release of Couchbase Server 3.0](http://blog.couchbase.com/announcing-release-couchbase-server-30-0)
: I am thrilled to announce the availability of this major release. Couchbase Server 3.0 is a monumental release in the company’s history. With this release we have further strengthened our core architecture, which is amplified through new features we’re releasing in 3.0.

[All-new with 3.0: 4x faster XDCR latency in Couchbase Server! Here is how we did it...](http://blog.couchbase.com/all-new-30-4x-faster-xdcr-latency-couchbase-server-here-how-we-did-it)
: With Couchbase Server 3.0, we have introduced a great new protocol for data synchronization named DCP (database change protocol). DCP powers many facilities within Couchbase Server including maintaining replicas, rebalance, node recovery, back-ups, indexing all the way to XDCR replication. It essentially sits at the heart of our architecture and pumps blood to the rest of the body.

### PHP

[HHVM : Mode « turbo boost on » pour vos applications PHP ? (French)](https://wooster.checkmy.ws/2014/10/hhvm-nginx-wordpress/)
: Ce projet développé par facebook pour ses besoins internes est comptatible avec la majorité des frameworks PHP qui comptent dans le monde libre.  
Alléchant non ? Quel gain peut-on espérer au niveau performance ? L’installation de Wordpress va t’elle continuer à fonctionner correctement ? Pour cela, rien de tel qu’un petit banc de test.

[Using the Google Analytics API v3 with PHP: Fetching Data](http://www.sitepoint.com/using-google-analytics-api-v3-php-fetching-data/)
: In the first part of our series, we introduced the Google Analytics API, including the basic usage. In this part, we will continue creating our demo and see how we can extend it with more functionality.

### Big data

[The Seven Most Popular APIs in Big Data – Part 1](http://natishalom.typepad.com/nati_shaloms_blog/2014/10/the-seven-most-popular-apis-in-big-data-part-1.html)
: It was only a few years ago when nearly everyone relied on SQL exclusively to tackle Big Data needs, but as the demand for speed and space increases, so have our options. Now there are a number of new data systems that are mostly based around NoSQL, with each of them having been developed to best serve specific areas.  
In this post, we'll be taking a look at seven APIs in particular and explore how these systems can be optimized for maximum speed and memory capabilities.

[The Seven Most Popular APIs in Big Data – Part 2](http://feedproxy.google.com/~r/NatiShalom/~3/8MmwufRhhCo/the-seven-most-popular-apis-in-big-data-part-2.html)
: In “The Seven Most Popular APIs in Big Data—Part One,” I described the various forms of popular data management APIs out there and how they’re often used. As I noted toward the end of the post, currently each of the APIs is often tied with a specific data model and data store and is used by different APIs that serve other use cases.  
One of the main reasons behind this is that each API represents a specific optimization that requires a fairly different data structure. Common to all of the various techniques however is that they were written under the assumption that disk is a bottleneck. That led to various point optimizations, architecture, and algorithms that are used by each of the APIs to bypass the disk bottleneck.

[Using Impala, Amazon EMR, and Tableau to Analyze and Visualize Data](http://blog.cloudera.com/blog/2014/10/using-impala-amazon-emr-and-tableau-to-analyze-and-visualize-data/)
: Apache Hadoop provides a great ecosystem of tools for extracting value from data in various formats and sizes. Originally focused on large-batch processing with tools like MapReduce, Apache Pig, and Apache Hive, Hadoop now provides many tools for running interactive queries on your data, such as Impala, Drill, and Presto. This post shows you how to use Amazon Elastic MapReduce (Amazon EMR) to analyze a data set available on Amazon Simple Storage Service (Amazon S3) and then use Tableau with Impala to visualize the data.

### Analytics

[Introduction to k-nearest neighbors : Simplified](http://www.analyticsvidhya.com/blog/2014/10/introduction-k-neighbours-algorithm-clustering/)
: In four years of my career into analytics I have built more than 80% of classification models and just 15-20% regression models. These ratios can be more or less generalized throughout the industry. The reason of a bias towards classification models is that most analytical problem involves making a decision. For instance will a customer attrite or not, should we target customer X for digital campaigns, whether customer has a high potential or not etc. These analysis are more insightful and directly links to an implementation roadmap. In this article, we will talk about another widely used classification technique called K-nearest neighbors (KNN) . Our focus will be primarily on how does the algorithm work and how does the input parameter effect the output/prediction.

[R: A first attempt at linear regression](http://java.dzone.com/articles/r-first-attempt-linear)
: I’ve been working through the videos that accompany the Introduction to Statistical Learning with Applications in R book and thought it’d be interesting to try out the linear regression algorithm against my meetup data set.  
I wanted to see how well a linear regression algorithm could predict how many people were likely to RSVP to a particular event.

[Behind the Pins: Building Analytics](http://engineering.pinterest.com/post/96104443004)
: As the community of Pinners grows, so does the number of businesses on Pinterest. Earlier this week, we revamped our analytics tool to help businesses better understand their audiences and how their organic content is performing.

[The Value of Accuracy in Predictive Analytics](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:212727)
: Many first time users of predictive models are happy to have the benefit of a good model with which to target their marketing initiatives and don’t ask the equally important question, is this the best model we can be using?  This study will demonstrate that a very small improvement in the accuracy of the model can result in very large financial gains.  This case study illustrates that a change in fitness of only 0.01 point can mean a financial improvement of nearly 8% in campaign ROI.

[Unraveling Real-Time Predictive Analytics](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:211210)
: As a product manager in the domain of predictive analytics, I own the responsibility to build predictive analytics capabilities for consumer facing and/or enterprise platforms; the business applications vary among item recommendations for consumers, prediction of event outcomes based on classification models, demand forecasting for supply optimization, and so on. We usually see the applications where the predictive model built using machine learning technique(s) is leveraged to score the new set of data, and that new set of data is most often fed to the model on-demand as a batch.

### Architecture

[Hardening Your Infrastructure to Mitigate Leaks of Sensitive Data](http://labs.opendns.com/2014/10/09/hardening-infrastructure-mitigate-leaks-sensitive-data/)
: Using encryption, choosing strong passwords, and properly generating secret keys is often perceived as all it takes to ensure that sensitive data remains confidential.  
However, the operating system can still be leaking this data. In this blog post, we are going to review some common sources of leaks that are frequently overlooked, even by security professionals.

[Overview of Identity Management System (Part 1)](http://java.dzone.com/articles/part1-overview-identity-0)
: This tutorial series teaches the basic concepts of identity management and single sign on using different identity management system (Shibboleth and CAAS).This tutorial series also provides a solution for integrating your existing applications with security feature and also shows how to make multiple applications interact and login through a centralized authentication system, so that user don’t have to remember multiple username password for different applications that they will be accessing.

[Getting Granular With Microservices, PaaS, Twelve Factor Apps and Docker](http://java.dzone.com/articles/getting-granular-microservices)
: There's fog coming to the world of IT. Some people are calling this "The Cloud".  
This fog turns everything inside out. It will take your monolithic applications, the guts of which are contained within large bodies of code and break them apart so that discrete units of functionality are contained within their own process, exposed through an interface for others to see. Complexity is moving from the inside of a few large processes to the outside of many smaller processes.

[Building a smarter home feed](http://engineering.pinterest.com/post/96012794429)
: The home feed should be a reflection of what each user cares about. Content is sourced from inputs such as people and boards the user follows, interests, and recommendations. To ensure we maintain fast, reliable and personalized home feeds, we built the smart feed with the following design values in mind:  
1. Different sources of Pins should be mixed together at different rates.  
2. Some Pins should be selectively dropped or deferred until a later time. Some sources may produce Pins of poor quality for a user, so instead of showing everything available immediately, we can be selective about what to show and what to hold back for a future session.  
3. Pins should be arranged in the order of best-first rather than newest-first. For some sources, newer Pins are intuitively better, while for others, newness is less important.

[Streaming content for non-media applications](http://architects.dzone.com/articles/streaming-content-non-media)
: The vast majority of web apps and mobile apps use JSON or XML on the wire to transfer data. It is relatively easy to design a utility schema and the textual data on the wire is easier to debug. The schema designs, however, tend to emphasize an analytical perspective rather than a performance one.

[The Rise (and Fall?) of NoSQL](http://java.dzone.com/articles/rise-and-fall-nosql)
: If you haven’t heard of the meteoric rise of NoSQL, you’ve been living in a hole. Likely at the bottom of the ocean. In the Mariana trench. Buried under a heap of rubble.  
NoSQL adoption is exploding, and not just in the startup scene. Even big companies like Apple and Comcast have skin in the game, with large NoSQL deployments that probably dwarf those at your company.

[Exorcising the CAP Demon](http://scale-out-blog.blogspot.com/2014/10/exorcising-cap-demon.html)
: Computer science is like an enormous tool box you can rummage through whenever you have a problem to solve. Most of the tools are sturdy and practical, like algorithms for B-trees. Some are also elegant, like consistent hashing in Dynamo. Finally there are some tools that you never quite figure out even after years of reflection. That piece of steel you are looking at could be Excalibur. Or it could be a rusty knife.

[How Clay.io Built their 10x Architecture Using AWS, Docker, HAProxy, and Lots More](http://feedproxy.google.com/~r/HighScalability/~3/dwlRn1D-gKY/how-clayio-built-their-10x-architecture-using-aws-docker-hap.html)
: This is the first post in my new series 10x, where I share my experiences and how we do things at Clay.io to develop at scale with a small team..

[The little extra that comes with Universal SSL](http://blog.cloudflare.com/the-little-extra-that-comes-with-universal-ssl/)
: Last Monday we announced our SSL for Free plan users called Universal SSL. Universal SSL means that any site running on CloudFlare gets a free SSL certificate, and is automatically secured over HTTPS.  
Using SSL for a web site helps make the site more secure, but there's another benefit: it can also make the site faster. That's because the SPDY protocol, created by Google to speed up the web, actually requires SSL and only web sites that support HTTPS can use SPDY.

[IP Routing, AWS, and Docker - OpenDNS Engineering](http://engineering.opendns.com/2014/07/01/ip-routing-aws-docker/) (via Remi Paulmier)
: Operating distributed computing systems at scale brings a variety of challenges. Minor issues like having the wrong version of a small software library can take a whole application offline. To create a smooth transition from development to operations with regard to dependencies, environment, and testing OpenDNS has adopted open-source Docker containerization technology. Interfacing Docker containers …

[Microservices and PaaS - Part IV](http://java.dzone.com/articles/microservices-and-paas-part-iv)
: This is Part IV of the ever-expanding "Microservices and PaaS" blog series covering the rapidly evolving use of microservices in modern cloud software projects. Parts I and II introduced microservices concepts and discussed patterns and practices being spearheaded by microservices pioneers, notably Netflix, who were represented at a recent microservices meetup that was the genesis of this series. 

### ElasticSearch

[Elasticsearch Java Virtual Machine settings explained](http://jprante.github.io/2012/11/28/Elasticsearch-Java-Virtual-Machine-settings-explained.html)
: Today, it finally happened. Java 6 (“Mustang”), which appeared early 2006 and is still in production at many places, has reached end of life. There is no longer a reason not to transition to Java 7 (“Dolphin”).  
This occasion inspired me to write a blog post about the intriguing details about the subtleties of Java 6 and 7 Virtual Machine settings and Elasticsearch.  
Elasticsearch comes with some preconfigured settings for the Java Virtual Machine (JVM). Normally, because they have been chosen very carefully, you don’t need to care much about them, and you can use Elasticseach right away.  
But it may happen, while monitoring the memory of your Elasticsearch nodes, you could get tempted by changing some of the settings. Will it improve your situation or not ?  
This blog tries to demystify the preconfigured Elasticsearch settings and discusses the most common adjustments. Finally, some recommendations are given how tunings should be undertaken.

[Elasticsearch Hadoop 2.0.2 and 2.1.Beta2 released](http://www.elasticsearch.org/blog/elasticsearch-hadoop-2-0-2-and-2-1-beta2/)
: I am pleased to announce Elasticsearch for Apache Hadoop releases 2.0.2 and 2.1.Beta2. (If you haven’t been following our story so far, es-hadoop is our connector that serves up real-time search & analytics for your Hadoop deployments.)  
2.0.2 is the latest stable release containing several bug fixes and is recommended upgrade for all existing users.  
2.1.Beta2 is the second preview from the development branch bringing a number of new features and improvements besides the typical bug fixes, adding Apache Storm and Spark SQL support.

[Playing HTTP Tricks with Nginx](http://www.elasticsearch.org/blog/playing-http-tricks-nginx/)
: One of the defining features of Elasticsearch is that it’s exposed as a (loosely) RESTful service over HTTP.  
The benefits are easy to spell out, of course: the API is familiar and predictable to all web developers. It’s easy to use with "bare hands" via the curl command, or in the browser. It’s easy to write API wrappers in various programming languages.  
Nevertheless, the importance of the HTTP-based nature of Elasticsearch is rooted deeper: in the way it fits into the existing paradigm of software development and architecture.

[Kibana 4 Beta 1 released](http://www.elasticsearch.org/blog/kibana-4-beta-1-released/)
: We’re proud pretty darn happy, to share the future of Kibana, and the first beta release of Kibana 4 with you today.

### MySQL

[Removing Scalability Bottlenecks in the Metadata Locking and THR_LOCK Subsystems in MySQL 5.7](http://mysqlserverteam.com/removing-scalability-bottlenecks-in-the-metadata-locking-and-thr_lock-subsystems-in-mysql-5-7/)
: The MySQL Server 5.7.5 Development Milestone Release, which was published recently, contains some significant changes to the metadata locking (MDL) subsystem and to the usage of the THR_LOCK manager for InnoDB tables. This post provides more information about these changes, which resulted in nice improvements in both scalability and performance.

[MySQL ring replication: Why it is a bad option](http://www.percona.com/blog/2014/10/07/mysql-ring-replication-why-it-is-a-bad-option/)
: I’ve recently worked with customers using replication rings with 4+ servers; several servers accepting writes. The idea behind this design is always the same: by having multiple servers, you get high availability and by having multiple writer nodes, you get write scalability. Alas, this is simply not true. Here is why.

[New InnoDB Memcached Functionality in 5.7 Lab Release](http://mysqlserverteam.com/new-innodb-memcached-functionality-in-5-7-lab-release/)
: InnoDB Memcached’s read only query in 5.7 already achieved a remarkable 1.1 million QPS record. Now, the read query bottleneck shifts to the memcached client itself. Thus anything that can batch the queries and shorten the query strings helps.

### DNS

[DNSSEC: An Introduction](http://blog.cloudflare.com/dnssec-an-introduction/)
: At CloudFlare our mission is to help build a better Internet. Part of this effort includes making web sites faster, more reliable, and more trustworthy. The obvious first choice in protocols to help make websites more secure is HTTPS. CloudFlare’s latest product—Universal SSL—helps web site operators provide a trustworthy browsing experience for their site visitors by giving their site HTTPS support for free. In this blog post we look at another protocol, DNS, and explore one proposal to improve its trustworthiness: DNSSEC.

### Log management

[Enhancing, Formatting and Analyzing Fastly Logs](http://www.fastly.com/blog/enhancing-formatting-analyzing-fastly-logs)
: In short, Fastly makes it very easy for you to get access to your log data so that you can better understand how your content delivery network (CDN) is delivering your content. Fastly’s logging is also extensible and configurable, allowing you to modify what is logged as well as the format of the log messages.

### Configuration management

[Chef Reporting API and Resource Updates](https://www.getchef.com/blog/2014/10/07/chef-reporting-api-and-resource-updates/)
: Have you ever wanted to find a list of nodes that updated a specific resource in a period of time? Such as “show me all the nodes in production that had an application service restart in the last hour”? Or, “which nodes have updated their apt cache recently?”

### Docker

[Announcing Docker.ci](http://blog.zedroot.org/announcing-docker-ci/)
: In the case you're a Docker user, and writing tests you're probabely looking for the new perfect CI (Continuous Integration server) for your project.  
As of today you can find 2 of them: Drone and Shippable.

### Monitoring

[Send Zabbix events to Logstash](http://philippe.lewin.me/2014/10/06/send-zabbix-events-to-logstash/)
: Zabbix is an enterprise-class open source distributed monitoring solution for networks and applications and Logstash is a tool for managing events and logs.  
Logstash has already a Zabbix output to send data from Logstash. It can be interesting to send Zabbix data to Logstash to maintain a highly decoupled IT monitoring infrastructure.  
By sending Zabbix events to Logstash, one can easily integrate Zabbix with a lot of things. 
