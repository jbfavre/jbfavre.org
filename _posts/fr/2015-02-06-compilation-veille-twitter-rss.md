---
layout: post
title: "Compilation veille Twitter & RSS #2015-05"
category: veille
---

La moisson de liens pour les semaine du 2 au 6 janvier 2015.
Ils ont, pour la plupart été publiés sur mon compte Twitter.
Les voici rassemblés pour ceux qui les auraient raté.

Bonne lecture

## Big Data

### Hadoop

[How-to: Do Real-time Big Data Discovery using Cloudera Enterprise and Qlik Sense](http://blog.cloudera.com/blog/2015/02/how-to-do-real-time-big-data-discovery-using-cloudera-enterprise-and-qlik-sense/)
: Cloudera and Qlik (which is part of the Impala Accelerator Program) have revolutionized the delivery of insights and value to every business stakeholder for “small data,” to something more powerful in the Big Data world—enabling users to combine Big Data and “small data” to yield actionable business insights.  
In this post, you’ll learn how Qlik Sense interacts with HDFS via a Cloudera enterprise data hub. This document can be also used as a quick guide on how to conduct a fast and easy-to-set-up evaluation of Qlik Sense and Cloudera.

## Network

[Path MTU discovery in practice](http://blog.cloudflare.com/path-mtu-discovery-in-pracrice/)
: Last week, a very small number of our users who are using IP tunnels (primarily tunneling IPv4 to IPv6) were unable to access our services because a networking change broke "path MTU discovery" on our servers. In this article, I'll explain what path MTU discovery is, how we broke it and how we fixed it and open source the code we used.

## Continuous Delivery
Security
[Continuous Delivery: From Theory to Practice](http://java.dzone.com/articles/continuous-delivery-theory)
: When we discuss continuous delivery (CD), the starting point would need to be the motivation that has driven this IT evolution.  The demand for continuous delivery was brought on by businesses’ need for more agility and faster time to market, where time to market is the primary motivation, and agility is the means to achieving that.  If manual delivery processes used to involve running a compiler by hand, then creating a binary, then copying it manually to a server, and then restarting that server; clearly the time to market in such scenarios was long and complex, but even more so, was error prone due to the manual involvement. 

## SEO

[7 Ways To Use Splunk For Technical SEO](http://searchengineland.com/7-ways-use-splunk-technical-seo-209987)
: Anyone with a passion for technical SEO strives to have a deep understanding of a website’s architecture and aims to be very familiar with how Google relates to the URIs on a site.  
In my quest to be the best technical SEO I can be, I have discovered that by spending time doing deep analysis of site access logs, I can learn a great deal about how search engines understand the site. To that end, my favorite tool for this task is Splunk.

## Monitoring

[5 Reasons to Ditch Email Alerts](https://www.pagerduty.com/blog/ditch-vs-improve-email-alerts/)
: Monitoring systems can help you better manage your uptime, but even though you may spend a lot of time configuring checks and thresholds to identify problems early, your alerts are only as good as your incident response processes. One of the biggest challenges we’ve seen when talking with customers is getting bogged down in email alerts. Despite the increasing disarray of our inboxes, many monitoring systems and IT Operations teams still rely on email for alerting, even though most agree it’s messy and too easy to miss. Looking to improve email alerts? Look again.

[SPS : the Pulse of Netflix Streaming](http://techblog.netflix.com/2015/02/sps-pulse-of-netflix-streaming.html)
: We want to provide an amazing experience to each member, winning the “moments of truth” where they decide what entertainment to enjoy.  To do that, we need to understand the health of our system.  To quickly and easily understand the health of the system, we need a simple metric that a diverse set of people can comprehend.  In this post we will discuss how we discovered and aligned everyone around one operational metric indicating service health, enabling us to streamline production operations and improve availability.  We will detail how we approach signal analysis, deviation detection, and alerting for that signal and for other general use cases.

### Log management

[Log Analysis for Software-defined Data Centers](https://blog.logentries.com/2015/02/log-analysis-for-software-defined-data-centers/)
: Modern infrastructure constantly generates log data at a rate faster than humans can easily analyze. And now that data centers can be built and torn down with scripts, the amount of activity and data is exponential.  
The traditional log analysis practices of manually reviewing log files on a weekly or daily basis, remain inadequate when looking at Software-defined Data Centers (SDDC). The modern architecture of SDDC, with its highly automated and dynamic deployment capabilities for multi-tier applications, necessitates real-time log analytics. Analytics that are key to complex troubleshooting, dynamic provisioning, high performance and superior security.

## System

[Deep Insights: The Kernel Boot Process](http://ma.ttias.be/deep-insights-kernel-boot-process/)
: You've got to love collaboration. Especially on documentation. The github repo 0xAX/linux-insides has a fantastic set of resources that describe the Linux boot process in great detail.

## Virtualization

[Live Migrations for Containers with CRIU](http://ma.ttias.be/live-migrations-containers-criu/)
: At Fosdem there was a talk about live migrations for containers, using CRIU (Checkpoint/Restore in User-Space).

## Development

### Frontend

[A jQuery Face Detection plugin that works on images and videos](http://feedproxy.google.com/~r/thechangelog/~3/BDfUTglq0e4/)
: They say a picture is worth a thousand words links. When you can detect individual faces inside said picture (or video), it’s worth even more.

[How we made JavaScript testing 15x faster](http://engineering.pinterest.com/post/109995039029)
: Testing is an important pillar in our engineering infrastructure. We have hundreds of A/B experiments running at any given time. To keep these experiments running smoothly, it’s critical to have numerous tests running as part of the build.  
Unfortunately, our Javascript test framework was beginning to creak under the strain of hundreds of test files and dozens of simultaneous experiments. It was slow, taking 15 minutes to run the full suite of tests, and often broke due to experiments changing behavior and network/browser issues. As a result, trust in the system degraded, and the tests were removed from our automated build processes until the system could be repaired.

[Transitioning to SCSS at Scale](https://codeascraft.com/2015/02/02/transitioning-to-scss-at-scale/)
: Naively, CSS appears easy to comprehend — it doesn’t have many programming constructs, and it’s a declarative syntax that describes the appearance of the DOM rather than an executable language. Ironically it’s this lack of functionality that can make CSS difficult to reason about. The inability to add scripting around where and when selectors are executed can make wide-reaching changes to CSS risky.

### Backend

[Marco Arment Uses Go Instead of PHP and Saves Money by Cutting the Number of Servers in Half](http://highscalability.com/blog/2015/2/2/marco-arment-uses-go-instead-of-php-and-saves-money-by-cutti.html)
: On the excellent Accidental Tech Podcast there's a running conversation about Marco Arment's (Tumblr, Instapaper) switch to Go, from a much loved PHP, to implement feed crawling for Overcast, his popular podcasting app for the iPhone.

### PHP

[Blackfire needs your thoughts](http://blog.blackfire.io/survey-2015.html)
: At Blackfire, we've had great ideas on how to make profiling easier and simpler. But one thing is for sure: those ideas find their source in your problems. Some of you struggled when using other tools. Some of you didn't find the proper one. Some of you didn't know that there were tools which could have helped. And we also made the plain observation ourselves, as end users, that some web apps could use some performance optimizations. From your problems, or your user's problems, we build solutions.

### Tests

[Reducing Test Times by Only Running Impacted Tests - Python Edition](http://python.dzone.com/articles/reducing-test-times-only-0)
: This article follows on from my Omnipresent, Infallible, Omnipotent and Instantaneous Build Technologies one ten days ago, and Reducing Test Times by Only Running Impacted Tests a week ago, which was for Java.

## Databases

### MySQL

[Everything You Need to Know About Scaling MySQL – Part 5: Supporting MySQL](http://blog.clustrix.com/2015/02/03/everything-need-know-scaling-mysql-part-5-supporting-mysql/)
: For many small companies that aren’t expecting to grow much in the coming years, the power in an MySQL databases will suffice to handle their business needs.  
But for companies that intend on growing—particularly e-commerce businesses—it’s only a matter of time before your MySQL database hits a wall and your website stops functioning properly. And when that happens, your customers become frustrated and you miss out on sales — both today, and tomorrow if they don’t decide to come back.

[The future of MySQL quality assurance: Introducing `pquery`](http://www.percona.com/blog/2015/02/04/future-mysql-quality-assurance-introducing-pquery/)
: Being a QA Engineer, how would you feel if you had access to a framework which can generate 80+ crashes – a mix of hitting developer introduced assertions (situations that should not happen), and serious unforeseen binary crashes – for the world’s most popular open source database software – each and ever hour? What if you could do this running on a medium spec machine – even a laptop?

[MySQL's Index Hints Can Improve Query Performance, But Only If You Avoid the 'Gotchas' ](http://gomorpheus.com/blog/2015-01-28-mysql-s-index-hints-can-improve-query-performance-but-only-if-you-avoid-the-gotchas)
: In most cases, MySQL's optimizer chooses the fastest index option for queries automatically, but now and then it may hit a snag that slows your database queries to a crawl. You can use one of the three index hints -- USE INDEX, IGNORE INDEX, or FORCE INDEX -- to specify which indexes the optimizer uses or doesn't use. However, there are many limitations to using the hints, and most query-processing problems can be resolved by making things simpler rather than by making them more complicated.

### Cassandra

[Global Multi-Data Center Education Replication via Cassandra Days](http://planetcassandra.org/blog/global-multi-data-center-education-replication-via-cassandra-days/)
: Just like Cassandra itself DataStax’s education initiatives continue to scale out globally to meet demand for engineers, relational developers and IT leaders wanting to learn all about the NoSQL distributed database management system. Last year, in addition to three Cassandra summits (San Francisco, Tokyo, and London) we put on four Cassandra Days. In 2015 we are building on that momentum to put on 12 Cassandra Days around the globe, which will focus on providing baseline education for people new to the system, and more advanced content for technical folks who want to dive a little deeper into the technology. Building on the success of the executive track at the summits we will also be featuring a half-day Internet Enterprise event specially tailored to business and IT leaders.

[Basic Rules of Cassandra Data Modeling](http://www.datastax.com/dev/blog/basic-rules-of-cassandra-data-modeling)
: Picking the right data model is the hardest part of using Cassandra. If you have a relational background, CQL will look familiar, but the way you use it can be very different. The goal of this post is to explain the basic rules you should keep in mind when designing your schema for Cassandra. If you follow these rules, you’ll get pretty good performance out of the box. Better yet, your performance should scale linearly as you add nodes to the cluster.

### Redis

[The 7th Principle of Redis: We Optimize for Joy](https://redislabs.com/blog/the-7th-principle-of-redis-we-optimize-for-joy)
: The 7th principle, as laid out in the Redis Manifesto, really aligns with my beliefs and views, and probably those of all engineers (regardless of experience). There's little in this world as satisfying as that rush of excitement you get from devising a clever way to do something new and/or better. This joyous rush, in turn, can and often does lead to developing a serious addiction, as recognized by Donald Knuth ("premature optimization is the root of all evil") and Randall Munroe (e.g. [http://xkcd.com/1205/](http://xkcd.com/1205/), [http://xkcd.com/1445/](http://xkcd.com/1445/) and [http://xkcd.com/1319/](http://xkcd.com/1319/)) long ago.

[Advanced Redis data structures](http://amix.dk/blog/post/19756)
:  A few days ago I gave a talk at PyCon Belarus regarding advanced Redis structures.

### Elasticsearch

[Lucene’s handling of deleted documents](http://www.elasticsearch.org/blog/lucenes-handling-of-deleted-documents/)
: When a document is deleted or updated (= delete + add), Apache Lucene simply marks a bit in a per-segment bitset to record that the document is deleted. All subsequent searches simply skip any deleted documents.

## Security

[The Sichuan pepper "attack": from DNS censorship to DNS redirection](http://www.bortzmeyer.org/sichuan-pepper.html)
: It is well-known, for many years, that the chinese governement censors the Internet via several means, including DNS lies. For a long time, these DNS lies have been generated by the netwok itself: when a DNS query for a censored name is seen, an active censorship device generates a lie and sends a reply with the wrong IP address. A few weeks ago, there have been a change in this system: the IP addresses returned by the Great FireWall are more often actual addresses used by real machines, which suddently have to sustain a big traffic from China.

[DDOS on La Quadrature du Net, analysis](https://benjamin.sonntag.fr/DDOS-on-La-Quadrature-du-Net-analysis)
: On January 20th and 22th, one of the servers of la Quadrature du Net, the Paris-based digital freedom association I co-founded and that my company is freely hosting, got hit by some distributed denial of service attacks.  
Here is a quick analysis of what we were able to understand about those attacks...

[Busting GHOSTs with Chef](https://www.chef.io/blog/2015/01/31/busting-ghosts-with-chef/)
: We nearly escaped the first month of the new year without another major security vulnerability, but just a few days ago, security researchers found another serious bug, which they named GHOST. This time it’s in the gethostbyname() function inside glibc, the GNU C library, so the name is apt. Once again, we can use Chef to easily detect and repair this vulnerability.

[Anatomy of a Facebook Phishing Campaign](https://labs.opendns.com/2015/01/30/anatomy-facebook-phishing-campaign/)
: An average of 1,200 phishing messages were verified each day on PhishTank during the month of January 2015. Most phishing attempts are delivered through email. However, some phishing attacks leverage social networking. This is an analysis of one phishing attack seen on Facebook.

## Analytics

[A look behind search guides](http://engineering.pinterest.com/post/109593062904)
: We launched Guided Search last year to give Pinners an exploratory search where they can discover the best ideas by clicking different guides to filter results. We’re continuing to make updates, such as recent improvements to show more personalized results based on who’s searching and building a smarter platform to understand queries. Today searches derived from guide clicking is one of the major sources of our search traffic. In fact, the number of guides clicked per day has tripled in the last six months, and we’re seeing patterns of its momentum. Guides change based on engagement, so the more people search and Pin, the better the experience gets. In this post, you’ll learn how we create and rank guides, as well as gain insights into trends around how Guided Search is being used for discovery every day.  

## Web performances

[Preview: Super Bowl Ad Performance Tests Are in Place](http://apmblog.dynatrace.com/2015/01/30/preview-super-bowl-ad-performance-tests-place/)
: This weekend marks the 49^th annual Super Bowl! If you aren’t psyched to watch the big game, you can still be entertained by the extravagant commercials companies pay millions for each year. Hopefully, if you work in the IT department of one of these companies you’ve already load tested the landing pages the commercials will be sending people to during the game so they don’t crash.

[Live Blog: Tracking Super Bowl Ad Performance](http://apmblog.dynatrace.com/2015/01/30/super-bowl-ad-performance/)
: So let’s see during the game who was the fastest and who was the slowest in terms of response time.  In the following chart we see that Heinz, Cheerios, Beats, Subway and Carmax took the top spot.

## Management

[Matt Cutts: 10 Lessons Learned from the Early Days of Google](http://highscalability.com/blog/2015/2/4/matt-cutts-10-lessons-learned-from-the-early-days-of-google.html)
: I mainly know of Matt Cutts, long time Google employee (since 2000) and currently head of Google's Webspam team, from his appearances on TwiT with Leo Laporte. On TwiT Matt always comes off as smart, thoughtful, and a really nice guy. This you might expect.

[Standard Bank: Our DevOps Journey (part 1)](https://www.chef.io/blog/2015/01/21/standard-bank-our-devops-journey-part-1/)
: Welcome to the first of a series of blog posts that describe Standard Bank of South Africa‘s DevOps journey. This series describes how Standard Bank is transforming its delivery process to provide new features and services at velocity.

[Standard Bank: Our DevOps Journey (part 2)](https://www.chef.io/blog/2015/02/02/standard-bank-our-devops-journey-part-2/)
: Standard Bank brought in Chef to help plan and execute its DevOps journey. The first of a series of planned visits was three days long and, during that time, Chef and Standard Bank worked together to develop an approach. From a broad perspective, Dawie Olivier, who represented the development side and Mike Murphy, who represented the operations side, had brought together the sharpest minds at Standard Bank to answer these questions: 

[We can’t measure Programmer Productivity… or can we?](http://swreflections.blogspot.fr/2015/01/we-cant-measure-programmer-productivity.html)
: There is no clear cut way to measure which programmers are doing a better or faster job, or to compare productivity across teams. We “know” who the stars on a team are, who we can depend on to deliver, and who is struggling. And we know if a team is kicking ass – or dragging their asses. But how do we prove it? How can we quantify it? 
