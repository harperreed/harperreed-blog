--- 
wordpress_id: 1199
layout: post
title: OSX Asterisk updated
date: 2006-01-24 03:56:01 -06:00
tags: technology, technology, source, osx, apple, asterisk, telephony, pbx, open
wordpress_url: http://www.nata2.org/2006/01/24/osx-asterisk-updated/
---
As yall know i have been playing and hacking with the Asterisk open source PBX. In my exploration time i have been looking at some great sites on asterisk and came across this relaly great asterisk guy named benjk. He runs the <a href="http://www.sunrise-tel.com/">sunrise-tel.com</a> site that releases and maintains some OSX Asterisk packages. Quite amazing. The work they are doing is pushing Asterisk into a completely different market than some of the other asterisk distributions. The idea as i see it - is to create a distribution that allows a person to easily install and configure asterisk on simple hardware and use it in a SOHO environment. The ideal place hardware for this would be a macmini or similar hardware, running on OSX. This is a stable unix environment that allows a lot of the hardcore-ness of linux and bsds but puts that carndy coating that is aqua in front of it.

Some of the work benjk and his team have been doing is to attempt to leverage the default hardware that is installed on the Apple boxes as a way to interface with the analog phone system. Either plugging directly into the PSTN or into a phone to act as an extension. This woudl give a SOHO the ability to find inexpensive hardware that works seamlessly with their current phone infrastructure - but allows them all of the features of an advanced PBX. pretty cool stuff.

The update released on the 18th covers quite a few areas:

First off, it covers and solves the issue that was raised about DIGIUM's following of the GPL. The update makes <a href="http://www.voip-info.org/wiki/view/Asterisk+GPL+Compliance">Asterisk compliant with the GPL</a>. There was a concern that DIGIUM use of none GPPL code in their release. One of the problems was a lack of attribution to the authors of plugins, modules and other pieces of code that are not Asterisk proper. This allows all of the contirbutors of all the different pieces to be given proper attirbution. THe update also removed the editline library and uses the OSX API instead. Also, in response to DIGIUM's DRM being rejected by the FSF, the DRM was removed as well.
The update also bundles some new features into the OSX build.  The addition I am most excited about is Bonjour support. Bonjour is  Apple's service discovery API. It allows pieces of whaterver to discover services of whatever. It is what powers itunes sharing, some chat stuff in ichat and other services in OSX. what makes it cool in regards to Asterisk is that it could allow a wifi phone to autoconfigure itself when it came in contact with an asterisk PBX. There are quite a few exciting implementations that require bonjour - so this is real cool.

Check out the <a href="http://www.sunrise-tel.com/downloads/AsteriskUpdate-2006-01-18-ReadMe.pdf">update pdf</a>  or go ahead and <a href="http://www.sunrise-tel.com/">download and play</a> with the new version.

Stay tuned for some more posts about asterisk. I am working on two right now - How to hsck asterisk into giving you free pstn -> softphone. and How to spoof caller id using php and asterisk.
