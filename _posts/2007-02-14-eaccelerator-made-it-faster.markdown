--- 
wordpress_id: 1409
layout: post
title: eAccelerator made it faster!
date: 2007-02-14 13:44:57 -06:00
tags: technology, technology
wordpress_url: http://www.nata2.org/2007/02/14/eaccelerator-made-it-faster/
---
So my blog has been slow for the past few months. It has been killing me. I run my own server - so I knew it was something that I did. However, I sadly thought that it was probably just the fact that I have a couple rather high bandwidth sites and only one server. I tried a lot of the "speed up wordpress" tricks and even installed and used wp-cache. but nothing worked.

Today I was doing some research on how to speed up threadless and our scaling issues. I was reading articles about how to speed up large scale web applications and I decided to look other places for scaling issue help. I often think that the articles that are written are not written by people who actually have to deal with large scale web apps - so I usually don't really pay attention to what they say. So I started going to larger sites and seeing if I couldn't find any information on how they scale and maintain speed while growing. I found a nice description of how <a href="http://www.mininova.org/faq#tech">mininova speeds things up</a> and scales - its really nothing more than simple paragraph but it told me more than most whole articles. So <a href="http://www.mininova.org">mininova</a> uses <a href="http://www.lighttpd.net/">LightTPD</a> and <a href="http://eaccelerator.net/">eAccelerator</a> to keep things quick. Since I don't want to use LightTPD - I decided to check out eAccelerator.

Since I really didn't want to test eAcellerator on threadless (yea know.. money, transactions and the like), I decided to give it a test run on my own server.  I went ahead and compiled it, installed it and restarted apache. BAM. immediately my load was down:
<blockquote>10:34:01 up 46 days, 16:05, 1 user, load average: 0.87, 3.82, 7.22</blockquote>
You can see that 15 min ago - the load was almost 7. This is what it has been for the past 2 months. Constantly pegged above 5. it was making me insane. So just seeing apache running and a load of 0.67 made me grin.  It has been 2 hours now and I am still seeing great performance from eAccelerator:
<blockquote>12:40:32 up 46 days, 18:12, 1 user, load average: 0.33, 0.40, 0.37</blockquote>
It is pretty amazing. I mean - opcode caching is really a no-brainer. It is easy and makes sense. And anytime you are running a language like PHP, you will need to think about caching the compiled code rather than recompile on every request.  I don't know why I didn't do this earlier.

My only worry is that the opcode cache will not clear fast enough during edits.  I did some testing and it seemed to be pretty quick. I didn't notice any stale scripts or negative impact.  Apparently eAccelerator is <a href="http://www.ipersec.com/index.php?q=en/bench_ea_vs_apc&amp;page=0%2C3">pretty good at handling updates to its opcode cache</a>.

So far - ALL of my sites are quicker. nice work.
