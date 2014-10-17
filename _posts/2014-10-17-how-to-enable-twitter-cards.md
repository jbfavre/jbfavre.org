---
layout: post
title: "How to enable Twitter cards"
category: dev,twitter
---

	
I just enabled [Twitter cards](https://dev.twitter.com/cards/overview) support for my blog. I'll use [Summary cards](https://dev.twitter.com/cards/types/summary) so that blog post abstract will be displayed nicelly when posted on Twitter. Here's how I did to enable them (easy).

### Getting started

First, and quite obviously, you'll need a Twitter account. This is mandatory for content attribution.

Second, just go to [dev.twitter.com](https://dev.twitter.com) and log in.


You can implement "Twitter cards" just adding some extra meta tag in HEAD section of your HTML page. It's very easy.
I choose to support "Summary cards", which is quite obvious for a blog. Some meta tags are mandatory, some are not.

At least, you'll need:

* `twitter:card` with `summary` as content
* `twitter:creator` with your Twitter account name as content (`@jbfavre` in my case)
* `twitter:title` with your blog post title. (_truncated at 70 characters_)
* `twitter:description` with a summary of the blog post (_truncated at 200 characters_)

Some other meta tags are optional. You can find the list on [Summary Card documentation on dev Twitter site](https://dev.twitter.com/cards/types/summary).

### Testing

You can (and should) test your Summary cards: just use [Twitter Card validator](https://cards-dev.twitter.com/validator).

Once you're happy, you can ask Twitter to whitelist your website.

After some time, you'll receive an approval email. It was quickly done for me, maybe half an hour or so.

And you're done ! (quite easy, isn't it ?)

Of course, when you know that either title or description will be truncated if too long, you'll try to make it short enough so that they remains untouched. And basically, that always a good idea to summarize you posts.

Oh, and this post is the first one which I'll tweet about with summary card :)
