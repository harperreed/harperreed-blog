--- 
wordpress_id: 1509
layout: post
title: "The Mosso Cloud: Requests are not a good metric"
date: 2008-02-29 13:15:59 -06:00
tags: technology, hosting, mosso, web-20, cloud, grid
wordpress_url: http://www.nata2.org/?p=1509
---
<i><b>UPDATE: </b>Not a moment after i posted this - i got a mosso mailing that explained an upgrade in the plan. I will leave the original number in because i still think my point is valid and because that is what new Mosso customers will be getting. Their update is just a quick fix to stop us from bitching. It isn't solving the problem.</i>

I have <a href="http://www.nata2.org/2007/06/05/hosting-woes-collocation-and-how-mosso-sucks">blogged about Mosso before</a>. I have used them practically from their inception (well before they were cool. hah). I have been happy and I have been totally pissed. but for the most part they have done an amazing job of doing shared hosting in the most unsucky way possible. The features and capabilities they offer are hard to beat. They have some quirks and growing pains - but what shared host doesn't. But Mosso is quite different than most shared hosts.

What is really neat about Mosso is that Mosso is just a giant cluster. So your sites are load balanced across many many servers. Its how I imagined cloud or "grid" hosting should be. And it works. and it works well.  You don't have to worry about your small site being sucked of its life by a larger site that sits on the same server. every site is spread over multiple servers - so your site
gets the same priority as a HUGE site.

Its awesome. and super cheap.

I am hosting around 150 sites for 100 bucks a month. With crazy white label options and more features than almost any host. I use it primarily for hosting all my shitty domains and for hosting my friends blogs and sites. I don't host large sites on there, but I do have probably more on Mosso than I should in one account. I never hit any of the resource limits and I was never told to host less. In fact - there are no limits to what you can host as long as you stay within the resource limits.

Obviously, I am not alone in this use case. I imagine that many clients are abusing their cluster the same way I am, with no practical repercussion and no way to limit them without drastically changing their plan.

I am guessing Mosso was looking at their usage and looking at us horrible clients - and figured that they were getting owned. So they decided to set up a new resource metric.

How they picked requests, I will never know. But they decided to bill based on requests. So each person gets 3MM requests a month. This is some 1995 shit. I mean - requests is just an annoying "web 2.0 cloud computing market speak" for hits. Everyone knows what a hit is. everyone knows that you can have a shitty site and have a lot of hits. Nobody uses hits as a metric. Except Mosso ;)

With Mosso's new pricing, you get charged for each "hit" to a site that is hosted at Mosso. If you go over your 3MM allotment, you get charged at $0.03 for each 1000 "hits" to your site. seriously. three cents for every 1000 hits.

That means - if you have a horrible blog that has 50 images on every page load. And you get around 2500 views a day (which is a lot - but not unrealistic). You will use up all your "hits" for that month. But if I don't have all those images, my 2500 view a day blog will not use all the "hits" up. Keep in mind as well that Mosso is a place where you are able to host an unlimited number of sites. So what happens if you have 50 clients, and each client is using around .5MM "hits" a month. You end up paying about ~$750 in overage for your cheap shared hosting. per month. Suddenly Mosso is more expensive than a NICE dedicated box from Server Beach.

I imagine that the 5MM "hits" is just a rough number they thought up. I am guessing they are going to change that number. Offer a couple price plans and generally try and make things better.

My concern is not in them attempting to make things better, more equal or for them to change the pricing into a more ala cart type of offering. My concern is in the requests metric. It doesn't make sense. There are lot better ways to measure server usage than something that is arbitrary and negatively impacts the people who are building these sites. People who use a premade CMS like drupal or wordpress may incur more charges than people who are using simpler, css based custom sites. People who have sites that are heavy in graphics (graphic designers, ad people, agency people) will all be effected - because they are more worried about how the site looks and how it is presented - not how many "hits" each page view will take.

The whole philosophy of Mosso seems to be for them to take the much needed place of being a simple shared host targeting designers and other internet people who donÂ’t want to worry about their hosting and don't want to pay for a dedicated box. Someone who wants to give their client SOLID hosting, but doesn't want to hire a sysadmin. It seems to me that those people are not going to want to start worrying about how many "hits" each page view gets, nor are they going to want educate their clients that the more successful their site gets - the more they have to pay.

I think that the "pay for what you use" model is the future. It doesn't make sense for me, with sites that are using 90% of a servers resources to pay the same as someone who is using 10% of a servers resources. However, it should be something that is quantifiable and based on actual server usage. Not something that is relative to how your site is laid out and created.
