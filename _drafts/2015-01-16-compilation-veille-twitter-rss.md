---
layout: post
title: "Compilation veille Twitter & RSS"
category: veille
---

La moisson de liens pour les semaine du 12 au 16 janvier 2015.
Ils ont, pour la plupart été publiés sur mon compte Twitter.
Les voici rassemblés pour ceux qui les auraient raté.

Bonne lecture

## Monitoring

[Service status updates improved](https://cachethq.io/)
: Cachet is a simple to use and easy to manage status page system and can be easily installed and used to track third party service letting your users know what's going on.

[StackExchange's Performance Dashboard](http://highscalability.com/blog/2015/1/14/stackexchanges-performance-dashboard.html)
: StackExchange created a very cool performance dashboard that looks to be updated from real system metrics. Wouldn't it be fascinating if every site had a similar dashboard ?  
The dashboard contains information like there are 560 million page views per month, 260,000 sustained connections,  34 TB data transferred per month, 9 web servers with 48GB of RAM handling 185 req/s at 15% CPU usage. There are 4 SQL servers, 2 redis servers, 3 tag engine servers, 3 elasticsearch servers, and 2 HAProxy servers, along with stats on each.

## Virtualization

### Docker

[My Docker terminal aliases](http://blog.zedroot.org/my-docker-terminal-aliases/)
: In the case you developer using Docker, you have to adapt your environment in order to ease your life, like you did before.  
For example, I had created a function sc (for script console) in order to start the Rails console no matter the version of Rails. Since I'm working with Docker, I have updated this function in order to use Docker when it is possible (with Fig).

## Chef

[Quick Tip: Testing Conditionals in ChefSpec](http://jtimberman.housepub.org/blog/2015/01/12/quick-tip-testing-conditionals-in-chefspec/)
: ChefSpec is a great way to create tests for Chef recipes to catch regressions. Sometimes recipes end up having branching conditional logic that can have very different outcomes based on external factors – attributes, existing system state, or cross-platform support.

## Architecture

[Does SDPY (or HTTP/2) Actually Help?](https://ma.ttias.be/sdpy-http2-actually-help/)
: Here's an interesting PDF to read: How speedy is SPDY?.  
I'll spoil the results for you, but still encourage you to read the entire PDF to see how the conclusions were built.

[Hyper-threading – how does it double CPU throughput?](http://www.percona.com/blog/2015/01/15/hyper-threading-double-cpu-throughput/)
: The other day a customer asked me to do capacity planning for their web server farm. I was looking at the CPU graph for one of the web servers that had Hyper-threading switched ON and thought to myself: “This must be quite a misleading graph – it shows 30% CPU usage. It can’t really be that this server can handle 3 times more work?”

[Notes on Microservices by Martin Fowler](http://juristr.com/blog/2015/01/notes-microservices-fowler-xconf/)
: I just watched Martin Fowler's talk about Microservices at XConf. Here are some of my notes and related thoughts. The talk is heavily based upon Martin Fowler and James Lewis' article about Microservices, so you can find and read most of the information there.

## Cloud

[The Stunning Scale of AWS and What it Means for the Future of the Cloud](http://highscalability.com/blog/2015/1/12/the-stunning-scale-of-aws-and-what-it-means-for-the-future-o.html)
: James Hamilton, VP and Distinguished Engineer at Amazon, and long time blogger of interesting stuff, gave an enthusiastic talk at AWS re:Invent 2014 on AWS Innovation at Scale. He’s clearly proud of the work they are doing and it shows.

## Databases

[Market Guide for In-Memory DBMS](http://blog.memsql.com/gartner-in-memory-guide/)
: From the inception of MemSQL, we’ve seen the ability to merge transactions and analytics into a single database system as a core function for any data centric organization. Gartner’s recent report, “Market Guide for In-Memory DBMS” mirrors that belief, and is chock full of key findings and recommendations for businesses looking to take advantage of in-memory computing.

[First TokuMXse performance numbers](http://www.tokutek.com/2015/01/first-tokumxse-performance-numbers/)
: We’ve been working on TokuMXse for quite some time now. TokuMXse is the MongoDB 2.8 storage engine version of TokuMX that we’ll be shipping when MongoDB 2.8 goes GA. We will have an RC version available soon for download and feedback. Before we dig into the numbers I’d like to share my thoughts about them.

### MySQL

[MySQL performance implications of InnoDB isolation modes](http://www.percona.com/blog/2015/01/14/mysql-performance-implications-of-innodb-isolation-modes/)
: Over the past few months I’ve written a couple of posts about dangerous debt of InnoDB Transactional History and about the fact MVCC can be the cause of severe MySQL performance issues. In this post I will cover a related topic – InnoDB Transaction Isolation Modes, their relationship with MVCC (multi-version concurrency control) and how they impact MySQL performance.

[Relay Log Recovery when SQL Thread’s Position is Unavailable](http://mysqlserverteam.com/relay-log-recovery-when-sql-threads-position-is-unavailable/)
: This blog explains how relay log recovery happens in a scenario where an applier thread (`SQL_Thread`) is starting for the first time and its starting position is not available for relay log recovery operations. If you are using GTIDs with `MASTER_AUTO_POSITION` then the following is more or less irrelevant since we then employ a more resilient repositioning scheme. The potential issue described here will also not occur if you have employed crash-safe replication settings, including `--sync_master_info=1`. With those disclaimers out of the way, let’s proceed.

### Elasticsearch

[Google Cloud Platform Delivers Real-Time Search with Click-to-Deploy Elasticsearch](http://www.elasticsearch.org/blog/google-cloud-platform-delivers-real-time-search-with-click-to-deploy-elasticsearch/)
: From the beginning, one of the goals of Elasticsearch was to build a search and analytics engine that could be used in any environment, with any kind of data. We know that today’s modern businesses have a polyglot infrastructure, with mixed environments and multiple programming languages — from relational databases, key-value stores, IaaS platforms, and Apache Hadoop; to Ruby, Perl, PHP, Python, and Groovy — and we wanted to provide a software stack that could be utilized by anyone across an entire business. 

### Cassandra

[Personalization at Spotify Using Apache Cassandra](http://planetcassandra.org/blog/personalization-at-spotify-using-apache-cassandra/)
: At Spotify we have have over 60 million active users who have access to a vast music catalog of over 30 million songs. Our users have a choice to follow thousands of artists and hundreds of their friends and create their own music graph. On our service they also discover new and existing content by experiencing a variety of music promotions (album releases, artist promos), which get served over our ad platform. These options have empowered our users and made them really engaged. Over time they have created over 1.5 billion playlists and just last year they streamed over 7 billion hours worth of music.

## MaxScale

[MaxScale and Transparent Session Handling](https://mariadb.com/blog/maxscale-and-transparent-session-handling)
: Applications are often built on top of single MySQL-compliant database instance but often there is a need for more performance and/or availability than what one database instance can provide. Adding slaves or replacing standalone database server with full-fledged MySQL-compliant cluster often requires changes to the application.

### Redis

[rdb-merger: Merge and Convert Redis RDB Files](https://redislabs.com/blog/rdb-merger-merge-and-convert-redis-rdb-files)
: If you're using Redis you probably already know all about its data persistence mechanisms, namely Append-Only-Files (AOF) and RDB files, but in case you need a refresher on these take a few minutes and read this documentation page and this blog post to get quickly up to speed. Already back? Good. Now, imagine you have multiple RDB files that you want to merge – how would you do that?

## Big Data

[Building a platform to understand search queries](http://engineering.pinterest.com/post/107907658519)
: Millions of people use Pinterest as a visual discovery tool each day. Search is one of the primary tools that drives discovery on the site and across our apps. In order to help Pinners find what they’re searching for in the most effective ways, we must understand their intentions behind search queries.

[Using Apache Sqoop for Load Testing](http://blog.cloudera.com/blog/2015/01/using-apache-sqoop-for-load-testing/)
: Recently, the State of Indiana has begun to focus on how enterprise data management can help our state’s government operate more efficiently and improve the lives of our residents. With that goal in mind, I began this journey just like everyone else I know: with an interest in learning more about Apache Hadoop.

[How to Avoid the Big Data Black Hole](https://blog.logentries.com/2014/09/how-to-avoid-the-big-data-black_hole/)
: It takes a lot of will power, in our data obsessed world to say “too much!” However, there are many ways where too much information is destroying productivity, and actually causing bad decision making, not good. But it is hard to avoid the world of opportunities that has been opened in data collection and analysis. So how do you balance the two? The first step is to understand there is a big difference between data collection, and it’s utilization. While it seems subtle, the difference is key, and utilization is where many make mistakes.

### Data Science

[Derivation of the Normal Equation for Linear Regression](http://java.dzone.com/articles/derivation-normal-equation)
: I was going through the Coursera "Machine Learning" course, and in the section on multivariate linear regression something caught my eye. Andrew Ng presented the Normal Equation as an analytical solution to the linear regression problem with a least-squares cost function. He mentioned that in some cases (such as for small feature sets) using it is more effective than applying gradient descent; unfortunately, he left its derivation out.

[How to Emulate the MEDIAN() Aggregate Function Using Inverse Distribution Functions](http://blog.jooq.org/2015/01/06/how-to-emulate-the-median-aggregate-function-using-inverse-distribution-functions/)
: Some databases are awesome enough to implement the `MEDIAN()` aggregate function. Remember that the `MEDIAN()` is sligthly different from (and often more useful than) the `MEAN()` or `AVG()` (average).

[Counting Primitive Bit Strings](http://www.johndcook.com/blog/2014/12/23/counting-primitive-bit-strings/)
: A string of bits is called primitive if it is not the repetition of several copies of a smaller string of bits. For example, the 101101 is not primitive because it can be broken down into two copies of the string 101. In Python notation, you could produce 101101 by "101"*2. The string 11001101, on the other hand, is primitive. (It contains substrings that are not primitive, but the string as a whole cannot be factored into multiple copies of a single string.

### Analytics

[Simplify your Google Analytics Reporting with Add-ons for Google Sheets](http://analytics.blogspot.fr/2015/01/simplify-your-google-analytics.html)
: It's common for Google Analytics users to use spreadsheets to analyze their Google Analytics data or combine it with another data source. But exporting your data from Google Analytics to Google Sheets is a manual process, and it can be tedious if you run reports frequently or manage multiple accounts. With the release of Add-ons for Google Sheets, getting your Google Analytics data into Google Sheets has never been easier!

[Dynamite Plots, Logs, & the Joy In Knowing](https://blog.logentries.com/2015/01/dynamite-plots-logs-the-joy-in-knowing/)
: I believe it was Mark Twain that said, “Humor is the good natured side of truth.” Well, in my humble opinion, humor can be used as the genesis for interesting blog posts. So, you may be wondering, what do Dynamite Plots, logs and the joy of knowledge have to do with each other?

[Using Social Networking to Gauge the Mood of a Community](http://adigaskell.org/2015/01/09/using-social-networks-to-gauge-the-mood-of-a-community/)
: Over the last few years there have been an increasing number of attempts to use social network data to understand various things about the real world.  
For instance, only recently I wrote about a new project that is using Twitter data to try and underpin better urban policy making and planning.

## Security

[Security Is More Than Isolation – Security Basics for Docker](https://blog.cloudpassage.com/2015/01/13/security-isolation-security-basics-docker/)
: There have been lots of discussions during the past year about the security of Docker containers, but a majority of them seem to have been focused on just one aspect of containers: isolation. Kernel namespaces (process isolation), control groups (resource isolation) and traditional virtualization comparisons (hypervisor isolation) have been hot topics this past year and all discuss different aspects of the same core concept of isolation. Putting all your eggs in one basket has never been a good idea, and security professionals shouldn’t let a hyper focus on isolation create a distraction from security basics.

[Do Your Anti-CSRF Tokens Really Protect Your Web Apps from CSRF Attacks?](https://community.qualys.com/blogs/securitylabs/2015/01/14/do-your-anti-csrf-tokens-really-protect-your-applications-from-csrf-attack)
: Cross-Site Request Forgery (CSRF) is an attack that tricks the victim's browser into executing malicious requests designed by the attacker.  A successful CSRF attack can force the victim's browser to perform state-changing requests like transferring funds or changing his email address. Clearly these are attacks that need to be prevented.

[A Call for Better Vulnerability Response](http://blog.erratasec.com/2015/01/a-call-for-better-vulnerability-response.html)
: Microsoft forced a self-serving vulnerability disclosure policy on the industry 10 years ago, but cries foul when Google does the same today.  
Ten years ago, Microsoft dominated the cybersecurity industry. It employed, directly or through consultancies, the largest chunk of security experts. The ability to grant or withhold business meant influencing those consulting companies -- Microsoft didn't even have to explicitly ask for consulting companies to fire Microsoft critics for that to happen. Every product company depended upon Microsoft's goodwill in order to develop security products for Windows, engineering and marketing help that could be withheld on a whim.

## Dev

[Optimistic Locking](http://sqlknowledgebank.blogspot.com/2015/01/optimistic-locking.html)
:  We all know about Isolation level of MS SQL Server. But there are certain confusion related to Optimistic Locking technique. This article is for the advance SQL Developer to learn and understand Optimistic Locking system. If you are new in Isolation level please read my previous article named Isolation Level of MS SQL Server. Hope it will be knowledgeable and helpful.

[6 Ways to Quantify Your Code - and Why You Need to Do It](http://java.dzone.com/articles/6-ways-quantify-your-code-and)
: Businesspeople dig numbers. They don’t necessarily want to hear that you got something done; they want to hear how much you got done—especially relative to past results or some other relevant benchmark—and they want to know the value of what you did.

## Log management

[Why Log Management is a Key Underpinning of the Internet of Things](http://java.dzone.com/articles/why-log-management-key-0)
: While the Internet of Things (IoT) has been in development for a number of years, it’s fast becoming the technology everyone is talking about, as evidenced by its tremendous presence at this year’s Consumer Electronics Show.

[Using Regular Expressions to understand NginX, Apache and IIS logs](https://blog.logentries.com/2015/01/using-regex-with-nginx-apache-iis/)
: Regular expressions offer something that automata do not: a declarative way to express the strings we want to accept. This is why we use it as the input language for our platform to process logs in many heterogeneous formats. When we learn how to extract key values using RegEx from any log format we can start to think how to apply it to some of the more popular log formats. In this blog post we take the most popular log formats for web servers: Apache, Nginx, IIS and create community packs using our new RegEx field extraction, which allow you to easily analyse, understand and search logs from these platforms.

## Performance management

[Time to check your data usage? The average page served to mobile devices is now 1 MB in size.](http://www.webperformancetoday.com/2015/01/14/mobile-page-growth/)
: If you asked me to name the single greatest indicator of performance for pages served to mobile devices, I’d say this: faster pages are (almost) always less than 1 MB in size. Show me a fat page, and I’ll show you a slow page.

[Varnish book](https://github.com/varnish/Varnish-Book/blob/Varnish-Book-v4/varnish_book.rst)
: The Varnish Book is the training material for Varnish Plus courses. The book teaches technical staff to use Varnish Cache 4 and selected modules of Varnish Plus effectively.  
The book explains how to get started with the Varnish, and its Varnish Configuration Language (VCL). Covered are such procedures to effectively use VCL functions, cache invalidation, and more. Also included are Varnish programs such as varnishtop, and extra material.

[The Argument for Testing Performance in Production](https://developer.ibm.com/urbancode/2014/08/19/argument-testing-performance-production/)
: I encounter teams that do formal performance testing less frequently than in the past. For many teams, this is just the result of being spread too thin across QA and not having the resources to do performance testing well. However, in some more agile shops there’s an active argument against performance testing, especially load testing.

## Management

[What It Takes to Develop an Agile Transformation Strategy](http://www.leadingagile.com/2015/01/takes-develop-agile-transformation-strategy/)
: Okay… this is going to be a precursor to a more fully developed whitepaper, but I want to see if I can tightly articulate the LeadingAgile approach to designing and executing an enterprise agile transformation. This post is going to focus on the ‘what’ and leave out the ‘why’ and the ‘how’ for the time being. We’ll get back to those as the conversation progresses.

[We Invite Everyone at Etsy to Do an Engineering Rotation: Here’s why](https://codeascraft.com/2014/12/22/engineering-rotation/)
: At Etsy, it’s not just engineers who write and deploy code – our designers and product managers regularly do too. And now any Etsy employee can sign up for an “engineering rotation” to get a crash course in how Etsy codes, and ultimately work with an engineer to write and deploy the code that adds their photo to our about page. In the past year, 70 employees have completed engineering rotations. Our engineers have been pushing on day one for a while now, but it took a bit more work to get non-coders prepared to push as soon as their second week. In this post I’ll explain why we started engineering rotations and what an entire rotation entails.
