--- 
wordpress_id: 1223
layout: post
title: Investigating the nabaztag
date: 2006-02-27 20:45:43 -06:00
tags: general, technology, hacking, diy, make, ambient, embedded, nabaztag, takeapart, wifi, led
wordpress_url: http://www.nata2.org/2006/02/27/investigating-the-nabaztag/
---
I got my gumstix today and was lauding the fanciness of the smallest comptuer i have EVER seen, explaining to my coworker Dan how i was going to build an <a href="http://www.ambientdevices.com/">ambient orb</a>/<a href="http://nabaztag.com/">nabaztag </a>like device that will integrate with my <a href="http://www.nokia.com/n70">bluetooth phone</a> and my <a href="http://asteriskathome.sourceforge.net/">pbx</a>. he was impressed of course ;) - and told me that our coworker jake already had a <a href="http://nabaztag.com/">nabaztag</a>. I was like "WOAH." Those little punks are hard to get here in the states. So i talked to jake and he brought it in for lunch.

<a href="http://www.flickr.com/photos/natatwo/105460276/in/photostream"><img align="right" src="http://static.flickr.com/44/105460276_f112fd265d_m.jpg" /></a>

When we got it - it wasn't booting correctly, saying there was a problem by flashing yellow. hah. It coudln't find its home WIFI net and obviously couldn't access <a href="http://www.skinnycorp.com">skinnyCorps</a>. So i looked at all the documentation and found that it is REALLY easy to fix.  All you do is unplug it, hold the top button down, plug it in and then access the nabaztag wifi network. Then load up your browser and access the webpage for easy nabaztag configuration - including a nice "scan networks" feature. Personally  I feel that this is one of the coolest features of almost any wifi gadget out there. Could you imagine if the Airport express was as easy to setup, or those bastard wifi cameras? I mean really. How mcuh time could i have saved instead of unhooking the camera and plugging it into ethernet. So much time.

Anyway. So while we were trying to get it to work, jake let me know that it had been thrown and may have been broken. How sad. So i immediately offered to take it apart and fix er up.  So I did

<!--more-->

First i took off the top. It was a pain in the ass. They used these crazy triangle screws. They were not easy. Once that was off i was able to peer into the nabaztag  and see the innerworkings.
<a href="http://www.flickr.com/photos/natatwo/105439338/in/set-72057594071598078"><img alt="Nabaztag with its shell off" title="Nabaztag with its shell off" src="http://static.flickr.com/37/105439338_1b1709d48b_m.jpg" /></a>

As you can see its pretty simple. We have four LEDs, a speaker, two motors and two switches (one on the back, one on the top). By the way, The fact that the ears are magnetic is amazing.

The board is rather sparse. i wasn't able to make out any processor detail - although i imagine it is some embedded platform. It was using a benq pccard wifi adapter.

<a href="http://www.flickr.com/photos/natatwo/105455837/in/set-72057594071598078/"><img src="http://static.flickr.com/37/105455837_8918b4e646_m.jpg" /></a>

I was a little surprised by the use of such common hardware in a consumer device. Maybe not actually surprised - but surprised that they obfuscated it. They could have easily exposed the hardware and made the marketing decision to sell it as upgradable.

One thing i didn't get a chance to experiment with is the <a href="http://www.flickr.com/photos/natatwo/105455653/in/set-72057594071598078/">port on the side of the circuit board</a>. It would be awesome to get shell on my nabaztag. I will investigate more soon- if anyone has any hints, let me know.

I have an ass load more pictures up on my flickr set: <a href="http://www.flickr.com/photos/natatwo/sets/72057594071598078/">nabatag take-apart</a> or <a href="http://nata2.org/photos/album/nabaztag-take-apart/">here</a>. I have a <a href="http://www.youtube.com/?v=m7e7SROteng">video on youtube</a> as well (excuse my coworkers please).
So. After reseating the  switch and making sure it worked. I put it all back together. Putting stuff together always reminds me of when i was little and i woudl take apart everything - my father told me "Harper, someone with true skill can put it back together." So true. My problem was that I always ended up with an extra piece. Anyway.. After it worked i decided to take a look at the API offered by nabaztag. It is pretty dope. Just a clean rest api. It reminded me of the ambient devices one - but the nabaztag being wifi and havign a speaker made it just that much cooler. So i read it over and then wrote this really silly php tool/interface for their API. Check it out here: <a href="http://dopeman.org/nabaztag/">Nabatag API Interface</a>.

Awesome. Let me know if that works for you.
