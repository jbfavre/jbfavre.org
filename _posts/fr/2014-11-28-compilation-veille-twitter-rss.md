---
title: "Compilation veille Twitter & RSS #21"
category: veille
---

La moisson de liens pour les semaine du 24 au 28 novembre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Databases

[How (And Why) Make Read-only Versions of Your SQL and MySQL Databases](http://gomorpheus.com/blog/2014-11-07-how-and-why-make-read-only-versions-of-your-sql-and-mysql-databases)
: TL;DR: Just a little bit of pre-lock planning ensures that a SQL or MySQL database you convert to read-only status performs as expected and is accessible by the right group of users. Doing so also helps guarantee the database can be safely unlocked when and if it should ever need to be updated or otherwise altered.

[Types of database management system and their evolution](http://www.analyticsvidhya.com/blog/2014/11/types-databases-evolution/)
: Various researches have revealed that whenever we hear an object, we retrieve it using an image from our brain. For instance, if I ask you “Do you like apples?” . You won’t think of the alphabets “a”, “p”, “p”,”l”,”e”, rather you will recall all relevant information regarding apple using the image of an apple. This is how possibly our data processing in our brain work. Of course it is complicated and highly efficient. Now if ask you “What is a database?”, you will mostly think of a collection of tables related to each other. If the same question was posed to a person in 1990s, possibly he would have only thought of a single big table from which they retrieve all the information.But today we have really moved on from this simplistic definition of databases.

#### Cassandra

[Apache Cassandra is the brain behind BrainSINS’s eCommerce personalization; helping brands like Toys”R”Us improve sales by 20% ](http://planetcassandra.org/blog/interview/apache-cassandra-is-the-brain-behind-brainsinss-ecommerce-personalization-helping-brands-like-toysrus-improve-sales-by-20/)
: Our solution has been designed to increase the online sales and improving the online shopping experience. On average, we help our customers to increase their sales by  20% using a combination of the products we offer. Our personalization suite includes personalized recommendations, an advanced cart abandonment recovery system, an in-site behavioral targeting solution and a set of gamification features.

#### Elasticsearch

[How Does Elasticsearch Real-time Search?](http://en.kodcu.com/2014/11/how-does-elasticsearch-real-time-search/)
: Compared to other features, real-time search capability is undoubtedly one of the most important features in Elasticsearch. Today we’ll look closely how is provided real-time search by Elasticsearch.

#### MariaDB

[Moving forward with InfiniDB at MariaDB Corporation](https://mariadb.com/blog/moving-forward-infinidb-mariadb-corporation)
: We’ve had a bunch of questions, and a ton of traffic and interest on the subject of InfiniDB since we blogged about our support plans in October. Thanks for all of that!  
I wanted to send an update with the latest updates on what we’re doing with InfiniDB.

[MariaDB 10.0.15 now available](https://blog.mariadb.org/mariadb-10-0-15-now-available/)
: The MariaDB project is pleased to announce the immediate availability of MariaDB 10.0.15. This is a Stable (GA) release.

#### MySQL

[Write Yourself a Query Rewrite Plugin: Part 1](http://mysqlserverteam.com/write-yourself-a-query-rewrite-plugin-part-1/)
: With the query rewrite framework in the latest MySQL (Optimizer/InnoDB/Replication) labs release, you get the opportunity to author plugins that can rewrite queries. You can choose whether to rewrite the queries before and/or after parsing. Today I am going to walk you through how to write a pre-parse query rewrite plugin.

[MySQL benchmarking: Know your baseline variance!](http://www.percona.com/blog/2014/11/26/mysql-benchmarking-know-your-baseline-variance/)
: Often enough I find MySQL benchmark results where the difference between results is 1% or even less and some conclusions are drawn. Now it is not that 1% is not important – especially when you’re developing the product you should care about those 1% improvements or regressions because they tend to add up. However with such a small difference it is very important to understand whenever this is for real or it is just the natural variance for your baseline test.

[(More) Secure local passwords in MySQL 5.6 and up](http://www.percona.com/blog/2014/11/25/more-secure-local-passwords-in-mysql-5-6-and-up/)
: I log into a lot of different servers running MySQL and one of the first things I do is create a file in my home directory called ‘.my.cnf’ with my credentials to that local mysql instance

### Monitoring

[Sniffing performance improvements and IPv6 support](http://packetbeat.com/blog/sniffing-performance-and-ipv6.html)
: There are two main ways to deploy Packetbeat. If you have your own servers in the data center, it is often convenient to use span ports to mirror the traffic to a dedicated set of machines running the full Packetbeat stack. This way, you get application performance management (APM) features without even having to touch your application servers. No agents to install, no code to add, no overhead of any kind.

[Top 5 Mobile APM Myths: Myths 3-5](http://www.appdynamics.com/blog/mobile/top-5-mobile-apm-myths-myths-3-5/)
: Typically, mobile app developers accept some things they feel they can’t change — ratings, end-to-end visibility, user experience, and so on. However, these can all be avoided and under your control with the right mAPM solution to give you the proper insights to give your users a seamless experience.i

### Infrastructure

[De-Mystifying Software-Defined Storage](http://java.dzone.com/articles/de-mystifying-software-defined)
: Software-defined Storage (SDS) is being spoken about everywhere these days and various definitions of SDS are floating! This write-up is an attempt to represent SDS in simple language!  
Storage has traditionally been defined and managed in software only – create LUNs/volumes or NFS/CIFS shares on storage arrays and export them! So, why is the industry abuzz with Software-defined Storage and how is this different?  
In a single line - the attempt is to make the software intelligent, so as to make it easy for the user! 

### Big Data

[Implementing a Distributed Deep Learning Network over Spark](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:227199)
: Deep learning is becoming an important AI paradigm for pattern recognition, image/video processing and fraud detection applications in finance. The computational complexity of a deep learning network dictates need for a distributed realization. Our intention is to parallelize the training phase of the network and consequently reduce training time. We have built the first prototype of our distributed deep learning network over Spark, which has emerged as a de-facto standard for realizing machine learning at scale.

[Where The Cloud Meets The Grid](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:226733)
: Companies build or rent grid machines when data length doesn't fit into HDFS, or the latency of parallel interconnects is too slow in the cloud. This review explores the overlap of the two paradigms at the ends of the parallel processing latency spectrum. The comparison is almost poetic and leads to many other comparisons in languages, interfaces, formats, and hardware, but there is amazingly little overlap.

[BigBench: Toward An Industry-Standard Benchmark for Big Data Analytics](http://blog.cloudera.com/blog/2014/11/bigbench-toward-an-industry-standard-benchmark-for-big-data-analytics/)
: Benchmarking Big Data systems is an open problem. To address this concern, numerous hardware and software vendors are working together to create a comprehensive end-to-end big data benchmark suite called BigBench. BigBench builds upon and borrows elements from existing benchmarking efforts in the Big Data space (such as YCSB, TPC-xHS, GridMix, PigMix, HiBench, Big Data Benchmark, and TPC-DS). Intel and Cloudera, along with other industry partners, are working to define and implement extensions to BigBench 1.0. (A TPC proposal for BigBench 2.0 is in the works.)

[Real World Use Cases and Success Stories for In-Memory Data Grids](http://www.kai-waehner.de/blog/2014/11/24/real-world-use-cases-success-stories-memory-data-grids/)
: NoSQL Matters is a great conference about different NoSQL topics. A lot of great NoSQL products and use cases are presented. In November 2014, I had a talk about "Real World Use Cases and Success Stories for In-Memory Data Grids" in Barcelona, Spain. I discussed several different use cases, which our TIBCO customers implemented using our In-Memory Data Grid "TIBCO ActiveSpaces". I will present the same content at data2day, a German conference in Karlsruhe about big data topics.

#### Analytics

[Using Dataiku’s Data Science Studio to teach the basics of Data Science](http://www.dataiku.com//blog/2014/11/27/dss-marketing-class.html)
: A few months ago, Benjamin Thomas, a marketing professor decided to introduce the concepts of data preparation and data science to his students. For his class, he chose to use Dataiku's Data Science Studio (DSS). Read about Benjamin's experience in this blog post.

[Stop Learning, Start Shipping](http://keenio.tumblr.com/post/103560382616)
: What’s the point of building developer tools? For most, this is an academic question. For us at Divshot (and for the folks at Keen), it’s core to building our companies. My favorite developer tools all do something very specific: they prevent me from having to learn something.

[Is Your Log Data Presentation Worthy?](https://blog.logentries.com/2014/11/is-your-log-data-presentation-worthy/)
: You’re in a quarterly meeting where everyone is armed with slide decks; some good, some mind numbingly bad. It’s your turn, and you have a concise five-slide deck comprised of targeted, well designed, and insightful graphs. The graphs are clear and the room is able to discuss the highs and lows reported in the data.

[Discovery with Data Science, Innovation with Product Management](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:226464)
: I attended the Kellogg Alumni event last week at the Facebook campus here in Bay Area. While I got the opportunity to meet some old friends and make some new acquaintances, I was thrilled to watch an expert panel discuss an exciting subject entitled, "Big Data does not Make Decisions - Leaders Do"; thrilled simply because the entire discussion was about what I live everyday in my work, and what I strive to achieve with my team and my organization.

#### Dataviz

[Working with D3.js](http://blog.shinetech.com/2014/11/21/working-with-d3-js/)
: D3.js is a JavaScript library that is used to generate visualizations, usually based on sets of data. I have been using it on a dashboard project for the past month, and wanted to share some of my thoughts and impressions as a new user.

### Architecture

[Linux vm tunables](https://www.varnish-software.com/blog/linux-vm-tunables)
: There are quite a few tunables in the Linux kernel. Reading the documentation it is clear that quite a few of them could have an impact on how Varnish performs. One that caught my attention is dirty_background_writeback tunable. It allows you to set a limit for how much of the page cache would be dirty, i.e. contain data not yet written to disk, before the kernel will start writing it out.

[Chef Server 12 Released](https://www.getchef.com/blog/2014/11/25/chef-server-12-released/)
: Today, after a thorough RC testing phase that included a great amount of feedback and contribution from the Chef community, we’re pleased to announce the GA release of Chef Server 12. This release brings the previously premium features of Enterprise Chef, namely multi-tenancy and role-based access control, into Open Source Chef.

[Push Jobs Server 1.1.5 is out, and more improvements are in the works.](https://www.getchef.com/blog/2014/11/25/push-jobs-server-1-1-5-and-future-improvements/)
: We are pleased to announce the release of version 1.1.5 of Push Jobs Server. This fixes minor issues with the push-jobs-ctl test command that caused failures when the Push Jobs Server was installed on Chef 12.

[Chef reporting add-on 1.2.1 Released](https://www.getchef.com/blog/2014/11/25/chef-reporting-add-on-1-2-1-released/)
: Chef reporting 1.2.1 is a bug-fix release to address compatability with Chef Server 12.

[Managing the Magic of Microservces](http://java.dzone.com/articles/managing-magic-microservces)
: When looking at all the organizations that are doing interesting technological, cultural, and scaling things in the DevOps space, one of the common architectural patterns is the use of microservices. For episode 52, the panel sits down to talk a bit about microservices: what they are, the benefits they provide, the costs, the issues around releasing, deploying, and operating microservices-based applications, in an attempt to figure out whether they’re the future or a fad and what, exactly, should make you pay attention and start investigating whether that old monolithic application should be sliced and diced into a microservice-utopia.

[Large Scale Distributed Consensus Approaches: Concurrent Consistent Decisions](http://ayende.com/blog/169092/large-scale-distributed-consensus-approaches-concurrent-consistent-decisions)
: So far we tackled the idea of large compute cluster, and a large storage cluster. I mentioned that the problem with the large storage cluster is that it doesn’t handle consistency within itself. Two concurrent requests can hit two storage nodes and make concurrent operations that aren’t synchronized between themselves. That is usually a good thing, since that is what you want for high throughput system. The less coordination you can get away with, the more you can actually do. 

[A Flock of Tasty Sources on How to Start Learning High Scalability](http://feedproxy.google.com/~r/HighScalability/~3/t39oHcAd_gY/a-flock-of-tasty-sources-on-how-to-start-learning-high-scala.html)
: When we usually are interested about scalability we look for links, explanations, books, and references. This mini article links to the references I think might help you in this journey.

[Introducing Varnish High Availability](https://www.varnish-software.com/blog/introducing-varnish-high-availability-2)
: There is a reason why people install Varnish Cache in their servers. It’s all about the performance. Delivering content from Varnish is often a thousand times faster than delivering it from your web server. As your website grows, and it usually grows significantly if your cache hit rates are high, you’ll rely more and more on Varnish to deliver the brunt of the requests that are continuously flowing into your infrastructure.

[SSL/TLS Performance Diary #3: Optimizing Data Encryption](http://zoompf.com/blog/2014/11/ssl-performance-diary-3-optimizing-data-encryption)
: A fast website is a crucial component of a great user experience. So much so that a few years ago Google announced that they were using page load time as a factor in search engine rankings. More recently, Google also announced that they would be favoring websites that use Transport Layer Security (TLS) in its search rankings. TLS encrypts a website’s traffic preventing other entities from monitoring its communications. However, adding this protection introduces more complexity to your website and how it communicates with your visitors. In our SSL/TLS diary series, we are looking at how to implement TLS on your website while keeping it fast and responsive.

### Security

[Qubes R3/Odyssey initial source code release](http://theinvisiblethings.blogspot.com/2014/11/qubes-r3odyssey-initial-source-code.html)
:  Back in 2013 we've started the work on generalizing Qubes architecture, which we code-named “Odyssey”, to allow for use of multiple hypervisors instead of just Xen via Hypervisor Abstraction Layer (“HAL” -> “Space Odyssey”, get it? ;). The concept has been described in this post, which I recommend to re-read if you're more interested in understanding our goals.

[Beat hackers at their own game: Part 1](http://engineering.pinterest.com/post/103572512829)
: Passwords are the greatest gift we ever gave to the hacker community. An elegant combination of human nature and poor dev choices brings Christmas in July for hackers. And January. And February. And, well, every month.

[Beat hackers at their own game: Part 2](http://engineering.pinterest.com/post/103653084534)
: Most people are surprisingly uneducated on how to store passwords.  
Let’s do some engineering. What are the requirements for a good password storage system?

[Quick Summary of recent traffic correlation using netflows](https://blog.torproject.org/blog/quick-summary-recent-traffic-correlation-using-netflows)
: Here’s what you need to know about the recent research study on traffic correlation attacks:  
While it’s great to see more research on traffic correlation attacks, this is not a new area of research. This is one study on the subject in a controlled environment using one readily available traffic monitoring technology to analyze Tor traffic. The researcher has clarified in the media that it was only 81.4 percent of their experiments not “81 percent of all Tor traffic” as has been reported elsewhere.

[The security state of KVM](http://lwn.net/Articles/619332/)
:  One of the benefits of virtualization is security; applications running in separate virtual machines are isolated from each other and, ideally, it is very hard for a compromised guest to damage other virtual machines running on the same host. The hypervisor itself is the place where most attacks on a virtualization system will be aimed. At the 2014 KVM Forum, Andrew Honig presented his analysis of which parts of KVM are more likely to have problems, and proposed ways to limit the attack surface. 

### Virtualization

[Docker 1.3.2 Rolled Out Today](http://coreos.com/blog/docker-1-3-2-security-update/)
: Today Docker released Docker 1.3.2, immediately after which we began automatically rolling out an OS update. We were able to work with Docker to ensure that the CoreOS update could ship as soon as the Docker patch was released to the public. At the time of this writing, a significant number of CoreOS instances have already been updated.

### WebPerfs

[SERIOUS CONFUSION with Resource Timing, or “Duration includes Blocking”](http://www.stevesouders.com/blog/2014/11/25/serious-confusion-with-resource-timing/)
: Resource Timing is a great way to measure how quickly resources download. Unfortunately, almost everyone I’ve spoken with does this using the “duration” attribute and are not aware that “duration” includes blocking time. As a result, “duration” time values are (much) greater than the actual download time, giving developers unexpected results. This issue is especially bad for cross-origin resources where “duration” is the only metric available. In this post I describe the problem and a proposed solution.

### Development

[API Best Practices: Spec Driven Development](http://blogs.mulesoft.org/api-best-practices-series-spec-driven-development/)
: I cannot stress the importance of spec driven development enough.  One of the quickest ways to kill your API is to define the API in your code, instead of coding to its definition.  By utilizing an API modeling spec such as RAML you can quickly build out your API in a consistent manner using code and pattern reuse.
