--- 
wordpress_id: 1424
layout: post
title: Memcached on skinnyCorp
date: 2007-03-23 15:24:07 -05:00
tags: technology, technology, php, threadless, skinnycorp, memcached
wordpress_url: http://www.nata2.org/2007/03/23/memcached-on-skinnycorp/
---
<a href="http://www.flickr.com/photos/natatwo/430540094/" title="Photo Sharing"><img src="http://farm1.static.flickr.com/157/430540094_11dc4ca8c8_m.jpg" alt="Memcache versus Diskcache" align="right" height="240" width="168" /></a>In the last year or so Threadless has grown insanely. When I started in 2005, we had around 2 servers and a bundle of downtime. Now, just a year and a half later we have an assload of servers and haven't had any load based downtime in almost 6 months. Its awesome. We have really been striving to keep our server infrastructure two steps ahead of our traffic. It really makes a difference when we get slammed and our servers don't even grown. I love it.

So part of my daily routine of making sure we continue on this path is to constantly keep on the lookout for cool tech that will make our shit FAST. The newest one is <a href="http://www.danga.com/memcached/">memcached</a>. a opensource product made by the <a href="http://www.danga.com/">danga interactive</a>. Danga is the company that started livejournal and created a bunch of neat tools for making scalable websites.

I am using it with PHP and our caching class. It is pretty easy to use. We set up a memcached box with a bundle of ram, ran a couple memcached servers on it and then hook into it with the <a href="http://pecl.php.net/package/memcache">PHP pecl extension for memcached</a>. The speed of the cache is madness. We tested it with a bunch of queries and were really impressed with the increase in speed. its nuts.

I have released a screen capture of our test here: <a href="http://flickr.com/photo_zoom.gne?id=430540094">http://flickr.com/photo_zoom.gne?id=430540094</a>. The test results are thus:
<blockquote>Cached read from shared nfs disk: 0.0032 seconds
Cached read from local disk: 0.0018 seconds
Cached read from memcached: 0.00042 seconds</blockquote>
As you can see, memcached is a bit faster. ;)

The test was simply executing a largish query and caching it, then reading the results from the cache, then clearing the cached results.

We are using a modified object cache I made a minute ago. It is based off my <a href="http://code.google.com/p/nata2/wiki/ObjectbaseClass">ObjectBase class</a> but made to emulate memcached. So it will work with or without a memcached server, which allows us to roll out the infrastructure and then just turn on the memcached servers for better performance. You can check out the <a href="http://nata2.googlecode.com/svn/branches/objectbase_class/class.objectbase.php">source here</a>. I will be releasing it once its a bit more solid.

I can't wait until we integrate it with all of our sites. I will be so happy and our sites will be rather snappy!
<p class="wlWriterSmartContent" id="0767317B-992E-4b12-91E0-4F059A8CECA8:4c5a770a-1cda-46bb-9b04-ba2e669bdc2e" contenteditable="false" style="margin: 0px; padding: 0px; display: inline">[tags]memcached, skinnycorp, threadless, php[/tags]</p>
