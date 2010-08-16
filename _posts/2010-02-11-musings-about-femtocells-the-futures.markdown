--- 
wordpress_id: 1669
layout: post
title: "Musings about femtocells: the futures!"
date: 2010-02-11 01:44:15 -06:00
tags: general, phones, mobile, femtocell, developing-nations
wordpress_url: http://www.nata2.org/?p=1669
---
<blockquote>I wrote most of this entry the day before the earthquake in Haiti. It was motivated by the magicJack announcement and my interest in mobile devices within developing nations.  However, the thoughts in this post suddenly seemed more real after I started hearing reports of communication breakdown after the earthquake.</blockquote>
<strong>The femtocell</strong>

At the recent CES, the <a href="http://en.wikipedia.org/wiki/MagicJack">magicJack company</a> announced that they wanted to release a consumer grade FemtoCell device as an upgrade to their USB FXO/Softphone device.  Note: magicJack is an insane company. You probably have seen them on television commercials while watching USA 'Up All Night'.  While these commercials almost seem scam-like, they have apparently sold 5 million USB magicJacks.  That's a lot of phone calls!

A femtocell device is basically a mini GSM/CDMA tower. Think of it as a wi-fi AP but instead of wi-fi - it is GSM. You could drop it into your house, plug it into the Internet, and suddenly get 5 bars of connectivity on your mobile handset - instead of the standard AT&amp;T 1 bar. magicJack is offering the same service the USB dongle provides (unlimited calling and what not), but for mobile phones.  As a consumer, you would need to configure your handset to use the magicJack femtocell to receive/send calls.  When you are in range of the device (w/ signal strength enough to cover ~3000 sq. ft. house), you would bypass your carrier and use the magicJack for all incoming and outgoing calls. AWESOME.  Especially with the likes of Google Voice.

There are questions on the legality of such a device - but it is apparently legal to use inside your residence.

Side note: <a href="http://www.google.com/search?q=magicjack+sip">Magicjack is SIP</a>. And <a href="http://magicjackhacks.com/">hackable</a>. There is a cat and mouse game being played out trying to unlock it.  You can even use it with <a href="http://en.wikipedia.org/wiki/Asterisk_(PBX)">Asterisk</a>.

<strong>The thoughts</strong>

So I began to think.  Femtocells could be used to open up mobile VOIP.  One scenario is that you could jump on a 3rd party carrier for a limited time to make a p2p VOIP call using your current GSM/WCDMA mobile device.  That is really awesome.  More importantly, what's REALLY awesome is the pirate (3rd party) carriers.

Imagine purchasing 100 <a href="http://www.nata2.org/2010/01/17/i-love-phones-designed-for-developing-countries/">Motorola F3</a>'s, a <a href="http://en.wikipedia.org/wiki/Gnu_radio">GNU Radio USRP2</a> (~$1400) running the <a href="http://en.wikipedia.org/wiki/OpenBTS">OpenBTS stack</a> and a super huge antenna - and suddenly becoming a rural/developing country mobile provider. Or - if you're more interested in being a pirate carrier - you could run this setup in a city and be a carrier for the dark side (drugs, gangs, nerds...). This inexpensive setup is available (and achievable) today!  In case of the apocalypse/disaster/camping/nerdcamp - I think it would be nice to have a set up to deploy to organize/help people.

My mind started to work into overtime.  I began thinking about the ramifications of hacking the magicJack. Wouldn't it be neat to use femtocell technology to distribute ad hoc mobile carriers around a neighborhood/disaster area/rural/developing country?  You could hook the magicJack femtocell up to a <a href="http://en.wikipedia.org/wiki/FON#Fonera_2.0n">Fon2 device (usb/linux/broadband)</a> and distribute them around in places with connectivity. All you would need is a better antenna and some software to manage the provisioning and device identification. BAM! Instant pirate P2P GSM carrier.

I am hoping that this type of convergence will lead us <a href="http://www.imdb.com/title/tt0088763/">to the future</a>.
