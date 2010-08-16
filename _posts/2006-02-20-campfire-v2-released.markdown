--- 
wordpress_id: 1214
layout: post
title: Campfire bot framework v.2 released
date: 2006-02-20 23:58:42 -06:00
tags: general, technology, perl, hacks, 37signals, campfire, bot, chat, campfirenow, flood, exploit
wordpress_url: http://www.nata2.org/2006/02/20/campfire-v2-released/
---
Oh yea. I forgot to mention that i released a new version of my campfirenow.com bot framework. It is quite a bit better and a lot more robust - however i imagine that 37signals has changed things to stop it.

Check out the source: <a href="http://nata2.info/?path=code%2Fcampfire_bot_hack">here</a>

I also released a proof of concept flood. its real annoying and stupid.  don't use it. i just wanted to see if i could make it.

Flood source: <a href="http://nata2.info/?path=code%2Fcampfire_bot_hack&text=campfire_flood.pl">here</a>

A couple things:

I really think that campfire should have some sort of authentication scheme to make sure that the message originator is the right user. It wouldn't stop bots and what not, but it would stop the tinyurl hack that is always hilarious. I think that have super AJAXy sites and insuring simple app security is often more difficult - but in my opinion, more important because the feel of the application is more similar to the desktop applications and so the user may be caught off guard if a security breach rares its head. But as Jason Fried said: <a href="http://37signals.com/svn/archives2/it_just_doesnt_matter.php">it just doesn't matter</a>.

I wonder if gtalk could be similarly exploited.  I doubt it since it is based on the jabber client and xmpp. I wonder why 37s didn't use xmpp or something.

awesome
