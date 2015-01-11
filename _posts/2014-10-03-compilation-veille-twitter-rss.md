---
layout: post
title: "Compilation veille Twitter & RSS"
category: veille
---

La moisson de liens pour les semaine du 29 setembre au 3 octobre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### SSL

[SHA1 Deprecation: What You Need to Know](https://community.qualys.com/blogs/securitylabs/2014/09/09/sha1-deprecation-what-you-need-to-know)
: The news is that SHA1, a very popular hashing function, is on the way out. Strictly speaking, this development is not new. The first signs of weaknesses in SHA1 appeared (almost) ten years ago. In 2012, some calculations showed how breaking SHA1 is becoming feasible for those who can afford it. In November 2013, Microsoft announced that they wouldn't be accepting SHA1 certificates after 2016.  
However, we're in a bit of a panic now because Google followed up to say that they will soon start penalising sites that use SHA1 certificates that expire during 2016 and after. This is a major policy change that requires immediate action—according to SSL Pulse, only 15% sites use SHA256 certificates in September 2014.

[One More Thing: Keyless SSL and CloudFlare's Growing Network](http://blog.cloudflare.com/one-more-thing-keyless-ssl-and-cloudflares-growing-network/)
: I wanted to write one more thing about Keyless SSL, our announcement from last week, before attention shifts to what we'll be announcing on Monday. Keyless allows us to provide CloudFlare's service without having private SSL keys stored locally on our edge servers. The news last week focused on how this could allow very large customers, like major financial institutions, to use CloudFlare without trusting us with their private keys.

[Keyless SSL: The Nitty Gritty Technical Details](http://blog.cloudflare.com/keyless-ssl-the-nitty-gritty-technical-details/)
: We announced Keyless SSL yesterday to an overwhelmingly positive response. We read through the comments on this blog, Reddit, Hacker News, and people seem interested in knowing more and getting deeper into the technical details. In this blog post we go into extraordinary detail to answer questions about how Keyless SSL was designed, how it works, and why it’s secure. Before we do so, we need some background about how encryption works on the Internet. If you’re already familiar, feel free to skip ahead.

[Announcing Keyless SSL™: All the Benefits of CloudFlare Without Having to Turn Over Your Private SSL Keys](http://blog.cloudflare.com/announcing-keyless-ssl-all-the-benefits-of-cloudflare-without-having-to-turn-over-your-private-ssl-keys/)
: The story begins on a Saturday morning, in the Fall of 2012, almost exactly two years ago. I got a call on my cell phone that woke me. It was a man who introduced himself as the Chief Information Security Officer (CISO) at one of the world's largest banks.  
"I got your number from a reporter," he said. "We have an incident. Could you and some of your team be in New York Monday morning? We'd value your advice." We were a small startup. Of course we were going to drop everything and fly across the country to see if we could help.

[Introducing Universal SSL](http://blog.cloudflare.com/introducing-universal-ssl/)
: The team at CloudFlare is excited to announce the release of Universal SSL™. Beginning today, we will support SSL connections to every CloudFlare customer, including the 2 million sites that have signed up for the free version of our service.  
This morning we began rolling out the Universal SSL across all our current customers. We expect this process to be complete for all current customers before the end of the day. Yesterday, there were about 2 million sites active on the Internet that supported encrypted connections. By the end of the day today, we'll have doubled that.

[Universal SSL: How It Scales](http://blog.cloudflare.com/universal-ssl-how-it-scales/)
: On Monday, we announced Universal SSL, enabling HTTPS for all websites using CloudFlare’s Free plan. Universal SSL represents a massive increase in the number of sites we serve over HTTPS—from tens of thousands, to millions. People have asked us, both in comments and in person, how our servers handle this extra load. The answer, in a nutshell, is this: we found that with the right hardware, software, and configuration, the cost of SSL on web servers can be reduced to almost nothing.

[Origin Server Connection Security with Universal SSL](http://blog.cloudflare.com/origin-server-connection-security-with-universal-ssl/)
: Earlier today, CloudFlare enabled Universal SSL: HTTPS support for all sites by default. Universal SSL provides state-of-the-art encryption between browsers and CloudFlare’s edge servers keeping web traffic private and secure from tampering.  
CloudFlare’s Flexible SSL mode is the default for CloudFlare sites on the Free plan. Flexible SSL mode means that traffic from browsers to CloudFlare will be encrypted, but traffic from CloudFlare to a site's origin server will not be. To take advantage of our Full and Strict SSL mode—which encrypts the connection between CloudFlare and the origin server—it’s necessary to install a certificate on the origin server.

[Universal SSL: Be just a bit more patient](http://blog.cloudflare.com/universal-ssl-be-just-a-bit-more-patient/)
: It turns out it takes a while to deploy SSL certificates for 2 million websites. :-) Even longer when you get a flood of new sign ups. While we'd hoped to have the deployment complete within 24 hours of the announcement, it now looks like it's going to take a bit longer. We now expect that the full deployment will be complete about 48 hours from now (0700 UTC). Beyond that, nothing about the plan for Universal SSL has changed and hundreds of thousands of sites are already active.

### Analytics

[Speeding Up R](http://dev.theladders.com/2014/10/speeding-up-r/)
: If you ever speak to a data scientist about what tools they use, you’re sure to hear a whole slew of complaints about how slow R can be. R is a programming language used for data processing, analysis, model building, and data visualization. It isn’t really designed for speed and most statistics courses don’t spend much time teaching students how to make their code run quicker.

[How to Create a Data-driven Culture](http://blog.pagerduty.com/2014/10/how-to-create-a-data-driven-culture/?utm_source=rss&utm_medium=rss&utm_campaign=how-to-create-a-data-driven-culture)
: In tech, there’s no shortage of data. It can help you manage your systems and teams better, but getting the most out of the data available to you is about more than just getting the numbers. You need to have a culture that pushes to make and measure the success of decisions with data. At least in theory, relying on data lets managers not only make good decisions with lower risk but also have the confidence to make them quickly. It also provides a way to know whether a particular decision paid off.

[Apache Spark: distributed data processing faster than Hadoop](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:208998)
: Apache Spark, another apache licensed top-level project that could perform large scale data processing way faster than Hadoop (I am referring to MR1.0 here). It is possible due to Resilient Distributed Datasets concept that is behind this fast data processing. RDD is basically a collection of objects, spraed across a cluster stored in ram or disk, automatically rebuilt on failure. It is purpose is to support higher-level, parallel operations on data as straightforward as possible.

[Apache Spark: data processing engine for cluster computing](http://datasciencehacks.wordpress.com/2014/09/12/apache-spark-data-processing-engine-for-cluster-computing/)
: May I present Apache Spark, another apache licensed top-level project that could perform large scale data processing way faster than Hadoop (I am referring to MR1.0 here). It is possible due to Resilient Distributed Datasets concept that is behind this fast data processing. RDD is basically a collection of objects, spraed across a cluster stored in ram or disk, automatically rebuilt on failure. It is purpose is to support higher-level, parallel operations on data as straightforward as possible.

[Setting up Apache Spark: quick look at the Hadoop, Scala and SBT](http://datasciencehacks.wordpress.com/2014/09/26/setting-up-apache-spark-quick-look-at-the-hadoop-scala-and-sbt/)
: We are going to look at installing spark on a Hadoop. Lets try to setup hadoop yarn here once again with screenshots from scratch, as i received some comments that my installation needs more screenshots so i am doing one with screenshots.  
In this post, we will look at creating a new user account on Ubuntu 14.04 and installing Hadoop 2.5.x stable version.

[Setting up Apache Spark: Part II](http://datasciencehacks.wordpress.com/2014/09/28/setting-up-apache-spark-part-ii/)
: Now that we have Hadoop YARN, Scala and other pre-requistes setup, we are now ready to install apache spark. If you are visiting this blog post, please do have a look at the earlier post Setting up Apache Spark: quick look at the Hadoop, Scala and SBT  
You definitely need maven, sbt, scala, java, ssh and git (though git is optional). Have git incase you want to fork — didnt work out for me. I am not using my multi node cluster workspace to perform this demonstration so not much of screenshots as of now. However, I am sure these instructions will work fine. 

[Elements of machine learning](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:209379)
: The official title of this free book available in PDF format is Machine Learning Cheat Sheet. But it's more about elements of machine learning, with a strong emphasis on classic statistical modeling, and rather theoretical - maybe something like a rather comprehensive, theoretical foundations (or handbook) of statistical science. Anyway, very interesting, and it's free.

[How Tracking Analytics Can Improve Content Marketing](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:208269)
: Inbound and content marketing are not going anywhere anytime soon. The content marketing association reports that over 90% of both enterprise B2B and B2C companies are using the tactic. There are a million different ways to leverage content strategy, and here at TechnologyAdvice, we’ve experimented with plenty of them. It’s been a fun, albeit, educational experience to say the least. While some of our methods fell flat, others helped us take our business to the next level. In retrospect, I think the most important part of our journey so far has been figuring out how to effectively measure and judge each individual strategy’s impact. One of the coolest parts about digital marketing, in my opinion, is just how granular one can get with the analytics surrounding their efforts. With that said, I’d like to talk about two methods that we have found particularly helpful in our data collection.

[A deep dive into how we built Advanced Analytics](http://blog.pagerduty.com/2014/09/a-deep-dive-into-how-we-built-advanced-analytics/)
: When we design new features, we always want to ensure that we solve real problems for our cusotmers. As we dug into how our customers were using PagerDuty, and the goals they had for their Operations teams, one of the biggest pain points we found was a lack of visibility into what was happening with their operations. While this problem looks different at every company, we noticed many teams struggling with knowing what areas of their system are the most problematic and how their teams are performing.

[Real-time Analytics at Massive Scale with Pinot](http://engineering.linkedin.com/analytics/real-time-analytics-massive-scale-pinot)
: Two years ago we hit a wall. The scale of LinkedIn’s data was growing beyond what we could analyze. At the same time, our members needed their analytics and insights in real-time. We needed a solid solution that would grow with LinkedIn and serve as the platform to power all of our analytics needs across the company at web-scale. In this post, we will share how and why we built a distributed real-time analytics Infrastructure for interactive analytics applications.

[Get an instant access to up-to-date metrics at low cost](http://blog.octo.com/en/get-an-instant-access-to-up-to-date-metrics-at-low-cost/)
: Today, Retail and Private Banks’ Core Banking System (CBS) and Portfolio Management System (PMS) are strong assets. They have matured over the years and are often a very solid basis for the rest of the satellite IT systems. They are used to efficiently manage the basic core banking data, like clients, portfolios, their security composition, the pending orders, the market transactions and so on. Portfolio-level and bank-level consolidated metrics however are often based on long running algorithms and are therefore executed either during end of day batches or on-demand, meaning users’ have to work with more or less outdated data or data that is long to get.

[Predicting the Present with Bayesian Structural Time Series (PDF)](http://static.googleusercontent.com/media/research.google.com/fr//pubs/archive/41335.pdf)
: This article describes a system for short term forecasting based on an ensemble prediction that averages over diㄦent combinations of predictors. The system combines a structural time series model for the target series with regression component capturing the contributions of contemporaneous search query data. A spike-and-slab prior on the regression coecients induces sparsity, dramatically reducing the size of the regression problem. Our system averages over potential contributions from a very large set of models and gives easily digested reports of which coecientscients are likely to be important. We illustrate with applications to initial claims for unemployment benefits and to retail sales. Although our exposition focuses on using search engine data to forecast economic time series, the underlying statistical methods can be applied to more general short term forecasting with large numbers of contemporaneous predictors.

### PHP

[Composer & virtual packages](http://devedge.wordpress.com/2014/09/27/composer-and-virtual-packages/)
: Composer has been a blessing for the PHP community, and many many people use it today. However most people don’t know all it can do – i for certain every now and then learn something new. A few days ago i stumbled over a “virtual package” on packagist – and found it to be a feature that i was actually missing in composer. Turns out, composer can do it, its just not so well documented.  
So what is this about? Virtual packages allow you to have a more loose dependency. Rather than depending on a specific package, you depend on a virtual one, which can be fulfilled by all packages that provide the virtual one. Sounds confusing? Lets have a look at an example.

### MySQL

[High Availability with Multi Source Replication with MariaDB 10.0](https://mariadb.com/blog/high-availability-multi-source-replication-mariadb-100)
: In my last article, I explored how to enable Global Transaction IDs in MariaDB 10.0. I used a very common topology of 3 servers that is used for simple failover in case of a failure. In this article, I'm going to use that topology as a base to set up multi source replication and show how it is possible to simplify the high availability setup compared to regular MySQL replication.

[Enabling GTIDs for server replication in MariaDB 10.0](https://mariadb.com/blog/enabling-gtids-server-replication-mariadb-100)
: Replication has been one of the most popular MySQL features since it made its way into the application more than a decade ago. However, as replication implementations became more complex over time, some limitations of MySQL’s original replication mechanisms started to surface. To address those limitations, MySQL v5.6 introduced the concept of Global Transaction IDs, which enable some new, advanced replication features. MySQL DBAs were happy with this, but complained that in order to implement GTIDs you needed to stop all the servers in the replication group and restart them with the feature enabled. There are workarounds – for instance, Booking.com documented a procedure to enable GTIDs with little or no downtime, but it involves more complexity than most organization are willing to allow.

[The Query Rewrite Plugins](http://mysqlserverteam.com/the-query-rewrite-plugins/)
: Now that the cost model project is progressing, most of you are going to notice execution plan changes. In the vast majority of the cases, the changes will be for the better, and some bugs with a long history will finally be closed. In some cases, however, you will notice that your queries run slower. This is inevitable: even if the MySQL optimizer is doing a much better job with the information it has, it may still be the case that the information was incomplete and that the best plan was, in fact, found by not trusting that information! Normally, we would just say “add an optimizer hint” and be over with it. But sometimes you can’t do that. For instance your query could be auto-generated from an application that you have no control over. This is why you want to intervene right before the query reaches the server. And on behalf of Sweden I apologize for Ace of Base.

[A New Data Dictionary for MySQL](http://mysqlserverteam.com/a-new-data-dictionary-for-mysql/)
: For a long time, there have been complaints about deficiencies of the data dictionary of MySQL. Many have expressed a lack of love for FRM files, see Morgan’s blog post and Stewart Smith’s post MySQL Architecture.  
We are now designing and implementing a new and improved data dictionary for MySQL

[About the Data Dictionary Labs Release](http://mysqlserverteam.com/a-preview-on-lab-release-with-new-data-dictionary-in-mysql/)
: For a long time, the MySQL development community and many others have wanted a server that worked without FRM files.  The motivation behind removing FRM files, and the design goals around new data dictionary, can be explored in more detail in the blog post by Ståle Deraas “A New Data Dictionary for MySQL”.

[MySQL & OpenStack: How to overcome issues as your dataset grows](http://www.percona.com/blog/2014/09/29/mysql-openstack-how-to-overcome-issues-as-your-dataset-grows/)
: MySQL is the database of choice for most OpenStack components (Ceilometer is a notable exception). If you start with a small deployment, it will probably run like a charm. But as soon as the dataset grows, you will suddenly face several challenges. We will write a series of blog posts explaining the issues you may hit and how to overcome them.

[Indeed, MySQL 5.7 rocks : OLTP_RO Point-Selects 8-tables Benchmark](http://dimitrik.free.fr/blog/archives/2014/09/indeed-mysql-57-rocks-oltp_ro-pointselects-8tables-benchmark.html)
: Indeed, MySQL 5.7 rocks ;-)  
This is the part1 of the following blog posts about various benchmark results on MySQL 5.7 - and this particular one is dedicated to the Sysbench OLTP_RO Point-Select 8-tables workload.

[Optimizer Cost Model Improvements in MySQL 5.7.5 DMR](http://mysqlserverteam.com/optimizer-cost-model-improvements-in-mysql-5-7-5-dmr/)
: In a previous blog post we presented some of the issues with the current optimizer cost model and listed several ideas for improvements. The new 5.7.5 DMR contains the result of our initial work on improving the optimizer’s cost model.

[MySQL Group Replication : Hello World!](http://mysqlhighavailability.com/mysql-group-replication-hello-world/)
: The first preview  release of MySQL Group Replication, a MySQL plugin that brings multi-master update everywhere to MySQL, is available on labs. This plugin ties together concepts and technologies from distributed systems, such as group communication, with traditional database replication. The ultimate result is a seamlessly distributed and replicated database over a set of MySQL servers cooperating together to keep the replicated state strongly consistent.

[Getting started with MySQL Group Replication](http://mysqlhighavailability.com/getting-started-with-mysql-group-replication/)
: The multi master plugin for MySQL is here. MySQL Group Replication ensures virtual synchronous updates on any node in a group of MySQL servers, with conflict handling and failure detection. Distributed recovery is also in the package to ease the process of adding new nodes to your server group.  
How do you start? Just sit back, download MySQL Group Replication from http://labs.mysql.com/ and then let us begin this journey into the world of multi master MySQL.

### ElasticSearch

[Elasticsearch 1.3.3 released](http://www.elasticsearch.org/blog/elasticsearch-1-3-3-released/)
: Today, we are happy to announce the bugfix release of Elasticsearch 1.3.3, based on Lucene 4.9.1. You can download it and read the full changes list here: Elasticsearch 1.3.3.  
Elasticsearch 1.3.3 is the latest stable release and we recommend that all users upgrade.

[Elasticsearch 1.4.0.Beta1 released](http://www.elasticsearch.org/blog/elasticsearch-1-4-0-beta-released/)
: Today, we are happy to announce the release of Elasticsearch 1.4.0.Beta1, based on Lucene 4.10.1. You can download them and read the full changes list here: Elasticsearch 1.4.0.Beta1.  
The theme of 1.4.0 is resiliency: making Elasticsearch more stable and reliable than ever before. It is easy to be reliable when everything functions as it should. The difficult part comes when the unexpected happens: nodes run out of memory, their performance is degraded by slow garbage collections or heavy I/O, networks fail or transmit data erratically.

### Architecture

[A State of Xen - Chaos Monkey & Cassandra](http://techblog.netflix.com/2014/10/a-state-of-xen-chaos-monkey-cassandra.html)
: On Sept 25th, 2014 AWS notified users about an EC2 Maintenance where “a timely security and operational update” needed to be performed that required rebooting a large number of instances. (around 10%)  On Oct 1st, 2014 AWS sent an updated about the status of the reboot and XSA-108.  
While we’d love to claim that we weren’t concerned at all given our resilience strategy, the reality was that we were on high alert given the potential of impact to our services.  We discussed different options, weighed the risks and monitored our services closely.  We observed that our systems handled the reboots extremely well with the resilience measures we had in place.  These types of unforeseen events reinforce regular, controlled chaos and continued to invest in chaos engineering is necessary. In fact, Chaos Monkey was mentioned as a best practice in the latest EC2 Maintenance update. 

[Caching the Uncacheable - Hooman Beheshti's Talk at Velocity NYC 2014](http://www.fastly.com/blog/Hooman-Beheshti-at-Velocity-NYC-2014/)
: Hooman Beheshti, VP of Technology at Fastly, recently gave a talk at Velocity NYC 2014 about the challenges CDNs face with dynamic content and how businesses can use programmatic means to fully integrate their applications with their CDN. If you missed it, check out the video below.  
In the past, CDNs have been used to cache and distribute static objects. But issues around invalidation, staleness, and lack of visibility have prevented companies from using CDNs to fully leverage the benefits of caching when it comes to dynamic content. Today, using a real-time, modern CDN that provides instant cache invalidation and real-time analytics allows for instantaneous control over dynamic content caching. 

[Nginx - create a cache based on upstream response time](http://blog.alteroot.org/articles/2014-10-01/nginx-cache-based-on-response-time.html)
: The problem : be able to cache a backend response if it took more than 5 seconds. If not, don't cache it!  
A good challenge from @florentsolt. He solves the problem with a nodejs reverse proxy behind nginx, but I prefer a pure nginx implementation ;)

[Instagram Improved their App's Performance. Here's How.](http://feedproxy.google.com/~r/HighScalability/~3/ZYY0iSmsVvQ/instagram-improved-their-apps-performance-heres-how.html)
: Is flat design just another pretty face or is it a huge performance hack cloaked as a UI revolution? It turns out flat design is a stone cold performance win.  
This and more is expertly explained by Tyler Kieft, Engineer at Instagram, in a crisp and content filled talk he gave at the @scale conference: Instagram on Typical Android. This talk was part of series of talks given by Facebook on how to design for the reality of mobile applications across the globe, where phones are slower, screens are smaller, and networks are slower than they are in the US.

### Cassandra

[Using the Cassandra Bulk Loader, Updated](http://planetcassandra.org/blog/using-the-cassandra-bulk-loader-updated/)
: We introduced sstableloader back in 0.8.1, in order to do bulk loading data into Cassandra. When it was first introduced, we wrote a blog post about its usage along with generating SSTable to bulk load.  
Now, Cassandra version 2.1.0 was released, and bulk loading has been evolved since the old blog post. Let’s see how the change makes our life easier than before.

### Monitoring

[Monitoring Best Practices Learned from IT Outages](http://blog.pagerduty.com/2014/09/monitoring-best-practices-it-outages/)
: At Datadog we eat our own… dogfood. We track hundreds of thousands of metrics internally. Learning what to alert on and what to monitor has taken us some time. Not all metrics are made equal, and we have come up with a simple way to manage them, which anyone can master. Here’s how we do it.

[The Importance of Severity Levels to Reduce MTTR](http://blog.pagerduty.com/2014/09/severity-levels-reduce-mttr/)
: We all know how important monitoring is for making sure our websites and applications stay error free, but that’s only one part of the equation. What do you do once an error has been found? How do you decide what steps to take next?  
Rating the severity of an issue and making sure the right person is notified plays a big role in how quickly and efficiently problems get resolved. We’ve pulled together a quick guide about the importance of error severity and how to set severity levels that fit your team’s escalation policy.

### Security

[Secure Your Linux Desktop and SSH Login Using Two Factor Google Authenticator](http://www.cyberciti.biz/open-source/howto-protect-linux-ssh-login-with-google-authenticator/)
: Two factor authentication is increasingly becoming a strongly recommended way of protecting user accounts in web applications from attackers by requiring a second method of authentication in addition to the standard username and password pair. Although two factor authentication can encompass a wide range of techniques like biometrics or smart cards, the most commonly deployed technique in web applications is the one time password. If you have used applications like Gmail, you are probably familiar with the one time password generated by the Google Authenticator app that's available on iOS or Android devices. The algorithm used for the one time password in the Google Authenticator app is known as the Time-based One-Time Password (TOTP) algorithm. The TOTP algorithm is a standard algorithm approved by the IETF in (RFC 6238) totp-rfc. 

[We Take Your Privacy and Security. Seriously.](http://feedproxy.google.com/~r/KrebsOnSecurity/~3/kthNdgAMIyg/)
: “Please note that [COMPANY NAME] takes the security of your personal data very seriously.” If you’ve been on the Internet for any length of time, chances are very good that you’ve received at least one breach notification email or letter that includes some version of this obligatory line. But as far as lines go, this one is about as convincing as the classic break-up line, “It’s not you, it’s me.”

[Slides of my nftables talk at Kernel Recipes](https://home.regit.org/2014/09/slides-of-my-nftables-talk-at-kernel-recipes/)
: I’ve been lucky enough to do a talk during the third edition of Kernel Recipes. I’ve presented the evolution of nftables durig the previous year.

[AES-256 Is Not Enough: Breaking a Bootloader](http://hackaday.io/project/956/log/10108-aes256-is-not-enough-breaking-a-bootloader)
: I'd been pushing hard trying to get a demo of how you can break an AES-256 bootloader. This type of bootloader is often used in products for protecting firmware updates and a good demonstration of why you should care about side channel attacks as an embedded engineer.  
It's not pretty but it does work, so I wanted to put some documentation and details up here. To start with, what bootloader should I target? I don’t want to give someone a bad name, since the point of this blog post is that any similar bootloader can be attacked. For this reason I’ve chosen to implement my own, but basing it on a number of real bootloaders I studied.

[More on High Frequency Trading and microwave towers... or even lasers](http://www.extremetech.com/extreme/154977-high-frequency-stock-traders-turn-to-laser-networks-to-make-more-money)
: If you thought that stock traders made enough money, and wielded enough power over the global economy, think again: Financial traders are now turning to high-speed laser networks between stock exchanges, to decrease latency by a few milliseconds, to squeeze a few more trillion dollars per year out of high-frequency trading (HFT).

### Chef

[Chef and Orchestration](https://www.getchef.com/blog/2014/10/01/chef-and-orchestration/)
: When talking about the management of complex systems, orchestration is always a hot topic. This is because orchestration is often seen as the easiest way to represent and model complex systems, as well as provide a path to delivering complex systems.  
Most often orchestration is represented through a topology model. What is a topology model you ask? A description of the order-of-operations across a group of machines. A common example is provisioning a database, cache layer, multiple application servers, web servers, and load balancer(s). This model will include distinct technology components that must interact, are interdependent, and more often than not the provisioning is accomplished through a very specific order.

### Redis

[Redis Running Slowly? Here’s What You Can Do About it](https://redislabs.com/blog/redis-running-slowly-heres-what-you-can-do-about-it)
: Redis is blazing fast and can easily handle hundreds of thousands to millions of operations per second (of course, YMMV depending on your setup), but there are cases in which you may feel that it is underperforming. This slowness of operations - or latency - can be caused by a variety of things, but once you've ruled out the usual suspects (i.e. the server's hardware/virtualware, storage and network) you should also examine your Redis settings to see what can be optimized.

