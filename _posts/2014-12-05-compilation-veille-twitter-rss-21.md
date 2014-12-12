---
layout: post
title: "Compilation veille Twitter & RSS #21"
category: veille
---

La moisson de liens pour les semaine du 1^er au 5 décembre 2014.  
Ils ont, pour la plupart été publiés sur mon compte Twitter.  
Les voici rassemblés pour ceux qui les auraient raté.

### Operations

[5 Best Practices for Middleware Operations Teams](http://www.c2b2.co.uk/supporting-production-middleware-environments)
: These are best practices from C2B2's  experience working on supporting and building large scale production middleware environments

### Developement

[Which Comes First? The Microservices Or The DevOps?](http://www.activestate.com/blog/2014/12/which-comes-first-microservices-or-devops)
: It is easy to look at the unicorn companies of our world, most notably Netflix, and say, "That's it! That's how we should be doing it". Whether it's DevOps or Microservices, they seem to have it nailed. Most people assume that to get there is a matter of following a few simple steps and picking up and few new tools.

[TDD for teams](http://silkandspinach.net/2014/12/02/tdd-for-teams/)
: I strongly suspect that TDD for teams is different than TDD for individuals.  
There’s a proverb in software development to the effect that: “TDD is a design technique, not a testing technique”  
I agree. But that doesn’t mean it’s the only design technique we need. And it doesn’t also mean that everyone will use it equivalently or get the same results with it. For example, take a look at the approaches used by Seb Rose, Ron Jeffries and Alistair Cockburn to solving the Letter Diamond kata. (Click on their names to read their blog posts, then hop back here if you still have any energy left.) They each tackled the same set of requirements in completely different ways. Each used TDD, and yet their designs were completely different.

### Big Data

[Introduction to PIG Latin](http://www.analyticsvidhya.com/blog/2014/11/introduction-pig-latin/)
: In previous article, we discussed the Hadoop ecosystem ( link ). We also spoke about two most heavily used Hadoop tools i.e. PIG and HIVE. Both the languages have their followers and there is no specific preference between the two, in general. However, in cases where the team using these tools is more programming oriented, PIG is sometimes chosen above HIVE as it gives them more freedom while coding. In cases where the team is not very programming savvy, HIVE probably is a better option, given its similarity to SQL queries. Queries on PIG are written on PIG latin. In this article we will introduce you to PIG Latin using a simple practical example.

#### Hadoop

[Spark: Write to CSV file](http://www.markhneedham.com/blog/2014/11/30/spark-write-to-csv-file/)
:  A couple of weeks ago I wrote how I’d been using Spark to explore a City of Chicago Crime data set and having worked out how many of each crime had been committed I wanted to write that to a CSV file.  
Spark provides a saveAsTextFile function which allows us to save RDD’s so I refactored my code into the following format to allow me to use that: 

[For Apache Hadoop, The POODLE Attack Has Lost Its Bite](http://blog.cloudera.com/blog/2014/12/for-apache-hadoop-the-poodle-attack-has-lost-its-bite/°
: By now, you may have heard about the POODLE (Padding Oracle On Downgraded Legacy Encryption) attack on TLS (Transport Layer Security). This attack combines a cryptographic flaw in the obsolete SSLv3 protocol with the ability of an attacker to downgrade TLS connections to use that protocol. The result is that an active attacker on the same network as the victim can potentially decrypt parts of an otherwise encrypted channel. The only immediately workable fix has been to disable the SSLv3 protocol entirely.  
POODLE sent many technical people scrambling. Web servers needed configuration changes, software projects using TLS needed to change default behavior, and web browsers moved to phase out SSLv3 support. Cloudera has also taken action.

[Tuning Java Garbage Collection for HBase](http://blog.cloudera.com/blog/2014/12/tuning-java-garbage-collection-for-hbase/)
: Apache HBase is an Apache open source project offering NoSQL data storage. Often used together with HDFS, HBase is widely used across the world. Well-known users include Facebook, Twitter, Yahoo, and more. From the developer’s perspective, HBase is a “distributed, versioned, non-relational database modeled after Google’s Bigtable, a distributed storage system for structured data”. HBase can easily handle very high throughput by either scaling up (i.e., deployment on a larger server) or scaling out (i.e., deployment on more servers).

[Apache Hadoop 2.6 is Released](http://blog.cloudera.com/blog/2014/12/apache-hadoop-2-6-is-released/)
: The Apache Hadoop community has voted to release Hadoop 2.6. Congrats to all contributors!  
This new release contains a variety of improvements, particularly in the storage layer and in YARN. We’re particularly excited about the encryption-at-rest feature in HDFS!

#### Analytics

[Introducing the Linked Data Business Cube](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:228991)
: Tassilo Pellegrini from Semantic Web Company has published a new report which outlines business models for Linked Data including a case study of the publishing house and information service provider Wolters Kluwer

[RER Line A Twitter Triggers (Part I)](http://www.dataiku.com//blog/2014/12/01/twitter_and_RERA_investigation.html)
: Public transportation and twitter: what type of relationship? A brief investigation powered by a Data Science Studio web-app.

### Architecture

[HTTP 2.0 is coming, be ready](http://calendar.perfplanet.com/2014/http-2-0-is-coming-be-ready/)
: HTTP has been in use by the World-Wide Web global information initiative since 1990. However, it is December 2014 and we don’t have anymore simple pages with cross linked HTML documents as it used to be. Instead, we have Web applications, some of them very heavy and requiring a lot of resources. And unfortunately, the version of the HTTP protocol currently used – 1.1, has issues.

[Caching the Uncacheable: CSRF Security](http://www.fastly.com/blog/Caching-the-Uncacheable-CSRF-security)
: Cross-Site Request Forgery attacks are a risk for any web application that accepts user data. The best mitigation technique is to use an "authenticity token" that the server generates when building forms for the user and checks when the forms are submitted. Unfortunately, the presence of this token makes the page uncacheable. In this post, I investigate several strategies for maintaining security while improving cacheability. I use Ruby on Rails for the examples, but the techniques apply to nearly any web application framework.

[Keepalived and HAProxy in AWS: An Exploratory Guide](https://blog.logentries.com/2014/12/keepalived-and-haproxy-in-aws-an-exploratory-guide/)
: We’re going to explore high availability and load balancing using Keepalived and HAProxy.  
Keepalived is a routing software designed to provide simple and robust facilities for load balancing and high-availability to Linux systems and Linux-based infrastructures.  
HAProxy is an open source load balancer/reverse proxy generally used for load balancing web services, but also has the functionality to load balance TCP traffic.  
Together, Keepalived and HAProxy provide some unique benefits.  
Specifically, they provide a low cost solution for high availability compared to proprietary hardware-based load balancers.

[Making Software Development Simpler: Look for Repeatable Results, Reusable APIs and DBaaS](http://feeds.dzone.com/~r/zones/architects/~3/8y0zGbNZsos/making-software-development)
: TL;DR: Software is complex -- to design, develop, deliver, and maintain. Everybody knows that, right? New app-development approaches and fundamental changes to the way businesses of all types operate are challenging the belief that meeting customers' software needs requires an army of specialists working in a tightly managed hierarchy. Focusing on repeatable results and reusable APIs helps take the complexity out of the development process.

[Auth0 Architecture - Running in Multiple Cloud Providers and Regions](http://highscalability.com/blog/2014/12/1/auth0-architecture-running-in-multiple-cloud-providers-and-r.html)
: Auth0 provides authentication, authorization and single sign on services for apps of any type: mobile, web, native; on any stack.  
Authentication is critical for the vast majority of apps. We designed Auth0 from the beginning with multipe levels of redundancy. One of this levels is hosting. Auth0 can run anywhere: our cloud, your cloud, or even your own servers. And when we run Auth0 we run it on multiple-cloud providers and in multiple regions simultaneously.

[Why Deployment Freezes Don't Prevent Outages](http://www.xaprb.com/blog/2014/11/29/code-freezes-dont-prevent-outages/)
: I have $10 that says you’ve experienced this before: there’s a holiday, trade show, or other important event coming up. Management is worried about the risk of an outage during this all-important time, and restricts deployments from the week prior through the end of the event.

[Black Friday black out protection with HAProxy](http://blog.loadbalancer.org/black-friday-black-out-protection-with-haproxy/)
: The media industry had lots of fun at the expense of e-commerce outlets on Black Friday mercilessly reporting on site crashes and outages .  
My wife yelled that I needed to ‘fix the Internet’ when Argos.co.uk would not respond immediately to her demands on Friday evening. However on closer inspection i.e. reading the page Agros was handling the situation in a very fair and simple way.

### Databases

#### Redis

[5 Methods For Tracing and Debugging Redis Lua Scripts](https://redislabs.com/blog/5-methods-for-tracing-and-debugging-redis-lua-scripts)
: Software defects are a fact of life because software is made by fleshware, and humans err. Even if you are a good programmer who writes good code (or a great programmer who steals it), use proven methodologies and design patterns, employ only best-of-breed tools, and submit to peers' code reviews… despite your best efforts, you're likely to find yourself time and time again banging your head against the wall because of an elusive gremlin.

#### Couchbase

[Lifecycle of a Node in Couchbase Server Demystified: Adding & Removing Nodes, Rebalancing & Failover](http://blog.couchbase.com/lifecycle-node-couchbase-server-demystified-adding-removing-nodes-rebalancing-failover)
: One of the top attributes of Couchbase Server is its simplicity when it comes to deploying and managing a cluster. Changing the topology of a cluster can be done simply within couchbase through a few actions and few states AND that's what I will present in this post.  
Every node is identical in Couchbase Server in the binaries it carries and services it provides. As more nodes get added to the cluster, they mostly inherit settings from the first node, though you have options to configure certain settings per node like data file location.

#### MySQL

[Streamlined Percona XtraDB Cluster (or anything) testing with Consul and Vagrant](http://www.percona.com/blog/2014/12/05/streamlined-pxc-anything-testing-consul-vagrant/)
: I’m always interested in what Mitchell Hashimoto and Hashicorp are up to, I typically find their projects valuable.  If you’ve heard of Vagrant, you know their work.  
I recently became interested in a newer project they have called ‘Consul‘.  Consul is a bit hard to describe.

[Write Yourself a Query Rewrite Plugin: Part 2](http://mysqlserverteam.com/write-yourself-a-query-rewrite-plugin-part-2/)
: In my last post I covered how to use the query rewrite framework to write your own pre-parse plugin. The interface is simplistic: a string goes in, a string comes out, and the rest is up to your plugin’s internal workings. It doesn’t interact that much with the server. Today I am going to show you the other type of plugins that rewrite queries, post-parse query rewrite plugins. This type is, out of necessity, more tightly coupled with the server; it operates on the internal data structures that make up the query’s parse tree.

[Auto-bootstrapping an all-down cluster with Percona XtraDB Cluster](http://www.percona.com/blog/2014/12/03/auto-bootstrapping-an-all-down-cluster-with-percona-xtradb-cluster/)
: One new feature in Percona XtraDB Cluster (PXC) in recent releases was the inclusion of the ability for an existing cluster to auto-bootstrap after an all-node-down event.  Suppose you lose power on all nodes simultaneously or something else similar happens to your cluster. Traditionally, this meant manually re-bootstrapping the cluster, but not any more.

[Tips from the trenches for over-extended MySQL DBAs](http://www.percona.com/blog/2014/12/02/tips-from-the-trenches-for-over-extended-mysql-dbas/)
: This post is a follow-up to my November 19 webinar, “Tips from the Trenches: A Guide to Preventing Downtime for the Over-Extended DBA,” during which I described some of the most common reasons DBAs experience avoidable downtime. The session was aimed at the “over-stretched DBA,” identified as the MySQL DBA short of time or an engineer of another discipline without the depth of the MySQL system. The over-stretched DBA may be prone to making fundamental mistakes that cause downtime through poor response time, operations that cause blocking on important data or administrative mishaps through the lack of best practice monitoring and alerting. (You can download my slides and view the recorded webinar here.)

[New Data Dictionary - upgrading from earlier MySQL releases](http://www.tocker.ca/2014/12/01/new-data-dictionary-upgrading-from-earlier-mysql-releases.html)
: In July, I first wrote that we are currently working on a new data dictionary for MySQL. We have since shipped a labs release where you can try it out for yourself and then send us feedback!  
Today, I wanted to write about our upgrade plan from the old data dictionary to the new data dictionary. Or more specifically, explain one of the nuances that we currently have with encoding characters that are not safe on all filesystems.

[Faster restarts for MySQL and Percona Server 5.6.21+](http://www.percona.com/blog/2014/12/01/faster-restarts-for-mysql-and-percona-server-5-6-21/)
: By default in MySQL 5.6, each time MySQL is started (regular start or crash recovery), it iterates through all the binlog files when GTIDs are not enabled. This can take a very long time if you have a large number of binary log files. MySQL and Percona Server 5.6.21+ have a fix with the simplified-binlog-gtid-recovery option. Let’s explore this issue.

### Virtualization

#### Docker

[Thoughts at the Start of DockerCon EU](https://blog.docker.com/2014/12/thoughts-at-the-start-of-dockercon-eu/)
: As I write this blog post, we are just a few hours from the start of DockerCon EU. So, it feels like a good time to reflect on both where Docker has come from in the ~19 months since Solomon and team started the project and where we are going in the future. DockerCon 14

[Announcing Docker Machine, Swarm, and Compose for Orchestrating Distributed Apps](https://blog.docker.com/2014/12/announcing-docker-machine-swarm-and-compose-for-orchestrating-distributed-apps/)
: As users start exploring Docker and Docker Hub, they typically start by Dockerizing some apps, incorporating Docker into their build-test pipeline, creating a Docker-based development environment, or trying out one of the other half-dozen common use cases.  In these use cases and others, we’ve heard from many community members about how Docker has sped up development-to-deploy cycle times and eliminated the friction of moving apps from laptops to data centers, or from one cloud to another.

[Docker Announces Orchestration for Multi-Container Distributed Apps](https://blog.docker.com/2014/12/docker-announces-orchestration-for-multi-container-distributed-apps/)
: San Francisco, Calif.  and Amsterdam, NL.– December 4, 2014 – Docker, Inc., the company behind the open platform for distributed applications, today announced new, comprehensive platform services for orchestrating multi-container distributed applications. These comprehensive orchestration capabilities are designed to empower developers and sysadmins to create and manage a new generation of portable distributed applications that are rapidly composed of discrete interoperable Docker containers, have a dynamic lifecycle, and can scale to run in concert anywhere from the developer’s laptop to hundreds of hosts in the cloud.

[Docker Announces Docker Hub Enterprise](https://blog.docker.com/2014/12/docker-announces-docker-hub-enterprise/)
: San Francisco, Calif., and DockerCon EU, Amsterdam, NL.– December 4, 2014 – Docker, Inc., the company behind the open platform for distributed applications, today announced Docker Hub Enterprise (DHE) – a new product addition to the Docker platform that brings key workflow capabilities for developers and sysadmins managing a dynamic lifecycle behind the enterprise firewall. Docker Hub Enterprise will leverage and extend the capabilities of Docker Hub, the popular hosted service that enables developers to share, distribute and collaborate on Dockerized distributed applications. Offering these critical application lifecycle workflow capabilities in a dedicated form factor meets the security and governance requirements of a class of enterprises that require their software intellectual property (IP) in a control point that is solely their own. Docker also announced that a number of industry leading partners, including IBM and Microsoft will be bringing DHE to market as part of broader product and service offerings.

[Announcing Docker Hub Enterprise: Managing Distributed Applications Behind the Firewall](https://blog.docker.com/2014/12/announcing-docker-hub-enterprise-managing-distributed-applications-behind-the-firewall/)
: DockerCon! There’s been a ton of exciting new technology showcased at DockerCon and it’s been thrilling to announce Docker Hub Enterprise on stage and to get such positive feedback on it. There were 500+ people in person [thousands will watch the replay of the keynote] today hoping to learn how to manage and maintain their distributed applications, and I’m excited to say that those benefits are coming to the enterprise as a turn-key solution[or something in this vane otherwise implies no enterprises can use just DH]. The Docker open platform for distributed applications has enjoyed explosive growth, but prior to today’s announcement, enterprises that wanted to use Docker for business critical, differentiated applications had to rely on internal tools hacked on top of the open source project or 3rd party offerings. With Docker Hub Enterprise, we’re promising to meet this need with a behind the firewall, enterprise-grade solution.

[Docker orchestration…what it means and why you need it.](http://getcloudify.org/2014/11/23/docker-containers-docker-cloud-management.html)
: Docker containers were created to help enable the fast, and reliable deployment of application components or tiers, by creating a container that holds a self-contained ready to deploy parts of applications, with the middleware and the app business logic needed to run them successfully.  For example, a Spring application within a Tomcat container.  By design, Docker is purposely an isolated self-contained part of the application, typically one tier or even one node in a tier. 

#### Rocket

[Initial thoughts on the Rocket announcement](https://blog.docker.com/2014/12/initial-thoughts-on-the-rocket-announcement/)
: When Docker launched 18 months ago, we set as a mission “to build “ the button” that enables any application to instantly and consistently run on any server anywhere.  
Our first task was to define a  a standard container format, that would enable any application to be packaged into a lightweight container that could run on any infrastructure.

[CoreOS is building a container runtime, Rocket](http://coreos.com/blog/rocket/)
: Rocket is a new container runtime, designed for composability, security, and speed. Today we are releasing a prototype version on GitHub to begin gathering feedback from our community and explain why we are building Rocket.

### Web Performance

[A New Way to Audit Your Responsive Mobile Site Performance](http://zoompf.com/blog/2014/12/performance-audit-responsive-mobile-sites)
: While responsive website design can be a great way to simplify your website code across multiple form factors, it does come at the cost of extra complexity in your CSS and Javascript. As the browser type and viewport sizes change, different CSS rules are applied, different javascript lines may be executed, and even different images may be loaded – all to provide the most optimal viewing experience for your mobile, tablet or desktop device.


[HTTPS and Web Performance](http://calendar.perfplanet.com/2014/https-and-web-performance/)
: HTTPS is a hot topic lately. Google indicated earlier this year that they will use HTTPS as a ranking signal in their search results, and along with the Heartbleed and Poodle vulnerabilities, HTTPS has been generating a lot of interest.  
Vulnerabilities aside, the goal of HTTPS is to ensure that we deliver safer, encrypted data to our users. Moving to HTTPS is a great step forward and reduces the chance of prying eyes tampering with sensitive information.

[Automating Web Page Rendering Performance](http://calendar.perfplanet.com/2014/automating-web-page-rendering-performance/)
: Delivering web page content to users as quickly as possible is important. It is equally important to ensure that this downloaded content provides a smooth and responsive user experience. Page scrolls that are Janky, delays when typing in text boxes or choppy animations are just as bad as pages that take a long time to load. Users spend longer using the page than waiting for it to load and we should ensure that the page renders at 60 frames per second at all times. 

### Security

[Security Lessons Courtesy of Snapchat](http://blog.smartbear.com/apis/readyapi/security-lessons-courtesy-of-snapchat/)
: We all know Snapchat – it’s a popular smartphone app that lets you send a picture to a friend that disappears into the ether after 10 seconds or less. Snapchat is in part successful because of the temporary nature of its sharing – in a world where everything online is permanent, it’s refreshing to be able to share images and video with little to no risk of an embarrassing public leak. At least, that’s the theory. The app is supposed to notify you if a recipient attempts to take a screenshot of your picture or save it in any other way. The image is truly supposed to cease existing after the short time interval expires.

[How To Secure Cloud Services](http://cloud.dzone.com/articles/how-secure-cloud-services)
: Cloud computing is nothing but accessing and using applications and files over the Internet rather than on your own computing devices.  
But before an organization shifts some of its resources to the cloud, there are certain measures it should take to ensure that its data will be secure.   
If opting for software-as-a-service (SaaS), the firm has to collect as much information as possible about that service provider’s infrastructure and security provisions. Infrastructure-as-a-service (IaaS) service providers should be asked about the tools they provide for the protection of data in virtual space.

[API Security Testing – How to Hack an API and Get Away with It (Part 3 of 3)](http://blog.smartbear.com/apis/readyapi/api-security-testing-how-to-hack-an-api-and-get-away-with-it-part-3-of-3/)
: The first two installments in this series have set us well on our path to API security/intrusion nirvana; we first got to grips with current API technology basics, moved on to API Attack surface detection and then looked at a series of common and potent vulnerability attacks – all sharing the fact that they are pretty simple to perform using a little wit and available tools. Let’s dig a little more in our arsenal before concluding with some hands on tips on how to work with API Security Testing. 

[API Security Testing – How to Hack an API and Get Away with It (Part 2 of 3)](http://blog.smartbear.com/apis/readyapi/api-security-testing-how-to-hack-an-api-and-get-away-with-it-part-2-of-3/)
: In our last post, we prepared our API hacking weaponry – we looked at the basics of Web-based APIs (HTTP, Message Formats, Security Standards) and how to discover the attack surface of an API. This time around we’re going to start with some basic attacks. Let’s see if we can get our API out of balance and joviality – welcome back!

[API Security Testing – How to Hack an API and Get Away with It (Part 1 of 3)](http://blog.smartbear.com/apis/readyapi/api-security-testing-how-to-hack-an-api-and-get-away-with-it-part-1-of-3/)
: So, you’ve created an exhaustive regression test suite for your APIs that runs as part of your continuous build and deploy process. You’ve run and even automated (cool!) load-tests that simulate magnitudes more users than your API will probably ever (but maybe) have. You’ve set up monitors that will catch any bug that sneaks past all these lines of defense. Hey – you’ve even automated the validation of the metadata that gets generated for your API every time you commit some changes to your code (high five)! Your API is ready for Primetime! (…or not.)

### Project management

[10 Project Metrics to Track](http://architects.dzone.com/articles/10-project-metrics-track)
: Improving your business processes should not be a stop-start, big bang implementation of new ways of working, it should be a continuous process of analyzing the work you have done and identifying ways in which you might do things better in the future. If you identify potential improvements then you should set yourself up to implement them and then measure whether the expected benefits materialize. Here are my top 10 Project Metrics that you can easily obtain to feed into that Business Process Improvement cycle.

### Product management

[What is Product Management?](http://www.romanpichler.com/blog/romans-product-management-framework/)
: I often get asked what it takes to be an effective product manager or product owner, which product skills the individuals should have, and how a company can strengthen its product management function. Answering these questions requires an understanding of what effective product management looks like in the digital age.
