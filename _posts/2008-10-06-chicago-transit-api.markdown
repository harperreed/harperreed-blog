--- 
wordpress_id: 1569
layout: post
title: Chicago Transit API
date: 2008-10-06 01:20:02 -05:00
tags: general, chicago, hacking, bus, api, transit
wordpress_url: http://www.nata2.org/?p=1569
---
<a title="The goddamn damon bus. seriously by nata2, on Flickr" href="http://www.flickr.com/photos/natatwo/264290817/"><img class="alignright" src="http://farm1.static.flickr.com/87/264290817_f5ccf294d0_m.jpg" alt="The goddamn damon bus. seriously" width="240" height="180" align="right" /></a>I have been working hard to release the work that I have been doing to expose some of the more interesting real time data about chicago transit. Currently it is very bus-centric, but that is hopefully changing.

The genesis for this API is some work I did awhile ago reverse engineering the <a href="http://ctabustracker.com/bustime/map/displaymap.jsp">CTA Bus Tracker mashup</a>. I was able to expose the endpoints that powered their google maps mashup. In its original state - you can get some pretty awesome functionality and data. I am attempting to clean it up and make it more robust.

The native endpoints thus far are:
<ul>
	<li><a href="http://chicago.transitapi.com/bustime/map/getRoutePoints.jsp?route=49">getRoutePoints</a>: Returns latitude/longitude, stop IDs, and stop names for bus stops along a particular route.</li>
	<li><a href="http://chicago.transitapi.com/bustime/map/getPatternPoints.jsp?route=20&amp;pattern=959">getPatternPoints</a>:</li>
	<li><a href="http://chicago.transitapi.com/bustime/map/getStopPredictions.jsp?stop=8207&amp;route=49">getStopPredictions</a>: Gets stop predictions. Timing and whatnot.</li>
	<li><a href="http://chicago.transitapi.com/bustime/map/getBusPredictions.jsp?bus=6654">getBusPredictions</a>: Returns arrival predictions for a particular bus.</li>
	<li><a href="http://chicago.transitapi.com/bustime/map/getBusesForRoute.jsp?route=49">getBusesForRoute</a>: Gets buses for specific route</li>
	<li><a href="http://chicago.transitapi.com/bustime/map/getBusesForRouteAll.jsp">getBusesForRouteAll</a>: Gets information about every bus in the system.</li>
	<li><a href="http://chicago.transitapi.com/bustime/map/schedules.jsp?agency=1&amp;route=92">Schedule</a>: Download the Schedule (pdf! w00t)</li>
	<li><a href="http://chicago.transitapi.com/bustime/map/getTimeAndTemp.jsp">getTimeAndTemp</a>: Outputs the current time and temp</li>
</ul>
I have created a proxy for the endpoints that will do some caching and hopefully alleviate any crazy load the CTA servers would have if this API becomes popular.

I also did some work to push the UPOC alerts from the CTA riders community into a usable form. That endpoint is the first of hopefully many that can be used to grab real time information about the CTA. You can access it at:
<ul>
	<li><a href="http://chicago.transitapi.com/api/alerts/upoc/latest/">Community Upoc alerts</a>: Outputs the last alert sent from the UPOC group</li>
</ul>
Dan X O'Neil and myself hacked these alerts into the <a href="http://twitter.com/ctatweet">CTA Tweet bot</a> that sends CTA updates via twitter. Pretty neat.

Moving forward with the API, I want to do a couple key things. The first is to return JSON instead of that terrible XML. The second is to create a couple endpoints that will help with finding the right bus at the right location. I am always looking for help with this stuff - so if you have any ideas - please let me know in the comments.

So far, there are not a whole lot of applications using this API. The only ones I have thus far are:
<ul>
	<li><a href="http://commuting.in/chicago/about">Commuting.in Chicago</a></li>
	<li><a href="http://txtful.com/template.html?templateId=1368034">txtful bus alerts</a></li>
	<li><a href="http://businfo.chicagobus.org/">ChicagoBus.org Bus Finder</a></li>
</ul>
If you know of any others - let me know. I have a couple projects brewing myself that will hopefully add a shortcode, and a jabber bot for bus notifications and queries. Are there any things yall would like to see? I personally want a really solid native iphone app. It would be awesome to be able to have the iphone pinpoint your location and then tell you what the nearest buses are that are arriving soon. Also - replicating the bus tracker in an easier to use fashion would be excellent.

All of this API work wouldn't have been possible without the help of <a href="http://detour1999.com">Dylan Richard</a>, <a href="http://www.derivativeworks.com/">Dan X O'Neil</a> and <a href="http://chicagobus.org">Kevin Zolkiewicz</a>. The CTA has also been amazingly cool with all of this - I really like those guys.
