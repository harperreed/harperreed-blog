--- 
wordpress_id: 1518
layout: post
title: Location hacking. Or how I am addicted to knowing where I am
date: 2008-05-28 00:51:39 -05:00
tags: technology, hacking, fun, twitter, location, fireaeagle, dopplr, tripit
wordpress_url: http://www.nata2.org/?p=1518
---
<img class="alignright" style="float: right;" src="http://maps.google.com/staticmap?markers=41.6424713135,-87.9443130493,blue&amp;center=41.6424713135,-87.9443130493&amp;zoom=6&amp;size=200x200&amp;key=ABQIAAAAIFubrKPMu40p2O60-CINYhQC7HvwkBQIUfVW0Yi6qdDdLqLJJhT3qtFTsqKFKqtNsK7OiUle268hSw" alt="" />The last few weeks have been a whirl wind of travel, emergencies and fun events. All of it has made my life a mess in regards to plans, knowing whats up and keeping track of where i am supposed to go and when. Out of necessity, I decided it might be fun to track where I have been and where I am going. To handle this I use various sites like <a href="http://dopplr.com/">Dopplr</a>, <a href="http://tripit.com/">TripIt</a> and <a href="http://fireeagle.com/">fireeagle</a> to keep track of my travels. Dopplr is my favorite, however I use TripIt to overall manage my travels and then push it into Dopplr and fireeagle - so my friends can be alerted as to where I am.

After melding all these things together - i decided it would be neat to have the info on my homepage. So, i created this "mashup" to keep track of everything. It was my first foray into being a consumer of oauth (myself, programatically) and i really like it. I am for sure going to use this for the threadless API when it launches (thanks friends!). Dopplr's API is a pain in the ass (there is about 1 page of API documentation), but i finally figured it out.

With all of the sites melded together - i was able to get my current location (fireeagle),  and my future and past travels (dopplr). The info for both of these sites is provided in part by dopplr and tripit. Tripit feeding dopplr which feeds fireeagle. I feed tripit with emails. It has been hungry lately.

Seeing all this info together on my home page made me think of <a href="http://labs.harahap.org/stalkilya.php">my friends page</a> where he tracks exactly where he is at all times. its kinda freaky and pretty invasive. But i wanted to know if i could build it. And i figured that building the gps "puck" as Ilya calls it would be a good experience.

Since i have an iphone instead of a phone with true GPS, I used an <a href="http://ericasadun.com/?p=188">app made by Erica Sadun</a> (an awesome apple hacker) that queries the wifi APs and cell towers that the iphone uses to handle its pseudo GPS. With this app I am able to grab my location and post it to a script i made to track everything. From the script I am able to handle posting to fireeagle or twitter or whatever. A lot of the <a title="this is an awesome writeup btw" href="http://soylentfoo.jnewland.com/">writeups</a> of this sort of thing have the iphone handle the posting to fireeagle or twitter, however that doesn't really make sense to me - since having less http calls on the actual device seems to be a better plan for battery dominance.

You can check out my current-ish location <a href="http://harperreed.org/where/now">here</a>.
