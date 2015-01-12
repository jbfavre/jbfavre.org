---
layout: post
title: "Compilation veille Twitter & RSS"
category: veille
---

La moisson de liens pour les semaine du 5 au 9 janvier 2015.
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

Nouvelle année, on remet les compterus à zéro. La "revue de presse"
étant hebdomadaire, il portera le numéro de la semaine. Ça évite les
incréments à l'infini :)

Bonne lecture

### Architecture

[API Best Practices: Hypermedia (Part 1)](http://java.dzone.com/articles/api-best-practices-hypermedia)
: One of the challenges to implementing and correctly using hypermedia in your REST API is first understanding what hypermedia is, and what it means to use hypermedia as the engine of application state (HATEOAS).

[Collecting Docker Container Data with Fluentd](http://java.dzone.com/articles/collecting-docker-container)
: Today, we’re honored to bring you a guest post by Treasure Data’s Kiyoto Tamura.  Kiyoto is the developer evangelist at Treasure Data and one of the maintainers of Fluentd, the open source data collector to simplify and scale log management. A math major and former quantitative analyst, he loves collecting and analyzing data. Today, Kiyoto will walk you through the creation of two Fluentd plugins that export per-container systems metrics from Docker to Librato.  As a Fluentd maintainer, he makes it look easy; integrating Docker with Librato in under a hundred lines of code.

[The Ultimate Guide: 5 Methods for Debugging Production Servers at Scale](http://highscalability.com/blog/2015/1/7/the-ultimate-guide-5-methods-for-debugging-production-server.html)
: All sorts of wild things happen when your code leaves the safe and warm development environment. Unlike the comfort of the debugger in your favorite IDE, when errors happen on a live server - you better come prepared. No more breakpoints, step over, or step into, and you can forget about adding that quick line of code to help you understand what just happened. In production, bad things happen first and then you have to figure out what exactly went wrong. To be able to debug in this kind of environment we first need to switch our debugging mindset to plan ahead. If you’re not prepared with good practices in advance, roaming around aimlessly through the logs wouldn’t be too effective.

[Architecting Websites For The HTTP/2 Era](https://ma.ttias.be/architecting-websites-http2-era/)
: The arrival of HTTP/2 will require a bit of re-thinking how we handle websites (and webservers), so perhaps it's time to reflect on what those changes can bring. This post is based entirely on theory (the HTTP2 spec), as I can't test HTTP/2 yet. The HTTP/2 Spec is available for reading on Github.

[HTTP/2: A Fast, Secure Bedrock for the Future of SEO](http://zoompf.com/blog/2015/01/http2-fast-secure-bedrock-future-seo)
: In prior articles we've written extensively about website performance and securing your website, both factors Google has publicly announced as search ranking factors. These articles provide extensive tips using existing tools and technologies to improve your site performance and security (tips we highly recommend you follow). But did you know Google also developed and is championing a new web transport protocol called SPDY that addresses many of the inherent performance and security flaws in the web today?

[Caching Over Mybatis – Summary of Approaches](http://java.dzone.com/articles/caching-over-mybatis-summary)
: This article presents a summary of the four Proof of Concepts described in the article 4 Hands-On Approaches to Improve Your Data Access Layer Implementation  and contains a retrospective of the four implementations, with a comparison table of their key features.

### Network

[RFC 7426: SDN Layers and Architecture Terminology](http://www.bortzmeyer.org/7426.html)
: S'il y a un buzzword populaire en ce moment, dans les technologies de réseau, c'est bien SDN. Ce sigle désigne une approche de contrôle centralisé d'un réseau, par le biais d'ordres envoyés depuis la machine d'administration, vers tous les éléments actifs du réseau (les routeurs, par exemple). Comme tous les buzzwords, son utilisation massive pour désigner tout et n'importe quoi entraîne pas mal de confusion, et ce RFC de l'IRTF essaie de clarifier un peu en précisant la terminologie du SDN (Software-Defined Networking), et en explorant les protocoles actuels qui participent au système SDN.

[RFC 7416: A Security Threat Analysis for Routing Protocol for Low-power and lossy networks (RPL)](http://www.bortzmeyer.org/7416.html)
: Le protocole de routage RPL (Routing Protocol for Low power and lossy networks) est conçu pour des objets connectés, nombreux, mais pas gérés, et qui doivent s'organiser tout seuls pour trouver un chemin dans le réseau. Ces objets peu intelligents soulèvent souvent des problèmes de sécurité spécifiques : ils ne sont pas gérés par un administrateur système compétent, ils ont des capacités de calcul limitées, ce qui réduit le recours à la cryptographie, ils ont une interface utilisateur réduite au minimum, ce qui fait qu'entrer une clé WPA est très pénible, etc. Ce nouveau RFC documente les problèmes de sécurité de RPL.

### Virtualization

[danger at the docks](http://kacper.blog.redpill-linpro.com/archives/637)
: Docker.io is taking the world by storm, but a day at the docks is not without its perils. Here I hope to inspire you to try out docker by showing you how to avoid its pitfalls.

[DockerCon EU Panel: The future of Microservices](https://blog.docker.com/2015/01/dockercon-europe-the-future-of-micro-services/)
: This panel focuses on the future of Microservices and how Docker makes it easier to leverage Microservices Architecture for greater scalability and manageability.

### Security

[DDoS Packet Forensics: Take me to the hex!](http://blog.cloudflare.com/ddos-packet-forensics-take-me-to-the-hex/)
: A few days ago, my colleague Marek sent an email about a DDoS attack against one of our DNS servers that we'd been blocking with our BPF rules. He noticed that there seemed to be a strange correlation between the TTL field in the IP header and the IPv4 source address.

[NSA-proof SSH (applies to Wheezy SSH versions)](http://kacper.blog.redpill-linpro.com/archives/702)
: One of the biggest takeaways from 31C3 and the most recent Snowden-leaked NSA documents is that a lot of SSH stuff is .. broken.

[Secure Secure Shell (applies to newer SSH versions)](https://stribika.github.io/2015/01/04/secure-secure-shell.html)
: You may have heard that the NSA can decrypt SSH at least some of the time. If you have not, then read the latest batch of Snowden documents now. All of it. This post will still be here when you finish. My goal with this post here is to make NSA analysts sad.

[RFC 7435: Opportunistic Security: Some Protection Most of the Time](http://www.bortzmeyer.org/7435.html)
: Les révélations de Snowden ont sérieusement relancé l'intérêt pour la sécurité informatique, et notamment sur les risques d'espionnage. Mais, en sécurité, le mieux est parfois l'ennemi du bien. Certaines exigences de sécurité peuvent mener à des solutions techniquement parfaites mais tellement compliquées à utiliser qu'elles ne seront que peu ou pas déployées. C'est par exemple le cas de l'authentification pour utiliser le chiffrement. Si on impose l'authentification forte du pair avant de chiffrer, on risque de ne pas pouvoir chiffrer, dans des cas où ce serait pourtant bien utile. Ce nouveau RFC, par le mainteneur de Postfix, définit un concept utile, cela de sécurité opportuniste (opportunistic security) : on chiffre quand on peut, même sans authentification, et on authentifie si c'est possible. L'idée est d'augmenter sérieusement la part de trafic chiffré dans l'Internet.

[Crypto : on est fichus… #oupas](https://www.techn0polis.net/2015/01/03/crypto-on-est-fichus-oupas/)
: Il y a trois jours, alors que je prenais un café dans l’aéroport de Hambourg au retour du 31e congrès du Chaos Computer Club (sur lequel je reviendrai, more to come comme on dit) et que je consultais ma messagerie, j’ai pris connaissance d’un commentaire succinct et assez péremptoire à mon billet « Facebook “caché” dans Tor : pourquoi c’est une très bonne nouvelle ».

### Databases

### Elasticsearch

[From Elephant to ELK: How We Migrated Our Analytics System to Elasticsearch](https://www.digitalgov.gov/2015/01/07/elk/?utm_source=rss&utm_medium=rss&utm_campaign=elk)
: DigitalGov Search is essentially one giant software-as-a-service (SaaS), with 1,500 government websites as its customers. Each site, in turn, is a resource for the public to use. To help us understand how people use the search box and how we can make it better, we collect quite a bit of data. Some of that data makes its way into data products, automatically improving future searchers’ experiences. Some of it helps us keep track of the health of the system, alerting us to issues and anomalies that might impact searchers. And all of this data helps us answer ad hoc questions, support hypotheses, and back up intuitions we have about how the service should evolve. It even populates an engaging real-time dashboard we have running on a monitor at GSA, reminding us of our commitment to improving each individual’s interaction with government.

#### MySQL

[MySQL @ Yelp](http://engineeringblog.yelp.com/2015/01/mysql-at-yelp.html)
: Yelp has used MySQL since the beginning, and in more recent years has adopted the Percona fork. We like MySQL because it fits our data needs, is configurable, fast, and scalable. The Percona fork includes performance enhancements and additional features on top of stock MySQL, we have used their training services in the past, and are currently a support customer. MySQL also has a *huge* online community. I love that a quick search using your favorite search engine will quickly get you started down the right path to solving most problems!

[When `ONLY_FULL_GROUP_BY` Won’t See the Query Is Deterministic](http://mysqlserverteam.com/when-only_full_group_by-wont-see-the-query-is-deterministic/)
: In the SQL standard, GROUP BY should contain only table columns and never expressions. So this example query where we want to count how many people have the same name is illegal in the SQL2011 standard because the GROUP BY clause contains a function

[Getting mutex information from MySQL’s `performance_schema`](http://www.percona.com/blog/2015/01/06/getting-mutex-information-from-mysqls-performance_schema/)
: We have been using SHOW ENGINE INNODB MUTEX command for years. It shows us mutex and rw-lock information that could be useful during service troubleshooting in case of performance problems. As Morgan Tocker announced in his blog post the command will be removed from MySQL 5.7 and we have to use performance_schema to get that info.

[The MySQL Query Cache: How it works, plus workload impacts (good and bad)](http://www.percona.com/blog/2015/01/02/the-mysql-query-cache-how-it-works-and-workload-impacts-both-good-and-bad/)
: Query caching is one of the prominent features in MySQL and a vital part of query optimization. It is important to know how it works as it has the potential to cause significant performance improvements – or a slowdown – of your workload.

#### Postgres

[A REST API for any Postgres database](http://thechangelog.com/rest-api-postgres-database/)
: Can you take your Postgres database schema and programmatically turn it in to a REST API? Joe Nelson’s PostgREST proves that the answer is “Yes”!

### Dev

[The Downside of Version-less Optimistic Locking](http://feeds.dzone.com/~r/zones/architects/~3/OBCq9851nm0/downside-version-less)
: In my previous post I demonstrated how you can scale optimistic locking through write-concerns splitting.  
Version-less optimistic locking is one lesser-known Hibernate feature. In this post I’ll explain both the good and the bad parts of this approach.

### Monitoring

[Introducing practical and robust anomaly detection in a time series](https://blog.twitter.com/fr/node/5261)
: Both last year and this year, we saw a spike in the number of photos uploaded to Twitter on Christmas Eve, Christmas and New Year’s Eve (in other words, an anomaly occurred in the corresponding time series). Today, we’re announcing AnomalyDetection, our open-source R package that automatically detects anomalies like these in big data in a practical and robust way.

[Nagios called only once last night and it means a lot](https://t37.net/nagios-called-only-once-last-night-and-it-means-a-lot.html)
: The cellphone hidden under my pillow made its characteristic sound at 25 past midnight during new years eve, waking me up after a few minutes of sleep. A virtual machine ran out of space after Gitlab automatic backup filled the entire disk. I had to get up and fix the issue before I go back to bed.

### Chef

[Quick Tip: Serverspec `Spec_helper` in Test Kitchen](http://jtimberman.housepub.org/blog/2014/12/31/quick-tip-serverspec-spec-helper-in-test-kitchen/)
: Recently, I’ve started refactoring some old cookbooks I wrote ages ago. I’m adding Serverspec coverage that can be run with kitchen verify. In this quicktip, I’ll describe how to create a `spec_helper` that can be used in all the specs. This is a convention used by many in the Ruby community to add configuration for RSpec.

### GIT

[Comprendre et maîtriser les submodules Git](http://www.git-attitude.fr/2014/12/31/git-submodules/)
: Si vous avez déjà utilisé les submodules, vous en êtes certainement revenus avec quelques cicatrices, en jurant (mais un peu tard) qu’on ne vous y reprendrait plus… Les submodules ont en effet l’art de nous faire nous arracher les cheveux, avec leurs pièges omniprésents à la moindre manipulation. Pourtant, ils ne sont pas dénués de mérites, il faut juste savoir comment les prendre.

### SSL

[Speeding up HTTPS with session resumption](http://calendar.perfplanet.com/2014/speeding-up-https-with-session-resumption/)
: One of the main drawbacks of HTTPS is the time it takes to set up a connection. Specifically, every new TLS connection requires a handshake in order to establish shared encryption keys. This handshake requires two extra round trips on top of the standard TCP handshake roundtrip. On a high-latency connection, waiting for three roundtrips before the first byte is be transferred can make sites appear to load slowly.

### PHP

[LTS Updates](http://hhvm.com/blog/7349/lts-updates°
:  I just pushed HHVM 3.3.2 (and 3.4.2) onto the Debian and Ubuntu repositories. It contains fixes backported from PHP for several security issues that HHVM was also vulnerable to, as well as a fix for CVE-2014-9370, which is a header injection issue affecting only the deprecated built-in webserver.

[XHGui on VM, Storage on Host](http://www.lornajane.net/posts/2015/xhgui-on-vm-storage-on-host)
: I'm doing some performance tuning on a project at the moment and my favourite tool is still XHGui - but it's designed to run on the same machine as its victim and since this is a vagrant VM, the chances of me destroying the machine and therefore the data are pretty high! Instead, I set it up to store the data onto the host and I thought I'd share how I did that.

[PHP’s CVE vulnerabilities are irrelevant](https://ma.ttias.be/phps-cve-vulnerabilities-irrelevant/)
: ircmaxell wrote a good blog post about usage of PHP versions in the wild, which shows the vast amount of different versions used. The summary is meant to provide an overview of "secure" vs. "unsecure" PHP installations, based on the known CVE's in previous PHP versions. The conclusion is that less than 25% of the PHP installations are secure. However, I think those numbers are all irrelevant.

[The (unexpected?) workload associated with migrating to HHVM](https://ma.ttias.be/unexpected-workload-associated-migrating-hhvm/)
: Wikimedia, the company behind top #10 website Wikipedia, published an interesting article on how they moved from vanilla PHP to HHVM, Facebook's implementation.

### Big Data

#### Hadoop

[Apache Samza: LinkedIn’s Stream Processing engine](http://engineering.linkedin.com/samza/apache-samza-linkedin%E2%80%99s-stream-processing-engine)
: LinkedIn began processing “big data” on Apache Hadoop six years ago. As time passed, we recognized that some of our use cases couldn’t be implemented in Hadoop due to the large turn-around time that batch processing needed. We wanted our results to be calculated incrementally and available immediately at any time.

[New in CDH 5.3: Transparent Encryption in HDFS](http://blog.cloudera.com/blog/2015/01/new-in-cdh-5-3-transparent-encryption-in-hdfs/)
: Apache Hadoop 2.6 adds support for transparent encryption to HDFS. Once configured, data read from and written to specified HDFS directories will be transparently encrypted and decrypted, without requiring any changes to user application code. This encryption is also end-to-end, meaning that data can only be encrypted and decrypted by the client. HDFS itself never handles unencrypted data or data encryption keys. All these characteristics improve security, and HDFS encryption can be an important part of an organization-wide data protection story.

#### Spark

[Get started with Hadoop and Spark in 10 minutes](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:236980)
: With the big 3 Hadoop vendors – Cloudera, Hortonworks and MapR - each providing their own Hadoop sandbox virtual machines (VMs), trying out Hadoop today has become extremely easy. For a developer, it is extremely useful to download and get started with one of these VMs and try out Hadoop to practice data science right away.

#### Analytics

[New Advanced Analytics and Data Wrangling Tutorials on Cloudera Live](http://blog.cloudera.com/blog/2015/01/new-advanced-analytics-and-data-wrangling-tutorials-on-cloudera-live/)
: A new Spark tutorial and Trifacta deployment option make Cloudera Live even more useful for getting started with Apache Hadoop.A new Spark tutorial and Trifacta deployment option make Cloudera Live even more useful for getting started with Apache Hadoop.A new Spark tutorial and Trifacta deployment option make Cloudera Live even more useful for getting started with Apache Hadoop.

[Preparing Data in DSS (original blog post by Affini-Tech)](http://www.dataiku.com//blog/2015/01/08/preparing_data_in_DSS.html)
: In the following article, and as promised in their last blog post "Why You Should Use a Data Science Tool", Affini-Tech explores and illustrates the benefits of using Dataiku's Data Science Studio (DSS) software for the very first step of any data oriented workflow: data preparation.

[Mapping the World](http://nerds.airbnb.com/mapping-world/)
: People are always surprised when I tell them about Zack Walker, Airbnb’s in-house cartographer, who works on mapping the world.  
They say, “the world is already mapped! There’s Google Maps, Foursquare, Yelp, Garmin, National Geographic, Zheng He, Isabella Bird, Lewis & Clark & Sacagawea, Leif Erikson, the Planet Earth series narrated by David Attenborough…”

[Segmenting your traffic? You are probably doing it wrong.](https://www.chrisstucchio.com/blog/2015/ab_testing_segments_and_goals.html)
: So you've jumped onboard the A/B testing bandwagon. You've just run an A/B test comparing the site redesign to the old version. Unfortunately the redesign did not differ in a statistically significant way from the old version. At this point, a variety of conversion rate experts will tell you to segment your data.

[Insight-driven vs. Intuition-driven Decision Making](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:237742)
: Nowadays, the big buzzwords in business analytics are insights topped with actionable insights. These used and sometimes abused words have become a must have and must do in every large or small business that has an analytics organization. However, their meaning and use are as varied and widespread as the businesses that proudly promote them. As some business leaders got intoxicated with looking for and feel in dire need of business insights by any means, others would seek them at any cost, then dream up the associated actions and decisions to use in the hope of reaching the dream land of significant competitive advantage without the recourse to a sound "Insight-to-Action" strategy . This situations looks like a repeat of yesteryears management science and quantitative analysis rollercoaster that flourished during the years of plenty, then vanished in the ensuing droughts. It seems like the more things change, the more they stay the same, or do they? A wake up call and a light at the end of this windy path is badly needed, but has possibly arrived with Mr. Taymour Matin's "From Insights to Action Becoming Data-Driven, Not Driven by Data (Right Brain Analytics Book 1)" to the rescue.

[R: Cleaning up and Plotting Google Trends Data](http://feeds.dzone.com/~r/zones/architects/~3/Dy434ONQyHM/r-cleaning-and-plotting-google)
: I recently came across an excellent article written by Stian Haklev in which he describes things he wishes he’d been told before starting out with R, one being to do all data clean up in code which I thought I’d give a try.

[Analyser ses logs Nginx avec Piwik sans Javascript.](https://www.pentakonix.fr/jrnl/?d=2014/10/30/21/06/28-analyser-ses-logs-nginx-avec-piwik-sans-javascript)
: Piwik fournit donc un script python bien utile avec plein d'options comme on les aimes planqué dans son répertoire principal

### Web performances

[Web Beacon Speedup for Improved User Experience](http://calendar.perfplanet.com/2014/web-beacon-speedup-for-improved-user-experience/)
: Web Beacons have been used by site developers to understand the behavior of customers. These Beacons are used, among other things, to count the users who visit a web page, track scrolling within the page, or count clicks on a particular ad/video etc.

[Leverage Browser Storage For a Faster Web](http://calendar.perfplanet.com/2014/leverage-browser-storage-for-a-faster-web/)
: One of the cardinal rules for web performance is to reduce HTTP requests. The common interpretation of reducing HTTP requests limits the focus to bundling and minifying scripts, creating image sprites and eliminating unused resources. Developers often overlook AJAX requests. Many AJAX calls GET the same, unchanged data as previously made requests. Today’s rich web applications, like single page applications, rely on numerous AJAX calls to retrieve data before it is rendered. Untamed these AJAX requests create unnecessary chatter between client instances and the server.

[Blast from the Past: Impact of TCP Components on Time to First Byte](http://calendar.perfplanet.com/2014/blast-from-the-past-impact-of-tcp-components-on-time-to-first-byte/)
: There are many reasons why your first byte can be slow but I am going to talk about a very specific interaction thats very well known to network geeks but can use some circulation among the front-end developers for it happens to be in the critical path of the browser. In particular this has a tendency to effect the boundaries at which SSL record layer hands off control to the HTTP layer.

[MozJPEG 3.0](http://calendar.perfplanet.com/2014/mozjpeg-3-0/)
: Mozilla has done a study of image formats and concluded that WebP and JPEG XR are not a big-enough improvement over well-optimized JPEG. In the study only HEVC (H.265) was significantly better, but it’s a patent-encumbered format, so it can’t be used freely (shhhh!)

[The Power of Perceived Performance](http://calendar.perfplanet.com/2014/the-power-of-perceived-performance/)
: Recent years have seen a huge flux of SPAs — Single Page Applications. Though they enhance user experience, implementing SPAs for large-scale web applications is indeed a complex task. At eBay, we faced a similar challenge when we wanted to migrate one of our key desktop flows (search and item pages) to an app-like experience, from the current state of full page refreshes.

[Undoing Years of Optimisations With HTTP/2](https://ma.ttias.be/undoing-years-optimisations-http2/)
: Someone just release an HTTP server callde H2O, which is significantly faster than Nginx (especially for small files). This in itself is an accomplishment, but the reason for this development is even more important.

[Simplify speed with the HALT number](http://calendar.perfplanet.com/2014/simplify-speed-with-the-halt-number/)
: Speed engineers rely on business buy-in to get the job done. Telling a clear story will gain you resources and help when it’s time to balance speed against other marketing considerations.

[Squeezing the Most Into the New W3C Beacon API](http://calendar.perfplanet.com/2014/squeezing-the-most-into-the-new-w3c-beacon-api/)
: It’s common for many websites to build a signaling mechanism that, without user action, sends analytics or diagnostics information back to a server for further analysis. I’ve created one at least a half a dozen times to capture all sorts of information: JavaScript errors, browser and device capabilities, client side click paths, the list goes on and on. In fact, the list is actually getting longer with the W3C‘s Web Performance Working Group cranking out lots of great Real User Metrics (RUM) specifications for in-browser performance diagnostics like Navigation Timing, Resource Timing, User Timing and the forthcoming Navigation Error Logging and Frame Timing.

### Vie privée

[De la surveillance de masse à la paranoïa généralisée](http://bugbrother.blog.lemonde.fr/2015/01/03/de-la-surveillance-de-masse-a-la-paranoia-generalisee/)
: Il y aura un avant et un après Snowden. Avant, ceux qui dénonçaient la montée en puissance de la société de surveillance passaient pour de doux paranoïaques (alors que les paranos, c'était pas eux, mais la NSA, ce que Snowden a amplement démontré).

[Tails raconté par ceux qui le construisent](https://www.techn0polis.net/2014/11/19/tails-raconte-par-ceux-qui-le-construisent/)
: Quiconque s’intéresse aux technologies de protection de la confidentialité sur Internet a un jour ou l’autre entendu parler de Tails, un système d’exploitation live (installé sur DVD, clé USB ou carte SD) qui utilise le réseau Tor, embarque les outils de cryptographie réputés les plus fiables, et ne laisse ni ne conserve aucune trace, sauf à le demander explicitement.

[Mozilla et Tor, « ça n’est qu’un début »](https://www.techn0polis.net/2014/11/13/mozilla-et-tor-ca-nest-quun-debut/)
: Après Facebook et son « service caché », un partenariat avec Mozilla : décidément, le réseau Tor semble bel et bien sortir de ses habituelles zones de confinement — l’usage par les sites illégaux d’une part, dont l’opération « Onymous » est le dernier écho, et de l’autre l’outil « hacktiviste » prisé des journalistes et des militants des droits de l’homme agissant en zones numériques hostiles — pour se rapprocher d’usages plus généralistes.

[Facebook « caché » dans Tor : pourquoi c’est une très bonne nouvelle](https://www.techn0polis.net/2014/11/04/facebook-cache-dans-tor-pourquoi-cest-une-tres-bonne-nouvelle/)
: Vendredi 31 octobre, Facebook a annoncé le lancement d’une « expérimentation » permettant à ses utilisateurs d’accéder à ses services directement depuis le réseau Tor. Comme l’a très bien résumé le journaliste Andy Greenberg dans Wired : « Le site le moins anonyme au monde vient juste de rejoindre le réseau le plus anonyme du Web. »

### Management

[Geek Health: How-to De-Stress Your Workplace](http://java.dzone.com/articles/geek-health-how-de-stress-your)
: Here at IOD (I am OnDemand), we spend a hefty amount of time sitting in front of the computer learning about the latest and greatest updates in the world of cloud computing and turning that knowledge into valuable content. It goes without saying that, along with the rest of the world of IT, we spend most of our days sitting for prolonged periods of time in postures that threaten our health and well being. Personally, as a registered yoga instructor (RYT 200), I find it extremely difficult to sit for long periods of time and always make sure to keep my blood pumping, joints happy and stress levels low, one way or another, when working on the computer. In respect to the wealth of knowledge out there regarding the dangers associated with prolonged sitting and the specific ailments linked to countless hours on the computer, I thought I’d share a few tips on how to maintain a healthy lifestyle as a computer geek.

[The secret of great product managers: Balancing the worlds of ‘techie’ and ‘fuzzy’](http://venturebeat.com/2015/01/01/the-secret-of-great-product-managers-balancing-the-worlds-of-techie-and-fuzzy/)
: Microsoft created the “modern” role of product manager 25 years ago, and the job holds an aura of myth even today. Two-and-a-half decades later, the role of product manager is still misunderstood and ill-defined, and the most important qualities in a product manager are often overlooked. As a result, startups are missing out on valuable opportunities to improve their product, teamwork, and efficiency, not to mention chances of success.

[Dev-Ops for Non-Engineers](http://blog.pagerduty.com/2015/01/dev-ops-non-engineers/)
: If you’ve used the term “DevOps” as a job title, you may have been making a big mistake. It sounds innocuous: After all, isn’t DevOps something that you do? If you’re a marketer, hiring manager or non-engineer at your company, it might seem like it.
