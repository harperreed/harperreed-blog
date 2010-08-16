--- 
wordpress_id: 1217
layout: post
title: "Geopoli.com. I kinda need some help maybe. "
date: 2006-02-22 02:09:11 -06:00
tags: general, technology, harper, hacking, websites, politics, geoip, geotag, congress, webapps
wordpress_url: http://www.nata2.org/2006/02/22/geopolicom-i-kinda-need-some-help-maybe/
---
I need some new sites. Speaking of which - I am making a new site: geopoli.com. It is a geotargeted political banner ad and text ad delivery site. I want to make it so you can include a dynamic image or JS code snippet on your blog or myspace profile and it will display to your users a text ad or banner ad saying "YOU LIVE IN CHICAGO. SEND OBAMA an EMAIL."

The idea is that when the user clicked on the ad it would take the user to a place that would allow the user to contact their representative. i want it to be unpartisan and sorta non-issue based - so that people are not specifically using it to badger users.

I feel that this coming spring, summer and fall -being politically active will be very important. After listening to <a href="http://www.thisishell.net">this is hell</a> for a couple weeks and reading a bunch - i have decided that the US is on the brink of destroying the world. if we attack iran, the world as we know it will be over. and i feel that the only we can get our representatives to pay attention is to bitch at them a bit. and i think places like myspace are a great place to gather some momentum. and the first part of momentum is showing people who they are representated by.

So i have written a basic test to tell you where you are from. i am using the <a href="http://www.hostip.info">hostip.info</a> database, it is nice but sadly inadequate.  It works pretty well - but it doeasn't quite cover everything. But i have written a really nice (if i may say so myself) class to interact with whichever geo-ip system i choose. the only problem i have now is that i am unable to grab the zip-code from the ip with good precision. that isn't such a problem - i am able to get a pretty high level idea - but it would be nice to be able to hit closer to the user. To solve this i am correlating the lat/long from the geo-ip lookup with the <a href="http://zips.sourceforge.net/">freeware zips database</a>. its rough and slow but it works pretty well.

The second problem i am facing is that i need a place to driect the users who see the ads.  where should i redirect them. i was thinking to congress.org - but it seems kinda sketchy. not bad sketchy - but i don't trust something i don't understand completely. And they have weird terms of service which i am sure i would inadvertently break.

So that is what i am thinking of. what i am doing. and how i am doing it. I want it to be no more complicated than making a flickr badge - and no less functional. It needs to be able to interact and intrigue the user.

i think its a cool idea.
