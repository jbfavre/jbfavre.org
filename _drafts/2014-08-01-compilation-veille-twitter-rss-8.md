---
layout: post
title: "Compilation veille Twitter & RSS #8"
category: veille
---

La moisson de liens pour la semaine du 28 juillet au 1er août 2014.

Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

<!-- -->

### Big Data

[Moving faster with data streams: The rise of Samza at LinkedIn](http://engineering.linkedin.com/stream-processing/moving-faster-data-streams-rise-samza-linkedin)
:  Less than a year ago, we announced the first open source release of Apache Incubator Samza, a framework for processing big data streams. Today we are releasing Samza 0.7.0, a big milestone that reflects Samza's growing maturity.  
This is a good opportunity to look back at how far we've come in the last year. Samza is no longer a research project, but is now deployed in production at LinkedIn with a growing set of applications. In this post we'll explore how we're using Samza at LinkedIn, and maybe you'll walk away with some ideas on how it can solve your problems, too.

[Lambda Architecture with Apache Spark](https://speakerdeck.com/mhausenblas/lambda-architecture-with-apache-spark)
:  {% oembed https://speakerdeck.com/mhausenblas/lambda-architecture-with-apache-spark %}

### Hardware

[Here are the cache servers Netflix deploys in ISP network](https://www.netflix.com/openconnect/hardware?locale=en-EN)
:  Open Connect Appliances are servers based on commodity PC components (similar to the model used by all large scale content delivery networks). We were influenced by the excellent write-ups from the Backblaze team, and use a custom chassis due to a lack of ready made options for a compact unit.

### Sysadmin - ops

[A tool for showing the progress of cp, rm, dd, and friends](http://thechangelog.com/tool-showing-progress-cp-rm-dd-friends/)
:  `cv` — short for Coreutils Viewer — is a Linux (Mac port) tool which looks for coreutils basic commands (cp, mv, dd, tar, gzip/gunzip, cat, etc.) that are currently running on your system and displays the percentage of copied data.

[Petit Log Analysis](http://crunchtools.com/software/petit/)
:  Log analysis is something that all systems administrators know they need to do. Many of us come to this point, either because there is a problem, there is a security requirement from the organization, or it keeps you up all night wanting to know what is going on in all of that data. Looking for best practices for log analysis on The Internet is difficult at best. Many years ago, I discovered a script that hashed log files by removing all of their numbers and replacing them with "#" characters. The results of this simple algorithm were phenomenal, logs could be reduced by a factor of ten. This was much more readable, yet left much of the quality data that I needed to determine if there was a problem. In the years since I discovered that simple algorithm, I have come to discover many techniques on text analysis which are commonly used in linguistics and anthropology to analyze natural languages. This has led me to develop very simple best practices for analyzing logs.

[Kpatch, une alternative libre pour patcher son noyau à chaud !](http://blog.incloudus.com/2014/kpatch-alternative-libre-patcher-noyau-chaud/)
:  Enfin une solution prometteuse permettant d’appliquer les mises à jour de sécurité (et autres) du noyau à chaud, ce qui veut dire sans redémarrage du serveur.  
Avant, il existait Ksplice, une solution propriètaire détenue par la société Oracle mais ça c’était avant !  
Depuis quelques mois, RedHat et Suse se sont lancés dans la bataille pour chacun fournir leur solution alternative.

### Architecture

[Test de montée en charge : Tsung](http://blog.grossemy.fr/tuto-test-de-monter-en-charge-tsung/)
:  Lorsqu’une nouvelle infrastructure serveur et/ou applicative est mise en place, le besoin de la tester est vital pour la pérennité de celle-ci dans le futur. Des outils ont donc été créés pour simuler des « utilisateurs lambda » et ainsi donc générer de la charge.  
Tsung est un outil de stress-test écrit en Erlang et distribué sous licence GPL, capable de tester des serveurs HTTP, LDAP, MySQL et PostgreSQL entre autres.

[The Twitter stack - Braindump](http://blog.oskarsson.nu/post/40196324612/the-twitter-stack)
:  For various reasons, including performance and cost, Twitter has poured significant engineering effort into breaking down the site backend into smaller JVM based services. As a nice side effect we’ve been able to open source several of the libraries and other useful tools that came out of this effort.  
While there is a fair amount of information about these projects available as docs or slides I found no simple, high level introduction to what we can unofficially call the Twitter stack. So here it is. It’s worth noting that all this information is about open source projects, that it is public already and that I am not writing this as part of my job at Twitter or on their behalf.

### Privacy

[Meet the online tracking device that is virtually impossible to block](http://www.propublica.org/article/meet-the-online-tracking-device-that-is-virtually-impossible-to-block)
:  A new, extremely persistent type of online tracking is shadowing visitors to thousands of top websites, from WhiteHouse.gov to YouPorn.com.  
First documented in a forthcoming paper by researchers at Princeton University and KU Leuven University in Belgium, this type of tracking, called canvas fingerprinting, works by instructing the visitor’s Web browser to draw a hidden image. Because each computer draws the image slightly differently, the images can be used to assign each user’s device a number that uniquely identifies it.

### Android

[
