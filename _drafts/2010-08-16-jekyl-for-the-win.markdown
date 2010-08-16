--- 
layout: post
title: "Migrated this blog to Jekyll on App Engine. Bye wordpress. "
date: 2010-08-16 01:24:42 -06:00
--- 
I don't like to move my blog around. It is super annoying. The RSS feed gets all messed up, I spend months tweaking everything. I find silly bugs and then fascinate about fixing them. All in all it takes months to complete the process. I avoid it like the plague. 

However, I really wanted something simpler than wordpress. I didn’t need a CMS. I barely need a blogging engine. I update so infrequently. I want something that creates well formed html (hah), static content and is easy to use. 

I started looking into hosting this blog on Google’s app engine awhile ago. I looked into [Bloog](http://bloog.billkatz.com/ "Bloog") - an awesome restful bloggin engine for app engine. It was very hopeful. i spent a bunch of time hacking on it and eventually ported my theme over. I didn’t feel it though. it worked well. it had all the features i wanted. It even used a bunch of neat app engine tricks. I gave up on using it for my blog. It just wasn’t the correct choice. 

During this time, I watched most of my hackerish friends start to use Jekyll to power their blogs (or write and then use [igor](http://github.com/aconbere/igor "igor") as [anders](http://anders.conbere.org/) did (protip: do not search for “anders jekyll” in google)). I admired the simplicity of the jekyll engine. It was so easy and fun to use. I wanted to use it for my blog - but it didn’t play as nicely with app engine as i had hoped. 

I then found Drydrop. 

DryDrop is a neat application for app engine that let’s you host static content. In my current phase of life, I really hate managing servers. It is fun and all - but if i don’t have to - i am not going to. ;) Instead, I try and use platform as a service services([heh](http://en.wikipedia.org/wiki/RAS_syndrome)) to minimize the number of servers that I touch on a daily basis (my current server number is 4 (I secretly want it to grow back to 100+)). DryDrop was a nice solution for my server hatred. It allowed me to serve simple static content on app engine. I immediately ported a bunch of my static sites over to app engine: [harpercloud.com](http://www.harpercloud.com/), [biofuelmenace.com](http://www.biofuelmenace.com/), [weownthesun.com](http://weownthesun.com) and of course [ryankanno.com](http://www.ryankanno.com). 

After a few weeks with these sites on app engine - I decided that it was probably the right place to put my precious blog. 

[Jekyll](http://github.com/mojombo/jekyll/) is an interesting beast. It is exactly as the wiki proclaims: [a simple, blog aware, static site generator](http://wiki.github.com/mojombo/jekyll/). It has no features (well. a couple), it has no built in community aspects (no commenting, trackbacks, reactions, etc). It doesn’t have any admin. it is just a static site generator that is geared for blog like sites. It works amazingly.

The first thing I did was port my theme over to Jekyll. You can check this out at my [blogs git repository](http://github.com/harperreed/harperreed-blog). It was a pain in the ass, but i was able to clean up a bunch of annoying HTML issues that i had from changing shit all the time. I still need to refactor it a bunch.

Once the theme was done, I started working on the content. This is the biggest issue. I have a bunch of content. Like 1000s of posts. Jekyll is not necessarily the quickest of generators when you have thousands of posts. Luckily I was able to do some simple tricks to ensure that the old posts work and the new posts work as well. Its honestly pretty annoying and i need to solve this better. 

A couple hints for hosting Jekyll on App Engine with DryDrop:
* check out this post by [Carl Sverre](http://www.carlsverre.com/) on tweaking the site.yaml file for drydrop to handle the pretty permalinks
* the wordpress migration script that jekyll uses is pretty nice. i [hacked mine to export tags and datetime](http://github.com/harperreed/harperreed-blog/blob/master/_import/wordpress.rb) as well.
* there are hundreds of blog posts just like this one. they all have great hints
* if you get stuck, just check out the [list of sites that are using jekyll](http://wiki.github.com/mojombo/jekyll/sites). Often they have source on github. you can glean all sorts of goodness from them. 

I look forward to possibly maybe updating this blog more often. We shall see how it goes ;)
