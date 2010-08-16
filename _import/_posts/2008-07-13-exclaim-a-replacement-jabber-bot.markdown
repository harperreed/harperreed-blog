--- 
wordpress_id: 1543
layout: post
title: Excla.im - a replacement jabber bot
date: 2008-07-13 23:51:24 -05:00
tags: general, jabber, twitter, python, bot, xmpp, django, google-app-engine, sleekxmpp
wordpress_url: http://www.nata2.org/?p=1543
---
I use twitter quite a bit. I like to post to twitter in the most unobtrusive way possible. I don't like to interupt my workflow to post a quick thought or update. When they used to have their Jabber bot running - it was easy for me to just type in my update and get on with my gmail session or work. I didn't have to load a page that was often down, or use some other tool. I was bummed when the jabber bot went away. I needed it back to keep up with my use case.

I got tired of waiting, so i made <a href="http://excla.im">Excla.im</a>. It is a simple <a href="http://appengine.google.com/">App Engine</a> hosted application that allows a person to very simply update their twitter status from any jabber account. It is not very feature full, doesn't update all the other sites and doesn't do much else besides just interact with the twitter API. It is very simple.

The technology behind it is just as simple. The GAE app is written in python and uses the <a href="http://google-app-engine-django.googlecode.com/">django helper</a>. It is super simple and is basically a storage container for account info. It was a breeze to develop and fun to work with.

The Jabber bot was a bit more complicated. I ended up using the <a href="http://code.google.com/p/sleekxmpp/">sleekxmpp library</a> to do all the XMPP heavy lifting. It is an awesome library. Makes all the hard stuff easy. I then used <a href="http://hathawaymix.org/">Shane Hathaway's</a> <a href="http://hathawaymix.org/Software/Sketches/daemon.py">daemon.py</a> to help daemonize the bot (btw thanks to <a href="http://anders.conbere.org/">Anders</a> for talking me through the dirtiness of daemonizing). To hook into twitter I used the <a href="http://code.google.com/p/python-twitter/">python twitter</a> library. It is featureful and super easy to use. It also supports in newer versions (post <a href="http://code.google.com/p/python-twitter/source/browse/trunk/twitter.py?r=112">r112</a>) setting the source.

I was then able to wrap this all up in a fancy little bot that on receiving a message, grabs encrypted credentials from the GAE app, sends the message to twitter's api and then chills out. Pretty sweet. Currently all the heavy lifting is on the bot side, instead of on the webapp side - but i may change that.

At some point, I would like to be able to grab a users twitter friends updates and push them to their jabber ids. However - I have yet to figure out a nice and clean way to get the updates without having them seem batched. I have some ideas and a couple things fleshed out - but i don't want to totally replicate twitter just to get my friends updates.

I am toying with putting the bot up on google code since it is pretty simple and could easily be hooked into almost any webapp. I think that the idea of a simple (simpler than sleekbot) webapp integrated jabber bot would have been helpful in writing this - and i imagine that people looking to do a similar thing may have use for my hacked together code.

A couple take aways from doing this project. First off - python is fun. Second - working with a designer makes things look a LOT better. <a href="http://www.aaronsalmon.com/">Aaron Salmon</a> took some time to make excla.im look MUCH better than it did. Check out his stuff and hire him.
