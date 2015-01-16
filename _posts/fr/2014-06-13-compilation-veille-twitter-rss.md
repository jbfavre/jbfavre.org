---
title: "Compilation veille Twitter & RSS #03"
category: veille
---

La moisson de liens pour la semaine du 9 au 13 juin 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

#### Cloud

[Use Your own Encryption Keys with S3's Server-Side Encryption](https://aws.amazon.com/blogs/aws/s3-encryption-with-your-keys/)
:  Amazon S3 stores trillions of objects and processes more than a million requests per second for them.  
As the number of use cases for S3 has grown, so have the requests for additional ways to protect data in motion (as it travels to and from S3) and at rest (while it is stored). The first requirement is met by the use of SSL, which has been supported by S3 from the very beginning. There are several options for the protection of data at rest. First, users of the AWS SDKs for Ruby and Java can also use client-side encryption to encrypt data before it leaves the client environment. Second, any S3 user can opt to use server-side encryption. 

#### DataScience

[Optimizing the Netflix Streaming Experience with Data Science](http://techblog.netflix.com/2014/06/optimizing-netflix-streaming-experience.html)
:  On January 16, 2007, Netflix started rolling out a new feature: members could now stream movies directly on their browser without having to wait for the red envelope in the mail. This event marked a substantial shift for Netflix and the entertainment industry. A lot has changed since then. Today, Netflix delivers over 1 billion hours of streaming per month to 48 million members in more than 40 countries. And Netflix accounts for more than a third of peak Internet traffic in the US. This level of engagement results in a humungous amount of data.

[13 Things You Didn’t Know You Could Do with Pig](http://blog.mortardata.com/post/88485590701)
:  You may not know it, but Pig lives all around you. LinkedIn, Twitter, Netflix, Salesforce… These internet giants (and many others) all use Apache Pig to help make sense of the massive amounts of data they generate on a daily basis.

[Classifiying documents using Naive Bayes on Apache Spark / MLlib](http://chimpler.wordpress.com/2014/06/11/classifiying-documents-using-naive-bayes-on-apache-spark-mllib/)
:  In recent years, Apache Spark has gained in popularity as a faster alternative to Hadoop and it reached a major milestone last month by releasing the production ready version 1.0.0. It claims to be up to a 100 times faster by leveraging the distributed memory of the cluster and by not being tied to the multi stage execution of Map/Reduce. Like Hadoop, it offers a similar ecosystem with a database (Shark SQL), a machine learning library (MLlib), a graph library (GraphX) and many other tools built on top of Spark. Finally Spark integrates well with Scala and one can manipulate distributed collections just like regular Scala collections and Spark will take care of distributing the processing to the different workers.

#### ElasticSearch

[Let’s talk about SELKS](https://home.regit.org/2014/06/lets-talk-about-selks/)
:  The slides of my lightning talk at SSTIC are available: Let’s talk about SELKS. The slides are in French and are intended to be humorous.  
The presentation is about defensive security that needs to get sexier. And Suricata 2.0 with EVE logging combined with Elasticsearch and Kibana can really help to reach that target. If you want to try Suricata and Elasticsearch, you can download and test SELKS.

#### Databases

[Time-Series Database Requirements](http://www.xaprb.com/blog/2014/06/08/time-series-database-requirements/)
:  Because I have my own ideas about what constitutes a good time-series database, and because a few people have asked me to describe my requirements, I have decided to publish my thoughts here. All opinions that follow are my own, and as you read you should mentally add “in my opinion” to every sentence.

[Semi-sync replication is not slow!](http://www.tocker.ca/2014/06/05/semi-sync-replication-is-not-slow.html)
:  If you read Yoshinori's post about Semi-sync at Facebook, he lists the objective of using semi-sync as an alternative to running full durability on a master. That is to say that once you can guarantee writes have safely been shipped across the network, you may not strictly need to guarantee that they are safe locally.

#### BigData

[Capacity Planning with Big Data and Cloudera Manager](http://blog.cloudera.com/blog/2014/06/capacity-planning-with-big-data-and-cloudera-manager/)
:  Capacity planning has long been a critical component of successful implementations for production systems. Today, Big Data calls for a particularly deep understanding of capacity management – because resource utilization explodes as business users, analysts, and data scientists jump onboard to analyze and use newly found data. The resource impact can escalate very quickly, causing poor loading and or response times. The result is throwing more hardware at the issue without any understanding of what impact the new hardware will have on the current issue. Better yet, be proactive and know about the problem before the problem even occurs!

[How-to: Easily Do Rolling Upgrades with Cloudera Manager](http://blog.cloudera.com/blog/2014/06/how-to-easily-do-rolling-upgrades-with-cloudera-manager/)
:  Unique across all options, Cloudera Manager makes it easy to do what would otherwise be a disruptive operation for operators and users.  
For the increasing number of customers that rely on enterprise data hubs (EDHs) for business-critical applications, it is imperative to minimize or eliminate downtime — thus, Cloudera has focused intently on making software upgrades a routine, non-disruptive operation for EDH administrators and users.

#### Cloud

[Docker Security](http://blog.loof.fr/2014/06/docker-security.html)
:  A moins de vivre dans une grotte, vous n'avez pas pu rater l'annonce de Docker 1.0-FINAL production ready.  
Il y a tout de même un petit bémol à prendre en considération sur ce "production ready".  
Docker utilise les capacités du noyau Linux pour isoler et contrôler des groupes de process (respectivement : namespaces et cgroups). La promesse est donc que chaque container se comporte quasiment comme une VM, en beaucoup plus léger, assurant l'étanchéité et l'indépendance de chaque application par rapport à ses voisines qui sont au final co-locataires de la machine hôte.

#### DataScience

[Les réseaux bayésiens, meilleurs amis des analystes SSI](http://magazine.qualys.fr/produits-technologies/reseaux-bayesiens-securite/)
:  L’idée lumineuse derrière les réseaux bayésiens est de considérer que les relations entre des causes et leurs effets n’ont pas à être prédéterminées mais peuvent malgré tout être envisagées de manière statistique.  
Cette approche mathématique formulée bien avant l’apparition de l’informatique, par le pasteur anglais Thomas Bayes au 18eme siècle, permet de s’affranchir du besoin très déterministe et pas très efficace de recenser a priori tous les liens possibles entre des causes et leurs effets.

#### ElasticSearch

[Journalisation, logs Nginx avec ELK via Syslog](http://wooster.checkmy.ws/2014/06/nginx-syslog-elk/)
:  Voilà un billet bien opportuniste puisqu’il me permet de saluer la sortie de Nginx 1.7 et de vous présenter une première machine prête à l’emploi pour tester le setup proposé.  
Nginx 1.7 permet de journaliser accès et erreurs dans syslog plutôt que dans des fichiers plats et donc d’envoyer ces événements vers une instance Logstash.  
Le but est d’obtenir des événements structurés sur lesquels il sera possible de faire des recherches et statistiques.

#### SSL

[les 5 minutes du professeur Audenard – épisode 17 : le Perfect Forward Secrecy](http://www.orange-business.com/fr/blogs/securite/series/les-5-minutes-du-professeur-audenard-episode-17-le-perfect-forward-secrecy)
:  Suite à la faille OpenSSL HeartBleed les clefs privées RSA des serveurs SSL vulnérables ont pu être volées. Seuls les serveurs configurés pour supporter le PFS (Perfect Forward Secrecy) – en français « confidentialité persistante » étaient naturellement en capacité de minimiser l’impact sur les échanges et communications passées. Pour les autres, c’est l’ensemble des communications passées qui peuvent être déchiffrées si elles ont été enregistrées... les impacts sur la confidentialité sont donc potentiellement plus importants.
