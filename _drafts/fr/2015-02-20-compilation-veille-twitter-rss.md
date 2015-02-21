---
layout: post
title: "Compilation veille Twitter & RSS #2015-07"
category: veille
---

La moisson de liens pour les semaine du 16 au 20 janvier 2015.
Ils ont, pour la plupart été publiés sur mon compte Twitter.
Les voici rassemblés pour ceux qui les auraient raté.

Bonne lecture

## Virtualization

### Docker

[Test Drive Your Dockerfiles with RSpec and ServerSpec](http://robots.thoughtbot.com/tdd-your-dockerfiles-with-rspec-and-serverspec)
:Docker, a portable, lightweight runtime and packaging tool, is all the rage these days. It’s hard to go to any sort of tech meetup without overhearing people gushing to each other about how cool it is. I’d written some Dockerfiles but wanted to start test driving them. It’s actually fairly straightforward using RSpec and ServerSpec. Here’s how to TDD a Dockerfile that installs Node on Ubuntu.

## Big Data

[2015: More innovation, but still a year of transition](http://izoratti.blogspot.com/2015/02/2015-more-innovation-but-still-year-of.html)
: First things first: I could use this title for every year, it is an evergreen. In order for this title to make sense, there must be a specific context and in this case the context is Big Data. We have seen new ideas and many announcements in 2014, and in 2015 those ideas will shape up and early versions of innovative products will start flourishing.  
Like many other people, I prepared some comments and opinions to post back in early January then, soon after the season’s break, I started flying around the world and the daily routine kept me away from the blog for some time. So, as a good last blogger, it may be time for me to post my own predictions, for the joy of my usual 25 readers.

### Analytics

[Top Mistakes Developers Make When Using Python for Big Data Analytics](http://www.datasciencecentral.com/xn/detail/6448529:BlogPost:250184)
: Regarding mistake #1, I disagree. I do it all the time, and it's faster than finding, understanding, and fine-tuning a piece of code that will work for you, unless you are looking for something basic such as computing correlations for weighted observations. If you are good, your reinvented wheel will be better, implemented faster, more robust, and more customized than existing ones.

## Infrastructure

[Big Data is Driving Datacenter Infrastructure Development](http://www.plexxi.com/2015/02/plexxi-pulse-big-data-driving-datacenter-infrastructure-development/)
: You may have seen last week that we partnered with Cloudera, certifying the Plexxi Switch on Cloudera’s Enterprise 5 platform.  
This partnership, while exciting for us and our partners, plays a larger role in the IT landscape as a whole. According to an article this week by Arthur Cole of Enterprise Networking Planet, this move embodies Cole’s belief that networking infrastructure development is increasingly being driven by Big Data applications. He cites the key challenge as not finding somewhere to store all the data (e.g. storage) but rather how to make it available to “diverse and disparate sets of resources quickly and at a relatively low cost.”

## Architecture

[What's the Deal Between SOA and Microservices?](http://www.lucassaldanha.com/what-is-the-deal-between-soa-and-microservices/)
: One day I was talking with other developers in my company about some modifications that we'll need to do in our current architecture of one specific system. At some point, one of these developers stated that we can't say that our architecture is based on Microservices because we have modules that communicate with each other directly and synchronously. He said that we must call it a Service Orientated Architecture (SOA).

## Databases

[Query Digesting and String Quoting Syntax in SQL](https://vividcortex.com/blog/2015/02/16/query-digesting-and-string-quoting-syntax-in-sql/)
: One of the interesting challenges in writing a system like VividCortex is writing a query digesting algorithm that deals with all of the technology-specific features, bugs, and quirks. When we added PostgreSQL performance monitoring recently, I knew this would be a new challenge because Postgres uses ANSI standard syntax for quoted strings, but MySQL uses different syntax. After checking a bit further, I also found something I didn’t know about: PostgreSQL also supports a nonstandard quoting syntax, which is called “dollar quoting.”

### MySQL

[Shinguz: Creating Event Handlers with MySQL Enterprise Monitor](http://www.fromdual.com/creating-event-handlers-with-mysql-enterprise-monitor)
: MySQL Enterprise Monitor (MEM) has by default no Event Handlers created and activated. These Event Handlers you have to define yourself according to your needs.  
In this article we discuss how to create MySQL Enterprise Monitor Event Handlers with MEM v.3.0.18. For other (older) versions the steps may vary...

## Management

[How to Have Efficient Sprint Planning Meetings](http://www.dzone.com/articles/how-have-efficient-sprint)
: Too many of us have been burnt by this. There we are again. Getting together every other Monday, usually devoid of a clear agenda, trying to “plan” a sprint. We start OK. But before you know it, we are all over the place. We argue in a civilized manner on how this story is not clear, or that the story needs to be discussed a lot more for it to be even estimated. Confusion creeps in. Soon the engineers take over “planning” part of the meeting and morph it into a “clarification” frenzy. The Product Owner (PO) is overwhelmed as technical terms are thrown in the air and on-the-fly technical solutions are spit-balled. Sadly, sometimes legitimate good solutions get lost in translation and noise. The Scrum Master or team lead brings things under control, but there is lost time.

[What Development & Test Managers do in Agile Organizations](http://java.dzone.com/articles/what-development-test-managers)
: Is there room for functional managers, such as development and test managers, in agile organizations? Maybe. It depends on whether they take the role of an agile manager.

[How do you estimate that which you've never done?](http://java.dzone.com/articles/how-do-you-estimate-which)
: Have you heard about #noestimates? No? Well I’m sure you can guess what it is anyway. But reading the debates reminded me of a story.  
While at Game Developer’s Conference a few years ago, I was arguing about estimation with a certain project manager, who, despite having no actual development experience, was in charge of development (Icelandic society is notoriously nepotistic).

[You Need Feature Teams to Produce Features](http://www.jrothman.com/mpd/project-management/2015/02/you-need-feature-teams-to-produce-features/)
: Many organizations create teams by their architectural part: front end, back end, middleware. That may have worked back in the waterfall days. It doesn’t work well when you want to implement by feature. (For better images, see Managing the Stream of Features in an Agile Program.)
