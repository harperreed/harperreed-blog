--- 
layout: post
title: "OMG FREE HOSTING: How to use GAE to host static sites for free"
date: 2011-01-26
--- 

I am constantly telling my friends about the new technology tricks that I learn in my internet travels. I learn a lot, which has caused my friends to ignore around 90% of what I say about technology. I don't mind, because I know that I am a genius(heh) and they will come around some day.

This is exactly what happened with my most recent hacked upon hosting setup. I told my buddy [kanno](http://twitter.com/ryankanno), and he didn't pay attention. Then he started diving in a bit on his own. Once he experienced a taste of the magic, I helped him to the rest of the koolaid and he was hooked. The result was him begging me to do this post to help people understand how awesome this setup is. 

## The problem

I hate hosting. I hate (really love - but love to hate) servers. I **reallllllllllllllllllly** like not having to deal with scaling, servers, server software and all that magic. 

Besides servers and dealing with the tech side of hosting, I really hate paying for hosting. I especially hate paying to host sites that will get no traffic and will not change. 

Here are some examples of the sites I am talking about: 

* [fastmilo.com](http://www.fastmilo.com) - this site gets 21 visits a year. 
* [chicagocanoeclub.com](http://www.chicagocanoeclub.com) - this site gets 13 visits a year. 
* [weownthesun.com](http://www.weownthesun.com/) - this site gets 8 visits a year
* [harpercloud.com](http://www.harpercloud.com/) - this site gets 5 visits a year
* [nutpunt.com](http://www.nutpunt.com/) - this site gets 3 visits a year. 
* [stevereed.org](http://www.stevereed.org/) - this site gets 2 visits a year. 
* [noahleaks.com](http://www.noahleaks.com/) - this site gets 1 visits a year. 
* [biofuelmenace.com](http://www.biofuelmenace.com/) - this site gets 1 visits a year. 

Basically simple one or multiple page joke/history/ego sites. Easy to make, no maintenance and no dynamic content. 

There were all hosted at Rackspace Cloud Sites for the longest time. I got tired of paying $100 bucks just to host stupid stuff. I thought about moving them all to one tiny linode/slice/ec2/rackspace cloud box - but that would have been more than $100/month of maintenance. It also wouldn't have solved the problem for me. I would still be paying to host these sites. 

Just as I was about to give up and delete myself from the internet completely - in walks [App Engine](http://code.google.com/appengine/) with its fancy pants friend, [DryDrop](http://drydrop.binaryage.com). 

## DryDrop is an easy way to host static content on App Engine

[DryDrop](http://drydrop.binaryage.com) is at its most basic form a bucket that holds the various pieces of a static site, and serves the pieces when they are requested. It is git backed for easy content management. It is mostly for nerds. 

From the [DryDrop site](http://drydrop.binaryage.com):

>DryDrop is a tool that lets you host your static site on Google App Engine and update it by pushing to GitHub. Thanks to GitHub post-receive hooks your App Engine site can be updated automatically when you push new content."

From [@dansinker](http://twitter.com/dansinker):

>it's a tool that you install on AppEngine that lets you publish web pages on Google's servers using nothing but github.
>So like, I update the [Scorecard](http://www.chicagomayoralscorecard.com/) simply by typing "git push" and suddenly, WHOOOOSH, the scorecard is updated.
>I seriously love it more than is probably healthy.

As their site points out, this means that you can host your static content with zero cost, zero maintenance and very little real tech knowledge (just [git](http://en.wikipedia.org/wiki/Git_(software)), a bit of [rake](http://en.wikipedia.org/wiki/Rake_(software)) and some gigantic internet nuts).

The DryDrop workflow [is as follows](http://drydrop.binaryage.com/#installation): 

* Checkout the DryDrop repository from github
* Deploy your drydrop app to app engine (*rake upload project=drydropsample*)
* Create a git repository on github 
* Place static content in the github repository
* Link the two (*add the github repo raw url in the drydrop admin settings*)
* Visit app engine app url (*this pulls the static content from github and caches it*)
* **BAM** you have a site hosted on google's infrastructure.

Super easy and convenient. The best part is that this is free if your static site doesn't use more resources than the free tier of app engine allows.

I used this and my mind was blown. However, there were a couple of things missing. 

## Hosting multiple domains on one instance 

After I played with drydrop extensively and launched a few sites, I noticed a hole in the drydrop armor. For every site you launched, you had to deploy a version of the drydrop container to app engine. Although they were all free, most people only have 10 application slots, and it was a pain to manage. I needed a way to host multiple sites on one instance. 

I thought about this for about 2 seconds before I remembered solving this problem with some other python apps hosted on App Engine. I needed to key the datastore off of the domain (now-a-days you could use the [multitenacy stuff](http://code.google.com/appengine/docs/python/multitenancy/) and just set the app namespace to change for each served domain (this might be a good idea to migrate drydrop too - i will do that later)). 

I made the change on my fork and deployed it to GAE. Then did a bunch of tests to make sure it worked properly. It did and the code was pulled into the main drydrop repo. Excitement. 

Now you can deploy one drydrop app and host many many domains off a single app instance. I currently host about 15 domains off of one drydrop instance. 

## Free Hosting, FTW

Let's review what we have:

Free hosting for multiple domains consisting of static content on a google scale infrastructure. For free. 

This is awesome. and once you have it set up, there are only two steps to getting another site hosted (1. register domain, 2. point to drydrop instance). I launch stupid sites constantly now. It is an addiction. I need help. 

## Pro-Tips

I have used this setup for about 6 months. It works super well. I noticed that things loaded super fast all over the world, which is pretty awesome. 

I have done 3 things to make things faster: use a CDN, use the high performance replication scheme, and use always on instances to decrease startup time. 

I will attempt to cover each of these quickly. 

### Use a CDN

I use [Amazon Cloudfront](https://aws.amazon.com/cloudfront/) with a [custom origin](http://aws.typepad.com/aws/2010/11/amazon-cloudfront-support-for-custom-origins.html). This is simply a way to take advantage of using a cdn without having to uplaod my data and assets to s3 first. I have [two scripts that I use to manage this process](https://gist.github.com/780318). The [first sets up the origin server](https://gist.github.com/780318#file_create_custom_origin.py) with cloudfront, the [second clears my cached items](https://gist.github.com/780318#file_invalidate_cf_cdn.py) when I need to deploy a change.

How this works is simple. I cname [media.nata2.org](http://media.nata2.org/images/AStrangeYouCanBelieveIn.png) to cloudfront. Then every request to that domain goes to cloudfront. Cloudfront checks if the asset exists on itself, if it doesn't it goes and fetches it from the pre set origin server (in this case www.nata2.org) and then serves it. All subsequent requests are served directly off of the CDN. No more scripts to upload shit. 

I think this is the only civilized way to use a CDN. I hope that Akamai/Rackspace rolls this out in the future. I prefer Akamai's network to Amazons.

### Use the High Performance Replication Datastore on App Engine

Very recently Google released a neat addition to the App Engine world: [High Replication Datastore](http://code.google.com/appengine/docs/python/datastore/hr/overview.html). From the google app engine post:

>The High Replication Datastore provides the highest level of availability for your reads and writes, at the cost of increased latency for writes and changes in consistency guarantees in the API.
>The High Replication Datastore increases the number of data centers that maintain replicas of your data by using the Paxos algorithm to synchronize that data across datacenters in real time. 

**BOO YEA!**

This makes your simple static no write app engine app bullet proof (it seems). If there is a data store outage - this should keep your app up and running. 

The downside is that it is about twice as expensive to host. There is a chance that it will still be free for a static site. 

I have played with this less, but have deployed it to my blog and we shall see soon if it works well or costs me an arm and a leg. 

### Set the app to be "Always On" 

Another recent feature added to App Engine is the ability to keep an [instance of your app "on"](http://code.google.com/appengine/docs/adminconsole/instances.html#Always_On). This should decrease startup times for stale apps. 

Sometimes, when I visit one of these sites that don't get a lot of traffic there is a small pause while the app starts up. With an Always On instance, this should stop happening. App Engine keeps an instance of your application warm and ready to server for a measly $0.30 per day ($9.00 per month). A pretty sweet deal if your site suddenly not performing worries you. 

I have only played around with this - and haven't deployed it to my blog or in production sites. I also don't notice a huge problem with sites not serving quickly enough. 


## Awesome


The last two tips are app wide - which means that they will work for all sites that are deployed on that instance of DryDrop. You will be able to split the costs associated with the high performance replication and the ALways On instances across the number of domains you are hosting. 

This makes me LOVE hosting again. 


