--- 
wordpress_id: 1433
layout: post
title: Rails woes. The slow that is keeping twitter down.
date: 2007-04-15 23:50:17 -05:00
tags: technology, technology
wordpress_url: http://www.nata2.org/2007/04/15/rails-woes-the-slow-that-is-keeping-twitter-down/
---
<img src="http://farm1.static.flickr.com/155/427451213_330f07f72e_m.jpg" align="right" />I have a love and hate relationship with <a href="http://www.rubyonrails.com">Ruby on Rails</a>. I love what it does. I love the activerecord, I love how it makes designers and other non-software engineers into raving MVC lunatics. I really like coding in ruby and seeing how much work can get done by so little code. All of that is really exciting. However, I hate a lot about rails as well. I do not like that it is so slow. I don't like that you use a reverse proxy and mongrel (I can't put a finger on why I don't like this - but for some reason I want to punch it). I really don't like the fan bois who won't listen to any reason when you criticize their first and probably only love. I don't like how hard it is to scale. I really don't like that the best known way to scale a rails app is by throwing more money at it. I am also still bitter about the not so smooth migration from <a href="http://manuals.rubyonrails.com/export/html/19">.95 to 1.0</a>.

In my book, I am more annoyed than happy with rails. So I stopped using it.

When I did stop using it, my servers were happier. After converting all my applications I converted to rails back to PHP - my server load dropped amazingly. I didn't even have big applications. Maybe one app that had a couple 1000 visits a day. nothing too fancy. but the little traffic it had really abused my server. annoying. One side effect of the PHP migration is that my applications responded a bit snappier - which in turn generated more pageviews. It was magical.

I do have to say that I was sad to be back in the wild west of scripting that PHP is. I missed my MVC and my activerecord. However, I wasn't about to sacrifice what rails took from me.

<a href="http://www.statsaholic.com/twitter.com"><img src="http://traffic.alexa.com/graph?u=twitter.com&amp;r=2m&amp;y=r&amp;z=1&amp;h=90&amp;w=205&amp;f=555555&amp;o=l&amp;o=f&amp;p=-1" alt="Twitter growth" align="right" border="0" /></a>With all this said, It is kind of sad that twitter is getting owned so hard because they decided to use rails as their weapon of choice. It seems that they have assembled the biggest and most successful rails app on the Internet and are sustaining quite a number of pageviews. This is awesome. But ever since SXSW, where twitter seemed to pick up some seeming unstoppable steam, their  growth has been the bane of their existence.  I can't imagine that new users are as impressed and interested in twitter when their experience is tainted by slowness and missing features. I wonder how this is affecting their continued growth?

So the other day, one of the <a href="http://al3x.net/">twitter engineers</a> had a <a href="http://www.radicalbehavior.com/5-question-interview-with-twitter-developer-alex-payne/">really great interview about twitter</a>, their growth and their future. It is very insightful and covers some interesting ground. It is always helpful to hear how other people are solving problems and it always helps the community to hear criticism and success. The interview had both of this. It explained how they had basically outgrown their ideas of growth and were dealing with scaling issues. He said that their issues were related to having too many mongrel connected to the database which was then killing things. This is not a new problem in the world of webapps. In fact, this very problem is where we at Threadless are having problems. And we are running PHP. OMG.

So obviously there is a performance hit when using rails. But there is a performance hit when using any interpreted language. And even more a performance hit when using a framework. and then it doesn't help that ruby is slower. but these things don't really mean that a site can't scale. It just means that you have to solve the problems a bit more interesting (and being interesting might very well be moving to python).

This is rails chance to show the world that they can scale a real world app. That they are not second place to some weird guitar named framework. But I don't think they will do that.

Personally, I think that the rails community blows. I think that they are not helpful and I don't think they are willing to take criticism positively. I mean look at what erupted from this great developers smart interpretation of who his beloved application had scaling problems. The community rebelled and basically said that twitter needs to do the work themselves.

This is type of reaction is exactly my experience when dealing with rails. The difference that I experienced when I dealt with rails versus when I dealt with PHP, is that PHP people are like
<blockquote>"Oh yea. this is why this happened. check out the solution."</blockquote>
or maybe they are like
<blockquote>"Oh shit. That is weird. Maybe try this. if you figure anything out let us know."</blockquote>
but regardless of what the response nobody says:
<blockquote>"Obviously you are doing it wrong. Its probably your database. fix it. "</blockquote>
However, this is exactly how the rails community has responded to twitter's issues. Nobody really constructively addressed the twitter issue. They all just waited until <a href="http://www.loudthinking.com/arc/000608.html">DHH said his word</a>. and then blindly followed. <a href="http://www.loudthinking.com/arc/000610.html#comments">They called the people who questioned trolls</a> and then jumped into line behind DHH. The twitter people even came to DHH's blog and apologized for possibly misconstruing that rails was slow. however, rails is slow.

I think some of the best points on this whole thing is the following (paraphrased from somewhere <a href="http://laughingmeme.org/2007/04/12/twitter-ruby-and-scaling/">1</a>, <a href="http://rc3.org/2007/04/twitter_develop.php">2</a>, <a href="http://benbarren.blogspot.com/2007/04/all-of-us-working-on-twitter-are-big.html">3</a>):
<blockquote>Rails is great because it trades developer performance for framework performance. Rails is good enough for almost every application. However, if you get big enough - rails will suffer. If you are writing an app that may get big, you may want to choose a different framework.</blockquote>
With that said, I am going to go play with <a href="http://webpy.org/">web.py</a>.
