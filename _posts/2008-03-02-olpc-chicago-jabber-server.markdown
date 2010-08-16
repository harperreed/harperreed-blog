--- 
wordpress_id: 1511
layout: post
title: OLPC Chicago Jabber Server
date: 2008-03-02 02:54:36 -06:00
tags: technology, olpc, jabber, chat, xmpp, olpc-chicago, jabberolpchacksorg, jabber-server, ejabberd
wordpress_url: http://www.nata2.org/2008/03/02/olpc-chicago-jabber-server/
---
Today I spent a minute setting up a <a href="http://lists.laptop.org/pipermail/olpc-chicago/2008-March/000136.html">Ejabberd Server</a> for the OLPC Chicago group. This will allow all of us OLPC XO hackers to be on the same "mesh." To get started using the jabber server with your XO follow these simple steps:
<blockquote>
<ol>
	<li>Boot the XO</li>
	<li>Get connected to the internet</li>
	<li>Open a terminal (activity or ctrl-alt-f1)</li>
	<li>in the shell, type: su -</li>
	<li>then type: <i>sugar-control-panel -s jabber jabber.olpchacks.org</i></li>
	<li>then press ctrl-alt-erase to restart sugar/X</li>
</ol>
</blockquote>
Once this is done, you should start to see other Chicago XOs. You will know you are successful if you see me (Harper) in the community view. Please <a href="http://harperreed.org/contact">let me know</a> if you are able to get on, or if you are having trouble.

Getting the server going was pretty simple. I was able to jump right in thanks to this <a href="http://morgancollett.wordpress.com/2008/02/27/olpc-community-jabber-servers-ejabberd-200-from-source/">awesome write up</a> by <a href="http://morgancollett.wordpress.com/about/">Morgan Collett</a> of <a href="http://www.collabora.co.uk/">Collabora</a>. The install goes like this: you get your debian install primed, download the source, patch the source, compile the source, install the compiled binaries, edit the config, start the server and edit the server roster config. Then BAM you have a <a href="http://www.ejabberd.im/">ejabberd server</a> rocking and ready to go with your XO. The only caveat i ran into was that the config file from the <a href="http://wiki.laptop.org/go/Ejabberd_Configuration">ejabberd wiki page</a> details using IPV6 because eventually all the laptops will be using IPV6 to get around. However, the server i used was balking at this - and kept crashing ejabberd with the MOST verbose errors ever (I.E. no error). When i finally figured out what the problem was, it was smooth sailing.

One thing to note - ejabberd is seriously business. <a href="http://erlang.org/">Erlang</a> is interesting to work with. I was lost for about 2 hours before I gave up trying to understand what was going on and just dived in. Then it didn't make sense, but was working and I was happy.

It is really neat how the XO uses jabber to group people together. I really think that jabber is the future and seeing something use XMPP so elegantly is quite inspiring. I found one of the coolest parts of the implementation is how the rosters are forced to see everyone online - which i imagine is what powers the neighborhood view on the XO. This makes me wonder if this could be tweaked to create a more interactive or social networking aspect to the XO neighborhood.

One thing I would like to know about is how the XO uses the Multi User Chat features of the jabber server. I am not sure if the <a href="http://wiki.laptop.org/go/Chat">Chat Activity</a> uses MUC to work, but it would be cool if you could chat with XO users with a regular user account on the jabber server by joining a specific room. I will have to research that.
