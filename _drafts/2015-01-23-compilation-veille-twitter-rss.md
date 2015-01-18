---
layout: post
title: "Compilation veille Twitter & RSS #2015-03"
category: veille
---

La moisson de liens pour les semaine du 19 au 23 janvier 2015.
Ils ont, pour la plupart été publiés sur mon compte Twitter.
Les voici rassemblés pour ceux qui les auraient raté.

Bonne lecture

## Web performances

[A Simple Performance Comparison of HTTPS, SPDY and HTTP/2](http://blog.httpwatch.com/2015/01/16/a-simple-performance-comparison-of-https-spdy-and-http2/)
: Firefox 35 was released this week and became the first browser to enable support for the HTTP/2 protocol by default.  
The HTTP/2 specification has not been finalised so Firefox actually enabled the Draft 14 version of HTTP/2 but little is expected to change in the final draft. Google is now supporting HTTP/2 draft 14 on its web servers alongside the SPDY protocol giving us a chance to compare the performance of raw HTTPS, SPDY and HTTP/2 on the same web page.

[Make Performance Part of Your Workflow](https://codeascraft.com/2014/12/11/make-performance-part-of-your-workflow/)
: One way to minimize the operational cost of performance work is to incorporate it into your daily workflow by implementing tools and developing a routine of benchmarking performance.

[Etsy Q3 2014 Site Performance Report](https://codeascraft.com/2014/12/22/q3-2014-site-performance-report/)
: We’re well into the fourth quarter of 2014, and it’s time to update you on how we did in Q3. This is either a really late performance report or an early Christmas present – you decide! The short version is that server side performance improved due to infrastructure changes, while front-end performance got worse because of third party content and increased amounts of CSS/JS across the site. In most cases the additional CSS/JS came from redesigns and new features that were part of winning variants that we tested on site. We’ve also learned that we need some better front-end monitoring and analysis tools to detect regressions and figure out what caused them.

## Product Management

[Converting To Jobs Stories](http://robots.thoughtbot.com/converting-to-jobs-stories)
: We have used user stories as part of our design and development process for many years. You could find several mentions of them throughout our playbook. We used user stories to give designers and developers context to the problems that the user is having and give space for them to solve that problem while building the product.

## Management

[Making Remote Work: Tools](http://blog.jayfields.com/2015/01/making-remote-work-tools.html)
: I recently wrote about my experiences working on a remote team. Within that blog entry you can find a more verbose version of the following text:  
"Communication is what I consider to be the hardest part of remote work. I haven't found an easy, general solution. A few teammates prefer video chat, others despise it. A few teammates like the wiki as a backlog, a few haven't ever edited the wiki. Some prefer strict usage of email/chat/phone for async-unimportant/async-important/sync-urgent, others tend to use one of those 3 for all communication."  
As you can tell, we have several different communication tools. When writing, I generally prefer to include concrete examples. This blog entry will list each tool referenced above. However, I cannot emphasize enough that: this list is a snapshot of what we're using, not a recommended set of tools.

[We Invite Everyone at Etsy to Do an Engineering Rotation: Here’s why](https://codeascraft.com/2014/12/22/engineering-rotation/)
: At Etsy, it’s not just engineers who write and deploy code – our designers and product managers regularly do too. And now any Etsy employee can sign up for an “engineering rotation” to get a crash course in how Etsy codes, and ultimately work with an engineer to write and deploy the code that adds their photo to our about page. In the past year, 70 employees have completed engineering rotations. Our engineers have been pushing on day one for a while now, but it took a bit more work to get non-coders prepared to push as soon as their second week. In this post I’ll explain why we started engineering rotations and what an entire rotation entails.

## Big Data

[Bigdata Analytics and Supply chain management](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:241560)
: I am a newbie to Bigdata and would like to highlight some significant advantages if incorporated in a company's supply-chain management strategies, expecting the reader's views and suggestions.  
Because, in recent past I have developed a online supply-chain management systems in which sellers and customers are matched using an algorithm. It acted as a decision support system and I needed to dig deeper on the available data to get more insights over the data pattern (even for evaluating its correctness).

[The Cognitive Cost of Switching Technology Stacks](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:241115)
: Cognitive load is a term applied to the overall effort used in working memory for an individual performing a task. Faced with any technology choice, we tend to concoct an approximation in our minds of the cost of effort, compared to the benefit of change.  The cost that has been on my mind recently – is that of cognitive load. Even thinking about the irony of that statement adds to my cognitive load.

[Lambda Architecture for Big Data](https://tsicilian.wordpress.com/2015/01/05/lambda-architecture-for-big-data/)
: An increasing number of systems are being built to handle the Volume, Velocity and Variety of Big Data, and hopefully help gain new insights and make better business decisions. Here, we will look at ways to deal with Big Data’s Volume and Velocity simultaneously, within a single architecture solution.

### Hadoop

[How-to: Deploy Apache Hadoop Clusters Like a Boss](http://blog.cloudera.com/blog/2015/01/how-to-deploy-apache-hadoop-clusters-like-a-boss/)
: Learn how to set up a Hadoop cluster in a way that maximizes successful production-ization of Hadoop and minimizes ongoing, long-term adjustments.  
Previously, we published some recommendations on selecting new hardware for Apache Hadoop deployments. That post covered some important ideas regarding cluster planning and deployment such as workload profiling and general recommendations for CPU, disk, and memory allocations. In this post, we’ll provide some best practices and guidelines for the next part of the implementation process: configuring the machines once they arrive. Between the two posts, you’ll have a great head start toward production-izing Hadoop.

[Introducing statsd-jvm-profiler: A JVM Profiler for Hadoop](https://codeascraft.com/2015/01/14/introducing-statsd-jvm-profiler-a-jvm-profiler-for-hadoop/)
: At Etsy we run thousands of Hadoop jobs over hundreds of terabytes of data every day.  When operating at this scale optimizing jobs is vital: we need to make sure that users get the results they need quickly, while also ensuring we use our cluster’s resources efficiently.  Actually doing that optimizing is the hard part, however.  To make accurate decisions you need measurements, and so we have created statsd-jvm-profiler: a JVM profiler that sends the profiling data to StatsD.

### DataViz

[How the JavaScript Heatmap Implementation Works ](http://acuriousanimal.com/blog/2014/12/23/how-the-javascript-heatmap-implementation-works/)
: A heatmap is a powerful way to visualize data. Given a matrix of data each value is represented by a color. The implementation of the heatmap algorithm is expensive in computation terms: for each grid’s pixel you need to compute its color from a set of known values. As you could imagine, it is not feasible to implement it on the client side because map rendering would be really slow.

### Analytics

[The Changing Nature of Predictive Analytics in the Enterprise](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:240470)
: Today, an increasing number of institutional clients are looking for solutions, strategies and roadmaps to implement Big Data and Predictive Analytics initiatives within their own organizations. While the exact nature of the solutions and recommendations may differ from client to client, based on a number of factors, like the industry they operate in, the size of their operations and business model, there are common threads that can be applied to their needs.

[Why Topological Data Analysis Works](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:239312)
: Topological data analysis has been very successful in discovering information in many large and complex data sets. In this post, I would like to discuss the reasons why it is an effective methodology.  
One of the key messages around topological data analysis is that data has shape and the shape matters. Although it may appear to be a new message, in fact it describes something very familiar.

[Personalized Recommendations at Etsy](https://codeascraft.com/2014/11/17/personalized-recommendations-at-etsy/)
: Providing personalized recommendations is important to our online marketplace.  It benefits both buyers and sellers: buyers are shown interesting products that they might not have found on their own, and products get more exposure beyond the seller’s own marketing efforts.  In this post we review some of the methods we use for making recommendations at Etsy.  The MapReduce implementations of all these methods are now included in our open-source machine learning package “Conjecture” which was described in a previous post.

## Databases

### MySQL

[Impacts of `max_allowed_packet size` problems on your MySQL database](http://www.fromdual.com/impacts-of-max_allowed_packet-size-problems-on-your-mysql-database)
: We recently run into some troubles with `max_allowed_packet` size problems during backups with the FromDual Backup/Recovery Manager and thus I investigated a bit more in the symptoms of such problems.

[Getting Mutex Information from MySQL's `performance_schema` ](http://www.percona.com/blog/2015/01/06/getting-mutex-information-from-mysqls-performance_schema/)
: We have been using the `SHOW ENGINE INNODB MUTEX` command for years. It shows us mutex and rw-lock information that could be useful during service troubleshooting in case of performance problems. As Morgan Tocker announced in his blog post the command will be removed from MySQL 5.7 and we have to use `performance_schema` to get that info.

### MariaDB

[Devops with MariaDB, Part 1](https://mariadb.com/blog/devops-mariadb-part-1)
: This new blog series will be about how to easily automate common MariaDB administration tasks using Ansible. We will showcase how to automatically install and configure software such as MariaDB server, MariaDB Galera and MaxScale with ease in reproducible environments.

## System

[Convert Your Bash Scripts With chef apply](https://www.chef.io/blog/2015/01/16/convert-your-bash-scripts-with-chef-apply/)
: Chef is a mighty set of tools that can automate and verify your infrastructure, but its full power is a lot to digest. Most of us learn new tools by trying them out for an hour or two, and that’s usually how we make a decision. Today I want to show how you can get real value out of Chef real fast, maybe on a Friday afternoon with a couple of hours set aside for experimenting, by replacing a shell script with a list of Chef declarations.

[Learning systemd](https://ma.ttias.be/learning-systemd/)
: Systemd is coming a linux distro near you.  
In fact, if you're using RHEL 7+, CentOS 7+, Fedora 15+ or Arch, you're already using systemd. You can always stick to a distribution that stays clear of systemd, but chances are you'll eventually run into systemd -- so we may as well learn to get along with it.

### Chef

[Quick Tip: Define Resources to Notifiy in LWRPs](http://jtimberman.housepub.org/blog/2015/01/17/quick-tip-define-resources-to-notifiy-in-lwrps/)
: In this quick tip, I’ll explain why you may need to create resources to notify in a provider, even if the resource exists in a recipe, when using `use_inline_resources` in Chef’s LWRP DSL.  
I’ll use an example cookbook, notif, to illustrate. First, I’ve created `cookbooks/notif/resources/default.rb`, with the following content.
