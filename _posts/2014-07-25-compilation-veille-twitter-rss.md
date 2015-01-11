---
layout: post
title: "Compilation veille Twitter & RSS"
category: veille
---

La moisson de liens pour la semaine du 21 au 25 juillet 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Architecture

[How LinkedIn used PoPs and RUM to make dynamic content download 25% faster](http://engineering.linkedin.com/performance/how-linkedin-used-pops-and-rum-make-dynamic-content-download-25-faster)
:  LinkedIn serves its dynamic content (e.g. HTML and JSON) from its data centers, while utilizing CDNs for serving the static assets such as CSS, JS, images etc. Like many other web companies, we have been using PoPs (Point of Presence) to improve the download time of the dynamic content.  
PoPs are small scale data centers with mostly network equipment and proxy servers; that act as end-points for user's TCP connection requests. PoP would establish and hold that connection while fetching the user-requested content from the data center.  
In this post, we will talk about the Real User Monitoring (RUM) based data-driven approach LinkedIn took to decide optimal mapping of user requests to PoPs.

[StackOverflow Update: 560M Pageviews a Month, 25 Servers, and It's All About Performance](http://highscalability.com/blog/2014/7/21/stackoverflow-update-560m-pageviews-a-month-25-servers-and-i.html)
:  The network of sites that make up StackExchange, which includes StackOverflow, is now ranked 54th for traffic in the world; they have 110 sites and are growing at a rate of 3 or 4 a month; 4 million users; 40 million answers; and 560 million pageviews a month.  
This is with just 25 servers. For everything. That’s high availability, load balancing, caching, databases, searching, and utility functions. All with a relative handful of employees. Now that’s quality engineering.

[Best practices REST API from scratch – Introduction](http://www.sitepoint.com/best-practices-rest-api-scratch-introduction/)
:  The current internet ecosystem has literally been invaded by APIs, and for good reasons. By using third party APIs in your products or services, you have access to a ton of useful features — such as authentication or storage services — that can benefit both you and your users. By exposing your own API, your application becomes “part of the mix” and will be used in ways you’ve never thought before… if you do it the right way, obviously.

[Best Practices REST API from Scratch – Implementation](http://www.sitepoint.com/best-practices-rest-api-scratch-implementation/)
:  We have our server setup, authentication system, JSON input/output, error management and a couple of dummy routes. But, most importantly, we wrote the README file that defines resources and actions. Now it’s time to deal with these resources.

### Network

[Un petit galop d'essai avec le système Haka (filtrage, sécurité, paquets, protocoles, etc)](http://www.bortzmeyer.org/haka.htmlhttp://www.bortzmeyer.org/haka.htmlhttp://www.bortzmeyer.org/haka.html)
:  Le 10 juillet dernier, lors des RMLL à Montpellier, j'ai eu le plaisir de participer à l'« Atelier HAKA : un langage open source [sic] de sécurité réseau ». Haka est un langage permettant d'analyser les paquets, de réagir à certaines caractéristiques des paquets et de générer des réponses diverses. Cela permet entre autres de faire des pare-feux très souples car complètement programmables.  
Haka est fondé sur Lua et il faut donc un peu réviser ses connaissances Lua avant de pratiquer l'atelier. (J'ai déjà écrit ici et là sur Lua et réalisé un tout petit programme avec.) Haka étend Lua en ajoutant au langage de base des extensions permettant de tripoter les paquets réseau facilement. Je ne vais pas vous faire un cours sur Haka (il y en a un en ligne), juste documenter mon expérience.

[Understanding Application Performance on the Network – Part VI: The Nagle Algorithm](http://apmblog.compuware.com/2014/07/24/understanding-application-performance-on-the-network-the-nagle-algorithm/)
:  We’ll discuss the Nagle algorithm, a behavior that can have a devastating impact on performance and, in many ways, appear to be a processing delay.

### Big Data

[Womply uses Spark with Cassandra to Affordably Analyze Time Series Payment Data](http://planetcassandra.org/blog/post/womply-uses-spark-with-cassandra-to-affordably-analyze-time-series-payment-data/)
:  We use Cassandra for dashboards that allow merchants to analyze their revenue and compare it against merchant aggregates in their area and/or vertical.  
We evaluated HBase pretty heavily but found that the operational demands imposed by it were much greater than Cassandra.  
We are currently using Cassandra 2.0.8 in combination with Apache Spark 1.0. The revenue data we collect gets stored directly in Cassandra. From there we use Apache Spark to precompute and persist to Cassandra several time series aggregates with partition keys like category, city/state and Screen Shot 2014-07-18 at 4.23.21 PMnearest merchants.  
Our revenue data needs to be aggregated into several different kinds of time series which is an excellent fit for Cassandra.

[New Apache Spark Developer Training: Beyond the Basics](http://blog.cloudera.com/blog/2014/07/new-apache-spark-developer-training-beyond-the-basics/)
:  While the new Spark Developer training from Cloudera University is valuable for developers who are new to Big Data, it’s also a great call for MapReduce veterans.  
When I set out to learn Apache Spark (which ships inside Cloudera’s open source platform) about six months ago, I started where many other people do: by following the various online tutorials available from UC Berkeley’s AMPLab, the creators of Spark. I quickly developed an appreciation for the elegant, easy-to-use API and super-fast results, and was eager to learn more.

[Building a food recommendation engine with Spark / MLlib and Play](http://chimpler.wordpress.com/2014/07/22/building-a-food-recommendation-engine-with-spark-mllib-and-play/)
: Recommendation engines have become very popular in the last decade with the explosion of e-commerce, on demand music and movie services, dating sites, local reviews, news aggregation and advertising (behavioral targeting, intent targeting, …). Depending on your past actions (e.g., purchases, reviews left, pages visited, …) or your interests (e.g., Facebook likes, Twitter follows), the recommendation engine will present other products that might interest you using other users actions and user behaviors (page clicks, page views, time spent on page, clicks on images/reviews, …).

[10 types of regressions. Which one to use?](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:186758)
:  Should you use linear or logistic regression? In what contexts? There are hundreds of types of regressions. Here is an overview for data scientists and other analytic practitioners, to help you decide on what regression to use depending on your context.

[Solve a business case using simple Markov Chain](http://www.analyticsvidhya.com/blog/2014/07/solve-business-case-simple-markov-chain/)
:  Markov process fits into many real life scenarios. Any sequence of event that can be approximated by Markov chain assumption, can be predicted using Markov chain algorithm. In the last article, we explained What is a Markov chain and how can we represent it graphically or using Matrices. In this article, we will go a step further and leverage this technique to draw useful business inferences.

### System

[17 hpacucli Command Examples for Linux on HP Servers](http://www.thegeekstuff.com/2014/07/hpacucli-examples/)
:  HPACUCLI stands for HP Array Configuration Utility CLI.  
As the name suggests, this utility is for HP servers.  
Hpacucli is used to create, delete and repair the logical and physical drives on the smart array controllers in HP servers.  
To use hpacucli, download and install the latest version of hpacucli rpm from the HP website on your Linux server.

### Databases

[Apache Cassandra & Python for the The New York Times ⨍aбrik Platform](http://planetcassandra.org/blog/post/apache-cassandra-and-python-for-the-new-york-time-fabrik-platform/)
:  You’ll learn about how Apache Cassandra is used with Python in the NY Times ⨍aбrik messaging platform. Michael will start his talk off by diving into an overview of the NYT⨍aбrik global message bus platform and its “memory” features and then discuss their use of the open source Apache Cassandra Python driver by DataStax.

[Modèle de stockage physique dans Cassandra : Détail sur le stockage physique dans C*](http://www.infoq.com/fr/articles/modele-stockage-physique-cassandra-details)
:  Dans cet article, nous détaillons la façon dont le moteur de stockage organise les données sur disque et les différents types de colonnes que l'on trouve dans C*. Si vous avez raté le premier article d'introduction au modèle de données dans C*, c'est par ici: [Modèle de stockage physique dans Cassandra](http://www.infoq.com/fr/articles/modele-stockage-physique-cassandra)

[Reference architecture for a write-intensive MySQL deployment](http://www.mysqlperformanceblog.com/2014/07/22/reference-architecture-for-a-write-intensive-mysql-deployment/)
:  We designed Percona Cloud Tools (both hardware and software setup) to handle a very high-intensive MySQL write workload. For example, we already observe inserts of 1bln+ datapoints per day. So I wanted to share what kind of hardware we use to achieve this result.

[Why TokuDB hates Transparent HugePages](http://www.mysqlperformanceblog.com/2014/07/23/why-tokudb-hates-transparent-hugepages/)
:  If you try to install the TokuDB storage engine on a modern Linux distribution it might fail with following error message:

    > 2014-07-17 19:02:55 13865 [ERROR] TokuDB will not run with transparent huge pages enabled.
      2014-07-17 19:02:55 13865 [ERROR] Please disable them to continue.
      2014-07-17 19:02:55 13865 [ERROR] (echo never > /sys/kernel/mm/transparent_hugepage/enabled)

    You might be curious why TokuDB refuses to start with Transparent HugePages. Are they not a good thing… allowing smaller kernel page tables and less TLB misses when accessing data in the buffer pool? I was curious, so I asked Tim Callaghan this very question.

### Programming

[Explaining Ark Part 1: The Basics](http://www.tokutek.com/2014/07/explaining-ark-part-1-the-basics/)
:   Ark is a consensus algorithm similar to Raft and Paxos we’ve developed for TokuMX and MongoDB. The purpose of Ark is to fix known issues in elections and failover. While the tech report detailing Ark explains everything formally, over the next few blog posts, I will go over Ark in layman’s terms.  
Note that everything I explain in these blog posts is covered in the tech report, so if you’ve read the tech report, you won’t find anything new here.

### Web Performances

[New findings: The median top 100 ecommerce page takes 6.2 seconds to render primary content](http://www.webperformancetoday.com/2014/07/23/summer2014-ecommerce-page-speed-web-performance/)
:  We measure and analyze the performance of the top 500 retail websites.* And every quarter, I’ve grown accustomed to the persistence of two trends: pages are growing bigger and, not coincidentally, slower.

