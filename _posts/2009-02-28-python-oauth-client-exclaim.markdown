--- 
wordpress_id: 1606
layout: post
title: Python Oauth Client - Excla.im
date: 2009-02-28 17:04:04 -06:00
tags: technology, twitter, python, oauth, appengine
wordpress_url: http://www.nata2.org/?p=1606
---
I built <a href="http://excla.im">Excla.im</a> quite awhile ago, well before <a href="http://twitter.com/harper">Twitter</a> unleased their oauth beta program. Regardless, <a href="http://factoryjoe.com/blog/">Chris Messina</a> <a href="http://flickr.com/photos/factoryjoe/2841257703/">tagged the Excla.im sign up process as an anty pattern</a> within his flickr stream. I was bummed because i would have loved to use Oauth to authenticate Excla.im. But because of the tagging, i was constantly thinking about how to remove the anti pattern.

Finally, Twitter released the <a href="http://groups.google.com/group/twitter-development-talk/browse_thread/thread/42486bd3d7d136d0/f0e89b742bf0033e?pli=1">Oauth Beta</a> and I was able to bribe @<a href="http://al3x.net/">Al3x</a> to give me access (which reminds me, i need to send my <a href="http://flickr.com/photos/natatwo/3149040948/">bribe</a>). I then sat for a month looking at the various python examples for OAuth and basically said "What The Fuck" over and over again. There were no solid examples and my experience with OAuth in PHP was a total hack so i could post shit to fireeagle. I was SOL as to finding a guide.

Then <a href="http://abrah.am">abrah.am</a> released his <a href="http://github.com/poseurtech/twitteroauth/tree/master)">PHP twitter OAuth lib</a>. It worked really well and was pretty much just plug and play to use it in a PHP app. Nice. I wanted that but in python. I decided to spend a minute or two and create it.

The base library my client is using is the the <a href="http://code.google.com/p/gdata-python-client/source/browse/trunk/src/gdata/#gdata/oauth">OAuth lib</a> from <span style="text-decoration: none; color: #000000;">google <a href="http://code.google.com/p/gdata-python-client/">gdata-python-client</a></span><a href="http://code.google.com/p/gdata-python-client/"> project</a>. I figure it is a working client and is in production use - so it should be solid. There are very few <a href="http://code.google.com/p/gdata-python-client/source/browse/trunk/src/gdata/oauth/CHANGES.txt">changes</a> between it and the official client that is released through <a href="http://oauth.googlecode.com/svn/code/python/oauth/">oauth.net</a>.

The client is rather simple, in fact it should work with other api providers with very little work. You can check it out at <a href="http://github.com/harperreed/twitteroauth-python/">github</a>. Please let me know feedback. i am a python n00b - so give me your best shot/code review. I am using Google Code as a <a href="http://code.google.com/p/twitteroauth-python/issues/list">issue tracker</a>, so feel free to <a href="http://code.google.com/p/twitteroauth-python/issues/entry">post some bugs</a>.

It is rather pluggable. I was able to launch excla.im (on app engine) with oauth support in no time. I am currently not holding passwords for anyone. It is an awesome feeling.
