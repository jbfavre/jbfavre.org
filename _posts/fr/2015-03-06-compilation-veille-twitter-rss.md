---
layout: post
title: "Compilation veille Twitter & RSS #2015-09"
category: veille
date: 2015-03-06 18:00 +0100
---

La moisson de liens pour les semaine du 1<sup>er</sup> au 6 mars 2015.
Ils ont, pour la plupart été publiés sur mon compte Twitter.
Les voici rassemblés pour ceux qui les auraient raté.

Bonne lecture

## Monitoring

[Eliminate Alert Fatigue with PagerDuty and Event Enrichment](https://www.pagerduty.com/blog/eep-and-pd-solve-too-many-alerts/)
: We, as IT professionals, have ever-expanding access to more accurate Ops telemetry. With this data, we have an incredible amount of visibility into what’s going on. However, more information isn’t always a good thing when it comes to alerting. You can definitely have too many alerts, and alert fatigue is a growing problem among Operations teams. More detailed telemetry isn’t bad; it’s just that much of this information is generally better suited for forensics rather than alerting.

## Dev

### Mobile

[Bugs: The Secret Killer to 5-Star Mobile App Reviews](http://java.dzone.com/articles/bugs-secret-killer-5-star)
: Bugs. Once upon a time – and not so very long ago – that word had only one meaning: annoying little critters that crawl, sting, bite, and can generally make your life a misery.  
But in today’s modern technological age, the word bug has a new meaning: flaws in software applications. Though the word is the same, the two meanings are quite different. However, both terms represent a common theme: annoyances.

## Architecture

[Radio, News and Sport notifications on a huge scale at the BBC](https://blog.process-one.net/news-and-sport-notifications-on-a-huge-scale-bbc-use-case/)
: Mickaël Rémond explains how the BBC have been using large scale push notification service Boxcar to distribute radio content, breaking news and sport football alerts on a huge scale.

[The Architecture of Algolia’s Distributed Search Network](http://highscalability.com/blog/2015/3/9/the-architecture-of-algolias-distributed-search-network.html)
: Algolia started in 2012 as an offline search engine SDK for mobile. At this time we had no idea that within two years we would have built a worldwide distributed search network.  
Today Algolia serves more than 2 billion user generated queries per month from 12 regions worldwide, our average server response time is 6.7ms and 90% of queries are answered in less than 15ms. Our unavailability rate on search is below 10-6 which represents less than 3 seconds per month.

[A preview of the improved Varnish Custom Statistics](https://www.varnish-software.com/blog/preview-improved-varnish-custom-statistics)
: Have you ever wanted to better understand your Varnish traffic? For example, which URLs are the slowest to fetch? Which consume the most bandwidth? Which generate the most errors? Or how about the domain that is serving the most traffic? Well, the answers to all of these questions are in Varnish Custom Statistics (VCS). The difference now is you have a sleek new UI to help discover them!

[HappyPancake: a Retrospective on Building a Simple and Scalable Foundation](http://highscalability.com/blog/2015/2/23/happypancake-a-retrospective-on-building-a-simple-and-scalab.html)
: This is a guest repost by Rinat Abdullin, who worked on HappyPancake, the largest free dating site in Sweden. Initially written in ASP.NET and MS SQL Database server, it eventually became overly complex and expensive to scale. This is the last post in a nearly two year long series of engaging articles on the evolution of the project. For the complete list please see the end of this article.

[Speeding Up ActiveMQ Persistent Messaging Performance by 25x](http://blog.christianposta.com/activemq/speeding-up-activemq-persistent-messaging-performance-by-25x/)
: Apache ActiveMQ is a very popular open-source messaging broker brought to you by the same people who created (and work on) Apache Karaf, Apache Camel, Apache ServiceMix, and many others. It has a vibrant community, is very flexible, and can be deployed in highly performant and highly available scenarios.

[Why you should use a content delivery network](http://www.fastly.com/blog/why-use-a-content-delivery-network/)
: Most websites and applications that people interact with every day are run out of one physical location, but content on the site or application (like images, text, and video) still needs to travel over wires to the entire world.

### Logs management

[How to Centralize Logs from CoreOS Clusters](https://blog.logentries.com/2015/03/how-to-centralize-logs-from-coreos-clusters/)
: Containerization and microservice architectures are commonly resulting in highly distributed systems with large numbers of dynamic and ephemeral instances that autoscale to meet demands on system load. It’s not uncommon to see clusters of thousands of container instances, where once there were tens of physical servers, now there are hundreds of (cloud) server instances.

## Security

[Protecting web origins with Authenticated Origin Pulls](http://blog.cloudflare.com/protecting-the-origin-with-tls-authenticated-origin-pulls/)
: As we have been discussing this week, securing the connection between CloudFlare and the origin server is arguably just as important as securing the connection between end users and CloudFlare. The origin certificate authority we announced this week will help CloudFlare verify that it is talking to the correct origin server. But what about verification in the opposite direction? How can the origin verify that the client talking to it is actually CloudFlare?

## Dataviz

### Kibana

[Kibana 4 video tutorials, Part 1](http://www.elasticsearch.org/blog/kibana-4-video-tutorials-part-1/)
: With the much-anticipated release of Kibana 4, we were thinking about how to help users get up to speed quickly with the new feature set.

## Big Data

[Command-line tools can be 235x faster than your Hadoop cluster](http://aadrake.com/command-line-tools-can-be-235x-faster-than-your-hadoop-cluster.html)
: As I was browsing the web and catching up on some sites I visit periodically, I found a cool article from Tom Hayden about using Amazon Elastic Map Reduce (EMR) and mrjob in order to compute some statistics on win/loss ratios for chess games he downloaded from the millionbase archive, and generally have fun with EMR. Since the data volume was only about 1.75GB containing around 2 million chess games, I was skeptical of using Hadoop for the task, but I can understand his goal of learning and having fun with mrjob and EMR. Since the problem is basically just to look at the result lines of each file and aggregate the different results, it seems ideally suited to stream processing with shell commands. I tried this out, and for the same amount of data I was able to use my laptop to get the results in about 12 seconds (processing speed of about 270MB/sec), while the Hadoop processing took about 26 minutes (processing speed of about 1.14MB/sec).

[How-to: Let Users Provision Apache Hadoop Clusters On-Demand](http://blog.cloudera.com/blog/2015/03/how-to-let-users-provision-apache-hadoop-clusters-on-demand/)
: Cloudera Director (free to download and use) is designed for easy, on-demand provisioning of Apache Hadoop clusters in Amazon Web Services (AWS) environments, with support for other cloud environments in the works. It allows for provisioning clusters in accordance with the Cloudera AWS Reference Architecture.

[DSS Free Training: 3 Steps to Predicting Revenue from Raw CRM Data](http://www.dataiku.com//blog/2015/03/02/dss-free-training-3-steps-to-predicting-revenue-from-raw-crm-data.html)
: On Wednesday, February 25th, 2015, Kurt Muehmel, Business Engineer at Dataiku, taught attendees how to combine raw web logs with CRM data to predict future revenue. During the 45mn session, our guests learned how business analysts with little or no technical background use DSS to clean, enrich, analyze, model, and finally deploy powerful predictive applications on their own. To receive the full webinar video recording, please email Pauline . Otherwise, you can read the webinar's transcript below:

[Streaming Big Data: Storm, Spark and Samza](https://tsicilian.wordpress.com/2015/02/16/streaming-big-data-storm-spark-and-samza/)
: There are a number of distributed computation systems that can process Big Data in real time or near-real time. This article will start with a short description of three Apache frameworks, and attempt to provide a quick, high-level overview of some of their similarities and differences.

[How-to: Do Real-Time Log Analytics with Apache Kafka, Cloudera Search, and Hue](http://blog.cloudera.com/blog/2015/02/how-to-do-real-time-log-analytics-with-apache-kafka-cloudera-search-and-hue/)
: If you are not looking at your company’s operational logs, then you are at a competitive disadvantage in your industry. Web server logs, application logs, and system logs are all valuable sources of operational intelligence, uncovering potential revenue opportunities and helping drive down the bottom line. Whether your firm is an advertising agency that analyzes clickstream logs for customer insight, or you are responsible for protecting the firm’s information assets by preventing cyber-security threats, you should strive to get the most value from your data as soon as possible.

### Hadoop

[Calculate PageRanks with Apache Hadoop](https://pragmaticintegrator.wordpress.com/2015/02/18/calculate-pageranks-with-apache-hadoop/)
: Currently I am following the Coursera training ‘Mining Massive Datasets‘. I have been interested in MapReduce and Apache Hadoop for some time and with this course I hope to get more insight in when and how MapReduce can help to fix some real world business problems (another way to do so I described here). This Coursera course is mainly focussing on the theory of used algorithms and less about the coding itself. The first week is about PageRanking and how Google used this to rank pages. Luckily there is a lot to find about this topic in combination with Hadoop. I ended up here and decided to have a closer look at this code.

### Analytics

[Are Scatterplots The Killer Data Visualization Tool You're Not Using?](https://vividcortex.com/blog/2015/03/05/scatterplots-killer-data-visualization-tool-youre-not-using/)
: At VividCortex, we deal with a lot of data, day in and day out. It’s not just our customer data: we actually consume a lot of data and reports produced by others as well. For example, there are reports in Salesforce’s CRM, various analytics solutions we use, industry reports we read, and on and on. Speaking personally, I probably study at least 10 charts a day in depth to try to understand their meaning. And it’s only growing as our business and activity grows.

[Avoiding a common mistake with time series](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:254289)
: A basic mantra in statistics and data science is correlation is not causation, meaning that just because two things appear to be related to each other doesn’t mean that one causes the other. This is a lesson worth learning.

[Analyzing BitCoin Network Transactions with Neo4j](http://neo4j.com/blog/analyzing-bitcoin-network-transactions-neo4j/)
: Besides helping our customers to be successful trying and using Neo4j, DC-based David Fauth is always on the lookout for interesting new datasets to analyze.  
Being a (big) data scientist and data analyst by heart, he excels in deriving new insights from existing data and explaining the intricate connections that reveal it.  
In previous installments he analyzed the FEC Campaign Data with Neo4j and showed how to import DocGraph Datasets.

## Databases

[Why Graph Databases are Perfect for the Internet of Things](http://neo4j.com/blog/graph-databases-perfect-internet-things/)
: Goldman Sachs recently posited that the Internet of Things, the so-called “Third Wave of the Internet,” will “transform the way we live and work” as it opens up “a host of new opportunities and challenges for companies, governments and consumers.”  
Meanwhile, Morgan Stanley recentlypredicted that within the next five years, some 75 billion connected devices will be in use worldwide. This number is rapidly approaching the estimated 86 billionneurons in the human brain. Just as human intelligence results not from the number of neurons in our brains, but from the 100 trillion or so connections between them, so too the value of the devices comprising the Internet of Things (IoT) bear a strong relationship to the connections and interactions between those devices.

[How to use SQL PIVOT to Compare Two Tables in Your Database ](http://blog.jooq.org/2015/02/26/how-to-use-sql-pivot-to-compare-two-tables-in-your-database/)
: This can happen ever so easily. You adapt a table by adding a new column:  
`ALTER TABLE payments ADD code NUMBER(3);`  
You go on, implementing your business logic – absolutely no problem. But then, later on (perhaps in production), some batch job fails because it makes some strong assumptions about data types.

### MariaDB

[Improving your MariaDB Back-Up Plan](https://mariadb.com/blog/improving-your-mariadb-back-plan)
: Every organization needs a good database back-up plan, to include plans for data restoration. Such a plan should include, of course making proper back-ups and doing in a way that won't disturb user traffic. It should also include making sure that you're ready to restore back-ups quickly, so that your organization can operate with minimal downtime and without loss of data when a problem occurs. There are many things such as these to consider for developing a good back-up and restoration plan.

[Table and tablespace encryption on MariaDB 10.1.3](https://blog.mariadb.org/table-and-tablespace-encryption-on-mariadb-10-1-3/)
: For the moment, the only engines that fully support encryption are XtraDB and InnoDB. The Aria storage engine also supports encryption, but only for temporary tables.

### MySQL

[Your Options for Optimizing the Performance of MySQL Databases](http://gomorpheus.com/blog/2015-01-22-your-options-for-optimizing-the-performance-of-mysql-databases)
: A database can never be too optimized, and DBAs will never be completely satisfied with the performance of their creations. As your MySQL databases grow in size and complexity, taking full advantage of the optimizing tools built into the MySQL Workbench becomes increasingly important.

[Improving Percona XtraDB Cluster SST startup with Google Compute Engine snapshots](http://www.percona.com/blog/2015/03/03/improving-percona-xtradb-cluster-sst-startup-google-cloud-engine-snapshots/)
: As the need for information grows so does the size of data we need to keep in our databases. SST is unavoidable for spinning up new nodes in a PXC cluster and when datasets reach the “terra-byte” range this becomes ever more cumbersome requiring many hours for a new node to synchronize.

[Emulating MySQL roles with the Percona PAM plugin and proxy users](http://www.percona.com/blog/2015/03/02/emulating-roles-percona-pam-plugin-proxy-users/)
: From time to time people wonder how to implement roles in MySQL. This can be useful for companies having to deal with many user accounts or for companies with tight security requirements (PCI or HIPAA for instance). Roles do not exist in regular MySQL but here is an example on how to emulate them using Percona Server, the PAM plugin and proxy users.

[Temp Tables, Filesorts, UTF8, VARCHAR, and Schema Design in MySQL](https://vividcortex.com/blog/2015/03/02/temp-tables-filesorts-utf8-varchar-schema-design-mysql/)
: The other day we were doing some peer review on a schema change at VividCortex and the topic of character set, column length, and the potential downsides of using utf8 came up. I knew from experience that there are some hidden gotchas with this, and usually I’ll just say a couple words and send a link with further reading. But Google turned up nothing, so I am writing this post to try to help fix that.

[3 handy tools to remove problematic MySQL processes](http://www.percona.com/blog/2015/02/27/3-handy-tools-to-remove-problematic-mysql-processes/)
: DBAs often encounter situations where they need to kill queries to ensure there are no long-running queries on a MySQL server that would impact performance. Long-running queries can be the result of many factors. Fortunately, Percona Server contains some handy tools to remove problematic MySQL processes. I will highlight all of the tools via some examples in this post.

## Network

[Improving Network Security with Big Data](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:253221)
: Having a secure network is vital in today’s digital landscape and with so many headlines about data breaches and identity theft, security is of the utmost importance. For some companies, this loss of information to the often unknown hacker is a huge embarrassment and can lead to enormous losses in sales and widespread consumer mistrust.

## Tools

[How to Evaluate API Automation Tools: Key Criteria](http://blog.altoros.com/api-automation-tools-key-selection-criteria.html)
: APIs are crucial for any microservices-based architecture—as a means of communication between its services. Yet, developing an API from scratch is not a trivial task. You need to provide meta data, write server code, create a DB structure, develop new methods for new objects, etc. Luckily, many of these tasks can be automated. In this blog post, we investigate what are the key criteria for selecting API automation tools.


[Scala meet DevOps, DevOps meet Scala](http://feedproxy.google.com/~r/Devopsanywhere/~3/2W_4KusXvAk/scala-meet-devops-devops-meet-scala.html)
: It's embarrassing that I haven't blogged in over 2 years. Let's hope I can change. In the last time we spoke, I had begun learning Java. Things haven't gone exactly as planned. I got diverted from that plan and spent quite a bit of time becoming reacquainted with Python and JavaScript. In the last four months however I have spent a lot of time on the JVM, just not with Java. In my $DAYJOB, I have had the opportunity to learn scala. While the learning curve was more than a little steep, I am really enjoying working in it and I think it is a perfect fit for many of the problems we in devops-land work on.

[Why Interoperability is a Key Requirement for Your DevOps Toolkit](https://blog.logentries.com/2015/02/why-interoperability-is-a-key-requirement-for-your-devops-toolkit/)
: Today’s DevOps culture drives the requirement for development and ops teams to share tooling and to combine lots of different services/processes to give them visibility into their systems throughout the system life cycle. For example the modern DevOps toolkit will consistently include the following categories of tools (and more…)

## PHP

[Profiling Web Page Loading Performance](http://blog.blackfire.io/profiling-web-page-loading-performance.html)
: Blackfire is not only a profiler to analyze software application performance, but also a great call-graph visualization tool that lets you analyze almost any kind of data.

[Meet the new Blackfire CLI tools](http://blog.blackfire.io/new-cli-tools.html)
: Profiling Web Services or APIs is better done via the CLI. The new version of the CLI tool (version 0.21) comes with some useful improvements.

## Management

[Calculating your Incident Management ROI](https://www.pagerduty.com/blog/calculating-your-incident-management-roi/)
: Outages are typically expensive for your business, not to mention a headache for your team. Improving your processes and tools for responding to critical incidents can generate a lot of business value. However, you may be wondering how to prioritize projects and investments, or you may be asked by business stakeholders to justify the costs of new initiatives. Return on Investment (ROI) is one way to do that, but it can be difficult to determine. While the answer is unique to each company, we’ll share a few different approaches to calculating your incident management ROI.
