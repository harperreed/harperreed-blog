--- 
wordpress_id: 1505
layout: post
title: "Putting the blame on your vendors for the win. "
date: 2008-01-22 17:08:41 -06:00
tags: technology, rackspace, rails, 37signals, web20, tumblr, infrastructure, network, downtime
wordpress_url: http://www.nata2.org/?p=1505
---
In the past week there were a couple of companies(<a href="http://tumblr.com">tumblr</a> and <a href="http://37signals.com">37signals</a>) who publically blamed Rackspace for the downtime of their sites (tumblr <a href="http://blog.davidville.com/2008/01/21/downtime-today/">here</a> and 37signals <a href="http://www.37signals.com/svn/posts/800-what-happened-this-morning">here</a>, <a href="http://www.techcrunch.com/2008/01/18/37signals-down-looks-like-rackspace-is-to-blame-again/">here</a>) . In both cases the downtime wasn't widespread and was limited to the individual sites. In both cases someone from the respective site blogged about how it was rackspaces fault they were down. It got me thinking...

I don't like how these companies are blaming their vendors when their sites are down. I understand how frustrating it is. I totally realize how you want a scape goat. And i have personally had experiences where Rackspace has screwed up and i have said to Jake: "<i>WTF. Rackspace broke all of our shit</i>" (which was quickly followed up with "<i>Yeah! Rackspace fixed all of our shit</i>!" - seriously, i love those guys). But what gets me is when that scapegoating and blaming bleeds into the conversation a company has with its clients/consumers. The customers don't need to hear which vendor broke everything, they just want to hear about solutions and uptime.

It seems to me that these companies are basically saying "<i>this is the entity who is at fault. It isn't us. In fact - we are so smart that we don't need them. we are changing hosting.</i>" But they should be saying “<i>We were down. bummer. we are up now.</i>” The snideness is quite annoying to me.

What do yall think - should companies be blaming their vendors - or just take the blame on themselves? I think its hard. I know i have blamed people for faults that really lie with myself. It is certainly easier to write off a simple failure that happens to occur on the vendors property as not my fault. But in the end, didn't i pick the vendor? Didn't i make the decisions that put my company in a place where the vendor could fail?

What i would like to see, is companies taking the blame and just rocking through the casual failures. Making sure their clients know that even though there was a failure, that they are on it. That they have their hands in every single part of their infrastructure. One side effect of this blaming is that you ruin the black box effect your customers have with your software. You suddenly have many more complicated pieces of the puzzle and your customers may be leery to trust their data in such a hodgepodge of systems/vendors/etc.  Of course i am hypothesizing here, but i do know that the first time i thought about how tumblr did their infrastructure was not when it went down, but when they blamed rackspace. Before they mentioned that, i just wanted them to be back up.

I am interested to hear what others think of this trend. I am guessing that people will learn that blaming is annoying. I hope that i don't ever do it. I will surely think about this next time i am faced with downtime and have a choice in what to tell my customers.

<b>UPDATE: </b>After talking to <a href="http://gburt.blogspot.com/">Gabriel</a> last night about this issue - he reminded me of the <a href="http://joelonsoftware.com/items/2008/01/22.html">Joel on software post</a> that influenced me to write this post. His post outlines how I feel a software service company should treat outages and how they should handle them. Specifically how following the five whys philosophy usually ferrets out the root of the issue.
