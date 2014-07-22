---
layout: post
title: "Compilation veille Twitter & RSS #7"
category: veille
---

La moisson de liens pour la semaine du 14 au 18 juillet 2014.

Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

<!-- -->

### Architecture

[How LinkedIn used PoPs and RUM to make dynamic content download 25% faster](http://engineering.linkedin.com/performance/how-linkedin-used-pops-and-rum-make-dynamic-content-download-25-faster)
:  LinkedIn serves its dynamic content (e.g. HTML and JSON) from its data centers, while utilizing CDNs for serving the static assets such as CSS, JS, images etc. Like many other web companies, we have been using PoPs (Point of Presence) to improve the download time of the dynamic content.  
PoPs are small scale data centers with mostly network equipment and proxy servers; that act as end-points for user's TCP connection requests. PoP would establish and hold that connection while fetching the user-requested content from the data center.  
In this post, we will talk about the Real User Monitoring (RUM) based data-driven approach LinkedIn took to decide optimal mapping of user requests to PoPs.

[Best practices REST API from scratch – Introduction](http://www.sitepoint.com/best-practices-rest-api-scratch-introduction/)
:  The current internet ecosystem has literally been invaded by APIs, and for good reasons. By using third party APIs in your products or services, you have access to a ton of useful features — such as authentication or storage services — that can benefit both you and your users. By exposing your own API, your application becomes “part of the mix” and will be used in ways you’ve never thought before… if you do it the right way, obviously.

### Network

[Un petit galop d'essai avec le système Haka (filtrage, sécurité, paquets, protocoles, etc)](http://www.bortzmeyer.org/haka.htmlhttp://www.bortzmeyer.org/haka.htmlhttp://www.bortzmeyer.org/haka.html)
:  Le 10 juillet dernier, lors des RMLL à Montpellier, j'ai eu le plaisir de participer à l'« Atelier HAKA : un langage open source [sic] de sécurité réseau ». Haka est un langage permettant d'analyser les paquets, de réagir à certaines caractéristiques des paquets et de générer des réponses diverses. Cela permet entre autres de faire des pare-feux très souples car complètement programmables.  
Haka est fondé sur Lua et il faut donc un peu réviser ses connaissances Lua avant de pratiquer l'atelier. (J'ai déjà écrit ici et là sur Lua et réalisé un tout petit programme avec.) Haka étend Lua en ajoutant au langage de base des extensions permettant de tripoter les paquets réseau facilement. Je ne vais pas vous faire un cours sur Haka (il y en a un en ligne), juste documenter mon expérience.

### Big Data

[Womply uses Spark with Cassandra to Affordably Analyze Time Series Payment Data](http://planetcassandra.org/blog/post/womply-uses-spark-with-cassandra-to-affordably-analyze-time-series-payment-data/)
:  We use Cassandra for dashboards that allow merchants to analyze their revenue and compare it against merchant aggregates in their area and/or vertical.  
We evaluated HBase pretty heavily but found that the operational demands imposed by it were much greater than Cassandra.  
We are currently using Cassandra 2.0.8 in combination with Apache Spark 1.0. The revenue data we collect gets stored directly in Cassandra. From there we use Apache Spark to precompute and persist to Cassandra several time series aggregates with partition keys like category, city/state and Screen Shot 2014-07-18 at 4.23.21 PMnearest merchants.  
Our revenue data needs to be aggregated into several different kinds of time series which is an excellent fit for Cassandra.

[New Apache Spark Developer Training: Beyond the Basics](http://blog.cloudera.com/blog/2014/07/new-apache-spark-developer-training-beyond-the-basics/)
:  While the new Spark Developer training from Cloudera University is valuable for developers who are new to Big Data, it’s also a great call for MapReduce veterans.  
When I set out to learn Apache Spark (which ships inside Cloudera’s open source platform) about six months ago, I started where many other people do: by following the various online tutorials available from UC Berkeley’s AMPLab, the creators of Spark. I quickly developed an appreciation for the elegant, easy-to-use API and super-fast results, and was eager to learn more.


