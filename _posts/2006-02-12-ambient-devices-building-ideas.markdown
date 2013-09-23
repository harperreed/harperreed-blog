--- 
wordpress_id: 1206
layout: post
title: "Ambient devices. building ideas. "
date: 2006-02-12 21:14:54 -06:00
tags: general, linux, diy, ambient, gumstix, qee, embedded
wordpress_url: http://www.nata2.org/2006/02/12/ambient-devices-building-ideas/
---
Awhile ago i picked myself up an ambient orb. It is a really cool idea - basically a device that will let you see information at a glance. For example - seeing how a server is doing based on the orbs color, or seeing what the weather is like based on the color. a lot of options. but the coolest part is that it is not obtrusive to your everyday life. you are able to just look and then see what is happening.

I really like the idea of ambient instrument displays. it fits into the paradighm i want computers to fit in. that sorta philip k. dick type of computer you see in the minority report movie and other future movies. something that is just sitting in a wall to be interacted with. not something that you need to actually sit in front of.

so anyway... i purchased one awhile back and i didn't like how hard it was to interface with. i wrote an <a href="http://dopeman.org/ambient/">interface to it</a>  allowing anyone to change the color of my orb - while it sits next to my bed. I though this was cool - but the orb didn't show me enough information. and i really didn't see a solution until i saw the <a href="http://www.nabaztag.com/vl/FR/index.jsp">nabaztag</a>.

The nabaztag is amazing. it is basically a wifi enabled ambient orb that has a couple more ambient options - ears, and sound. this allows the nabaztag to interact a bit more with its enviroment. for instance - showing amount of emails by the cock of its ears, or demonstrating load by color, showing emergency with ear placement. or any other options. with sound it gets a bit more interesting and a bit less ambient. sound is a bit more disruptive than i like - but it would allow a person to have a more intrusive alert set up in case the ambient alert didn't interface well.

so i want one of the nabaztag.  i actually want a couple. one for work. one for home. one for hiromi. one for dylan and sarah. one for my parents. and then make it so they integrate with one another. what makes the nabaztag so much better than the ambient orb is that it is wifi. i do worry that it is "locked" to the nabaztag servers and isn't able to be integrated into my webapps as well as i would like. i will probably buy one to find out. but not for awhile.

in the meantime. i am gong to build one. i read an article detailing how to build an <a href="http://students.washington.edu/natetrue/wlcolor/wlcolor.html">ambient orb out of a pic microprocessor</a> and a bundle of leds. Using that article and combining it with my new love of embedded linux computers, i will build a embbeded linux box that will control a bunch of leds, a couple other things via motors and have a speaker and audio. I don't think it should be very hard. I have been looking into the <a href="http://gumstix.com/">gumstix platform</a> - with the <a href="http://gumstix.com/spexExpnsion.html">cfstix </a>and the audio piece. using the cf portion to connect to wifi and then the GPIO on either the audio or the serial port on the tweener board. The idea would be that the little box would integrate with a web app that would stream data to it. or it would integrate with an RSS feed to generate action. i figure the action would be color shifts, motor action or simple audio. nothing to complicated.

The price ceiling would be 300. i really want to use a qee doll for the item. but i doubt they are translucent enough.

i will be sure and update yall.
