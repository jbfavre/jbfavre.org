---
layout: post
title: "Compilation veille Twitter & RSS #2015-08"
category: veille
---

La moisson de liens pour les semaine du 23 au 27 janvier 2015.
Ils ont, pour la plupart été publiés sur mon compte Twitter.
Les voici rassemblés pour ceux qui les auraient raté.

Bonne lecture

## Net Neutrality

[Thoughts on Network Neutrality, the FCC, and the Future of Internet Governance](http://blog.cloudflare.com/net-neutrality/)
: Today the United States Federal Communications Commission (FCC) voted to extend the rules that previously regulated the telephone industry to now regulate Internet Service Providers (ISPs). The Commission did this in order to preserve the principle of network neutrality. Broadly stated, this principle is that networks should not discriminate against content that passes through them.

## Monitoring

[Logging Your Entire Software Delivery Pipeline](https://blog.logentries.com/2015/02/logging-your-entire-software-delivery-pipeline/)
: When we think of traditional development and production operations, we often put everything into a linear software delivery pipeline that starts with a development backlog, and ends with production monitoring. We slot tools at each stage, and for the most part, keep everything segmented. Log analysis is a common tool in that chain but where does it fit? At the end? I think not.

## Big Data

### Hadoop

[Using MongoDB with Hadoop & Spark: Part 1 - Introduction & Setup](http://www.mongodb.com/blog/post/using-mongodb-hadoop-spark-part-1-introduction-setup)
: Hadoop is a software technology designed for storing and processing large volumes of data distributed across a cluster of commodity servers and commodity storage. Hadoop was initially inspired by papers published by Google outlining its approach to handling large volumes of data as it indexed the Web. Many organizations are now harnessing the power of Hadoop and MongoDB together to create complete big data applications: MongoDB powers the online, real time operational application, while Hadoop consumes data from MongoDB and blends its with data from other operational systems to fuel sophisticated analytics and machine learning.

[Apache HBase 1.0 is Released](http://blog.cloudera.com/blog/2015/02/apache-hbase-1-0-is-released/)
: The Apache HBase community has released Apache HBase 1.0.0. Seven years in the making, it marks a major milestone in the Apache HBase project’s development, offers some exciting features and new API’s without sacrificing stability, and is both on-wire and on-disk compatible with HBase 0.98.x.

### Analytics

[Data, data and data about your favourite community: GrimoireLib](http://blog.bitergia.com/2015/02/25/data-data-data-about-your-favourite-community/)
: [This post is part of the lightning talk presented at FOSDEM 2015. The talk was titled as “Data, data and data about your favourite community” whose slides are available in the Bitergia’s Speakerdeck place. The ipython notebook used for visualization purposes is accesible through nbviewer and can be downloaded in GitHub. This is a basic introduction to GrimoireLib.]

[All about Statistics (Part – I)](http://sqlknowledgebank.blogspot.fr/2015/02/all-about-statistics-part-i.html)
: I got a query from one of my friends. He is asking about when to use `sp_updatestats` and how frequently we can use it. To answer his query, I decide to write some words related to Statistics. Hope it will be informative for all of us.

[Optimal Binning for Scoring Modeling (R Package)](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:251991)
: The R Package smbinning categorizes a numeric variable into bins (intervals) for its ulterior usage in scoring modeling. The theory behind it falls within a branch of Machine Learning called Supervised Discretization, a categorization technique that divides a continuous variable into a small number of intervals mapped to a discrete target variable. For example, time since an account was open (Integer in Months) and the credit performance (Good/Bad), as shown in Table 1.

## Security

[Web Application Security Top 10](http://www.ossmentor.com/2015/02/web-application-security-top-10.html)
: OWASP (Open Web Application Security Project) is an organization focused on improving security of software.  Their mission is to make software security visible so that individuals and organizations can make informed decisions about software security risks.  They published a Top Ten document to promote awareness for Web Application Security.   The top ten represents the most critical web application security flaws.

### SSL

[Enforce Web Policy with HTTP Strict Transport Security (HSTS)](http://blog.cloudflare.com/enforce-web-policy-with-hypertext-strict-transport-security-hsts/)
: HTTP Strict Transport Security (HSTS, RFC 6797) is a web security policy technology designed to help secure HTTPS web servers against downgrade attacks. HSTS is a powerful technology which is not yet widely adopted. CloudFlare aims to change this.

[Universal SSL: Encryption all the way to the origin, for free](http://blog.cloudflare.com/universal-ssl-encryption-all-the-way-to-the-origin-for-free/)
: Last September, CloudFlare unveiled Universal SSL, enabling HTTPS support for all sites by default. All sites using CloudFlare now support strong cryptography from the browser to CloudFlare’s servers. One of the most popular requests for Universal SSL was to make it easier to encrypt the other half of the connection: from CloudFlare to the origin server.

[TLS Session Resumption: Full-speed and Secure](http://blog.cloudflare.com/tls-session-resumption-full-speed-and-secure/)
: At CloudFlare, making web sites faster and safer at scale is always a driving force for innovation. We introduced “Universal SSL” to dramatically increase the size of the encrypted web. In order for that to happen we knew we needed to efficiently handle large volumes of HTTPS traffic, and give end users the fastest possible performance.

[Do the ChaCha: better mobile performance with cryptography](http://blog.cloudflare.com/do-the-chacha-better-mobile-performance-with-cryptography/)
: CloudFlare is always trying to improve customer experience by adopting the latest and best web technologies so that our customers (and their visitors) have a fast and a secure web browsing experience.  
More and more web sites are now using HTTPS by default. This sea change has been spearheaded by many groups including CloudFlare enabling free SSL for millions of sites with Universal SSL, Google moving towards marking plain HTTP as insecure in Chrome, and the Let’s Encrypt project’s plans to make certificates free in 2015.

[End of the road for RC4](http://blog.cloudflare.com/end-of-the-road-for-rc4/)
: Today, we completely disabled the RC4 encryption algorithm for all SSL/TLS connections to CloudFlare sites. It's no longer possible to connect to any site that uses CloudFlare using RC4.

## Virtualization

[The New Minimalist Operating Systems](https://blog.docker.com/2015/02/the-new-minimalist-operating-systems/)
: Part of my work on the Technical Alliances team at Docker involves exploring innovative projects our ecosystem partners are working on.  One area that has seen radical change in recent years is the operating system (OS).  You may have noticed some new OS releases: CoreOS (August 2013), Project Atomic (April 2014), and more recently Snappy Ubuntu Core (December 2014). These are all minimalist OSs designed to host Docker applications and simplify your infrastructure.  If you are interested in the distinguishing features of each and how they differ from traditional Linux distributions, read on.

### Docker

[Orchestrating Docker with Machine, Swarm and Compose](https://blog.docker.com/2015/02/orchestrating-docker-with-machine-swarm-and-compose/)
: Back in December, we announced our new tools for orchestrating distributed apps: Machine, Swarm, and Compose.  
Today the first versions of these tools are available to download. They’re not ready for production yet, but we’d really like for you to try them out and tell us what you think.

[Announcing Docker Machine Beta](https://blog.docker.com/2015/02/announcing-docker-machine-beta/)
: At DockerCon EU earlier this year, we announced Docker Machine, a tool that makes it really easy to go from “zero to Docker”. Machine creates Docker Engines on your computer, on cloud providers, and/or in your data center, and then configures the Docker client to securely talk to them.

[Scaling Docker with Swarm](https://blog.docker.com/2015/02/scaling-docker-with-swarm/)
: We are extremely excited to announce the first beta release of Swarm, a native clustering tool for Docker.  
For the past two years, Docker has made the lives of millions of developers easier by making building, shipping and running applications simpler through containers. However, things get complicated when dealing with more than one host for Docker containers in a distributed environment.

[Announcing Docker Compose](https://blog.docker.com/2015/02/announcing-docker-compose/)
: Today we’re excited to announce that Docker Compose is available for download. Docker Compose is an orchestration tool that makes spinning up multi-container applications effortless. Head to the install docs to download it.

[Docker 1.5: IPv6 support, read-only containers, stats, “named Dockerfiles” and more](https://blog.docker.com/2015/02/docker-1-5-ipv6-support-read-only-containers-stats-named-dockerfiles-and-more/)
: The Docker project team wanted to start the new year out right with something awesome; that’s why we’re super excited to announce the first Docker release for 2015. We’ve smashed many long-standing, annoying bugs and merged a few awesome features that both the community and maintainers are excited about. Let’s check out what’s in Docker 1.5.

## Tools

[jq is sed for JSON](https://robots.thoughtbot.com/jq-is-sed-for-json)
: `sed` is a useful tool that reformats and transforms plain text. But `sed` is not a good match for structured data like JSON. `jq` is a sed-like tool that is specifically built to deal with JSON.

[Giving HTTPie a Chance](http://ma.ttias.be/giving-httpie-chance/)
: Maybe it's time to give ye ol' curl some competition.

## Dev

[OAuth 2 Plugin to Simplify Mobile Development in Appery.io](http://maxkatz.org/2015/02/24/oauth-2-plugin-to-simplify-mobile-development-in-appery-io/)
: OAuth 2.0 protocol is now the most popular authentication protocol for apps. By using OAuth protocol, you can securely authenticate with a variety of popular services what will increase app functionality and cover a much larger target audience.

### Android

[Android Permissions Explained](http://developer.telerik.com/featured/android-permissions-explained/)
: When you develop an Android app, your users will justifiably be concerned if your app requests access to a myriad of device features and personal information. You are risking decreased app installations and increased suspicions of your app’s motives if you ask your users for personal data, contacts, access to their phone, SMS messages, and so on. In this article I hope to pull back the curtains on Android permissions and help you develop and distribute your apps more efficiently, without raising the ire of your customers.

### iOS

[Open-sourcing PINCache](http://engineering.pinterest.com/post/112057905219)
: Because the Pinterest iOS app downloads and processes an enormous amount of data, we use a caching system to cache models and images to avoid eating into our Pinners’ (users’) data plans. For quite some time we used TMCache to persist GIFs, JPEGs and models to memory and disk, but after using it in production, Pinners were reporting the app was hanging. After attributing the issue to TMCache, we re-architected a significant portion and forked the project, which resulted in our new open-source caching library, PINCache, a non-deadlocking object cache for iOS and OSX. Here’s how we went from deadlocks to forking.

### PHP

[The problem with i`password_hash()` - Evert Pot](http://evertpot.com/password-hash-ew/)
: PHP 5.5 introduced a new set of functions to hash and validate passwords in in PHP: `password_hash()`, `password_validate()` and friends.

### Frontend

[Usability Testing for Detailed Design Using Mechanical Turk](http://blog.getprismatic.com/usability-testing-for-detailed-design-using-mechanical-turk/)
: In designing story units for our new home feed, we knew subtle variations could make a big difference. To test different variations, we started with in-person interviews. Once we realized that we had biased the results with the ordering of story units in the mocks, it became clear that we’d need to test too many variations to make in-person interviewing a feasible method. These complications make it tempting to forgo testing entirely, or to just build different variations and A/B test in production. While this production feedback loop is important, it’s also expensive to build and A/B test a large numbers of different options. The more we can narrow the decision space with sound research methods, the better.

[An Open-Source JavaScript Library for Mobile-Friendly Interactive Maps](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:252647)
: Leaflet is a modern open-source JavaScript library for mobile-friendly interactive maps. It is developed by Vladimir Agafonkin with a team of dedicated contributors. Weighing just about 33 KB of JS, it has all the features most developers ever need for online maps.

### GIT

[I dropped a large binary object in Git ... now what?](http://www.sadev.co.za/content/i-dropped-large-binary-object-git-now-what)
: or how do I remove a file from Git, including the history. This came out of a discussion with some ALM Rangers (in fact the title was from Willy-Peter himself!) and I thought it is too good not to share. In addition I’ve added some other information I learnt since then !

## Databases

[Increasing Cloud Database Efficiency – Like Crows in a Closet](http://www.tokutek.com/2015/02/increasing-cloud-database-efficiency-like-crows-closet/)
: In Mo’ Data, Mo’ Problems, we explored the paradox that “Big Data” projects pose to organizations and how Tokutek is taking an innovative approach to solving those problems. In this post, we’re going to talk about another hot topic in IT, “The Cloud,” and how enterprises undertaking Cloud efforts often struggle with idea of “problem trading.” Also, for some reason, databases are just given a pass as traditionally “noisy neighbors” and that there is nothing that can be done about it. Lets take a look at why we disagree.

### MySQL

[Worrying about the ‘InnoDB: detected cycle in LRU for buffer pool (…)’ message?](http://www.percona.com/blog/2015/02/26/worrying-about-the-innodb-detected-cycle-in-lru-for-buffer-pool-message/)
: f you use Percona Server 5.5 and you have configured it to use multiple buffer pool instances than sooner or later you’ll see the following lines on the server’s error log and chances are you’ll be worried about them:
```
InnoDB: detected cycle in LRU for buffer pool 5, skipping to next buffer pool.
InnoDB: detected cycle in LRU for buffer pool 3, skipping to next buffer pool.
InnoDB: detected cycle in LRU for buffer pool 7, skipping to next buffer pool.
```
Worry not as this is mostly harmless. It’s becoming a February tradition for me (Fernando) to face a question about this subject (ok, it’s maybe a coincidence) and this time I’ve teamed up with my dear colleague and software engineer George Lorch to provide you the most complete blog post ever published on this topic … (with a belated thank you! to Ernie Souhrada, with whom I’ve also discussed this same matter one year ago).

[Shinguz: MySQL Enterprise Incremental Backup simplified](http://www.fromdual.com/mysql-enterprise-incremental-backup-simplified)
: MySQL Enterprise Backup (MEB) has the capability to make real incremental (differential and cumulative?) backups. The actual releases are quite cool and you should really look at it...

[Using MySQL Event Scheduler and how to prevent contention](http://www.percona.com/blog/2015/02/25/using-mysql-event-scheduler-and-how-to-prevent-contention/)
: MySQL introduced the Event Scheduler in version 5.1.6. The Event Scheduler is a MySQL-level “cron job”, which will run events inside MySQL. Up until now, this was not a very popular feature, however, it has gotten more popular since the adoption of Amazon RDS – as well as similar MySQL database as a service offerings where there is no OS level.

[Everything You Need to Know About Scaling MySQL Part 8: Wrapping Up](http://blog.clustrix.com/2015/02/24/everything-need-know-scaling-mysql-part-8-wrapping/)
: We have come to the end of the line for our “Everything You Need to Know About Scaling MySQL” series and we hope you have come away with some valuable insight into how to optimize your e-commerce website. For those who may have missed an installment or two—or simply need a refresher—here is an overview of the key takeaways from each of the previous seven pieces

[Is MySQL’s `innodb_file_per_table` slowing you down?](http://www.percona.com/blog/2015/02/24/mysqls-innodb_file_per_table-slowing/)
: MySQL’s `innodb_file_per_table` is a wonderful thing – most of the time. Having every table use its own .ibd file allows you to easily reclaim space when dropping or truncating tables. But in some use cases, it may cause significant performance issues.

[What Is Com admin commands In MySQL?](https://vividcortex.com/blog/2015/02/23/what-is-com-admin-commands-in-mysql/)
: If you’ve ever looked at the `COM_XYZ` status counters in MySQL’s SHOW STATUS output, you’ve probably seen `Com_admin_commands`. It’s not clear what this means, but it can be a major contributor to overall `COM_` counters, and it’s actually quite important for server and application performance, as well as being a marker of code quality. In this blog post I’ll explain what the counter really means, and then as a bonus I’ll demonstrate that VividCortex will show you exactly what’s going on in the murkiness of “admin commands.”

[Causal Consistency](https://blog.mariadb.org/causal-consistency/)
: Causal consistency is one of the consistency criteria that can be used on distributed databases as consistency criteria.  
Distributed database provides causal consistency if read and write operations that are causally related are seen by every node of the distributed system in the same order. Concurrent writes may be seen in different order in diffrent nodes.  Causal consistency is waker than sequential consistency but stronger than eventual consistency. See earlier blog for more detailed description on [eventual consistency](https://blog.mariadb.org/eventually-consistent-databases-state-of-the-art/).

### Cassandra

[Cassandra: Intro to Designing Tables Access, Query and so on.](http://architects.dzone.com/articles/cassandra-intro-designing)
: Cassandra is a fast NoSQL data store that has the distributed capabilities of Amazon's DynamoDB and Google's BigTable data structure.  
Cassandra is a scalable, high available and partition tolerant database that had focused  specifically with 'AP' of CAP theorem, however, 'C' can be achieved with higher performance penalty, by getting a quorum of all the nodes participating in the cluster.  
I think that is already some background, so we should really start on the important stuff of this write-up.

## Management

[DevOps in Scaled Agile Models – Which one is best?](http://notafactoryanymore.com/2015/02/10/devops-in-scaled-agile-models-which-one-is-best/)
: I have already written about the importance of DevOps practices (or for that matter Agile technical practices) for Agile adoption and I don’t think there are many people arguing for the contrary. Ultimately, you want those two things to go hand in hand to maximise the outcome for your organisation. In this post I want to have a closer look at popular scaling frameworks to see whether these models explicitly or implicitly include DevOps. One could of course argue that the Agile models should really focus on just the Agile methodology and associated processes and practices. However, given that often the technical side is the inhibitor of achieving the benefits of Agile, I think DevOps should be reflected in these models to remind everyone that Software is being created first and foremost by developers.

[Don’t waste time tracking technical debt](http://swreflections.blogspot.fr/2015/02/dont-waste-time-tracking-technical-debt.html)
: For the last couple of years we’ve been tracking technical debt in our development backlog. Adding debt payments to the backlog, making the cost and risk of technical debt visible to the team and to the Product Owner, prioritizing payments with other work, is supposed to ensure that debt gets paid down.

[Agile Culture –> Self-Managing People](http://agilitrix.com/2015/02/agile-culture-self-managing-people/)
: Four years ago, I argued that Agile is a Culture System focussed on Collaboration and Cultivation. We may build on and refine this understand to see that Agile points towards a higher level of organizational consciousness and the benefits that come with it. In particular, Agile is about valuing people and setting them free to deliver.

[Could employees choose their own manager?](http://www.robg3d.com/2015/02/could-employees-choose-their-own-manager/)
: Someone once brought up to me a plan about enabling employees to choose their own manager. The idea has stuck with me for a while, and being in my current position of authority I’ve pondered it more actively. I’ll use this post to collect my thoughts, and maybe present some ideas for discussion. I’m not going to evaluate the benefits or if this is a good idea, but only think about the practicalities.

[Transformation Agile : est-ce SAFe pour moi ? (French only)](http://blog.octo.com/transformation-agile-est-ce-safe-pour-moi/)
: Si d’aventure vous avez suivi la blogosphère agile ces 18 derniers mois, il peu probable que vous ayez échappé au buzz créé par le framework SAFe : Scaled Agile Framwork. Est-ce le nouveau Grâal du déploiement de l’agile à l’échelle de l’entreprise ? Est-ce la recette de la potion magique des Google, Amazon, Netflix et autres (Gaulois) Géants du Web ? Je vous propose de gagner un peu de temps et répondre d’ores et déjà que non. SAFe n’est pas LE framework universel qui s’appliquera comme par enchantement à votre contexte et fera de vous l’Amazon de votre secteur d’activité.

[Scrum Teams, "PURIFFY" your Sprint Increment!](http://architects.dzone.com/articles/scrum-teams-puriffy-your)
: In Scrum, each sprint produces an increment, which is a partial and potentially releasable product. To be releasable, the increment must meet all acceptance criteria and pass different categories of tests. Consequently, each sprint should consider all testing activities required for a releasable product. Unfortunately, during my work on different projects, I have observed that many teams focus only on a subset of testing activities during the sprint (Mainly unitary testing). 

[Ways of expressing estimates](http://blog.gdinwiddie.com/2015/02/08/ways-of-expressing-estimates/)
: The way we express our estimates color both the way we think about the thing being estimated and the way our estimates are heard.

[Scrum Teams, "PURIFFY" your Sprint Increment!](http://architects.dzone.com/articles/scrum-teams-puriffy-your)
: In Scrum, each sprint produces an increment, which is a partial and potentially releasable product. To be releasable, the increment must meet all acceptance criteria and pass different categories of tests. Consequently, each sprint should consider all testing activities required for a releasable product. Unfortunately, during my work on different projects, I have observed that many teams focus only on a subset of testing activities during the sprint (Mainly unitary testing). 

[Culture is the Core of Your Organization](http://agilitrix.com/2015/02/culture-core-organization/)
: Culture is at the core of your organization. Everything in your organization informs culture. And vice-versa: culture informs everything in your organization. Here is an illustration
