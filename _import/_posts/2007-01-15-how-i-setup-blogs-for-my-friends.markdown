--- 
wordpress_id: 1405
layout: post
title: How I setup blogs for my friends
date: 2007-01-15 16:23:44 -06:00
tags: technology, technology
wordpress_url: http://www.nata2.org/2007/01/15/how-i-setup-blogs-for-my-friends/
---
I am a blog advocate. I am often pushing my friends to get blogs and to update them. I love reading about how my friends are doing and what is going on in their lives and with their friends. It is such a nifty way to stay in touch. I know from my own experience how rewarding blogging can be. How it can create connections with people who normally would never be connected. I love it. So with that said - I am constantly helping friends set up blogs. And now I have it down to a science. I have figured out how to use wordpress and a couple plugins to create the perfect blogging environment for n00b bloggers. here is how it goes:

So the first step is a domain. I always suggest to my friends that they get a domain. I, of course, always offer a subdomain of penisfighter.com - but they usually take the domain route. I suggest using <a href="http://joker.com">joker.com</a> because of their DNS and web interface being pretty solid; but I have had good experience with pretty much everyone. The one trick for registrars that don't have their own DNS is to use the free DNS over at <a href="http://www.everydns.net/">everydns.net</a>. Its a pain in the ass to set up, but works really well. Quite a few of my friends use it for their sites and like all server based services, they only complain when it is down (which is luckily not very often).

So you go to <a href="http://joker.com">joker.com</a> and you register joeblow.com. Then you are stuck with a domain and no place to put it. So you have to get hosting. Well this isn't to hard - if you are friends with a nerd who has a server, then ask them. Otherwise you will have to settle for something like <a href="http://www.dreamhost.com/r.cgi?159982">dreamhost</a> or if you are insane, <a href="http://www.google.com/search?q=%22mediatemple+sucks%22">mediatemple</a>. I tend to stay away from the bigger guys. they seem to fuck people over well. although I have friends who have hosted with <a href="http://godaddy.com">godaddy</a> with great happiness.

So then you have hosting and you need to do something with your domain. This is where I really have the formula down pat.

So the first thing I do is go to <a href="http://wordpress.org/download/">wordpress and download</a> the latest version. It is really easy to remember that the tar is always located at: <a href="http://wordpress.org/latest.tar.gz">http://wordpress.org/latest.tar.gz</a>. I download it using wget, and the extract it into the web dir. I usually then move all the wordpress files into the root - but whatever you want to do is fine. I then setup wordpress so that it is at a point where it works. You can get <a href="http://weblogs.about.com/cs/tutorials/ht/wordpress.htm">more info about setting up wordpress here</a>.

Once its set up and working I go in and do the following:
<ol>
	<li>Create another user to be the main blog author - I do this so that their is an admin user that can control and modify everything and then the main blog author can't fuck up the blog.</li>
	<li>I change the permalink structure to be name based - I do this so that Google and other search engines can find your blog easier.</li>
	<li>I enable the askismet spam plugin - This made blogging fun again. USE IT.</li>
</ol>
Then after the initial tweaks are set up I move on to the trickier part (and by tricky I don't mean hard, I just ran out of words).

So most of the people who I host wordpress blogs for are really interesting in showing photos and what not besides their well crafted prose. I used to think that having all my photos on my personal server was an awesome way to go about it, but then I discovered flickr and would never go back. So I MAKE everyone go <a href="http://www.flickr.com/signup/">get a flickr account</a> and then install the <a href="http://www.randombyte.net/blog/projects/falbum/">Falbum plugin</a> so that it appears that their photos are on their site and not flickrs. It is one of the better wordpress plugins out there. I have been using it for a minute and really like how easy it is to use/configure and maintain. All you have to do is authorize it and then go to the options and tweak how you want it to look. I make sure that the URL scheme is using friendly URLs, so that the photo album is easy to find and easy to link to.

Once that is done I used to tell people to go to the <a href="http://codex.wordpress.org/Using_Themes/Theme_List">theme list on wordpress.org</a> - but that got annoying. Like all "clients," friends who are getting blogs are never able to make up their minds and totally unprepared for choosing one theme among hundreds. So now, I just download the <a href="http://blogtheinternet.com/2006/09/04/wp-widgets-ready-theme-pack-download/3/">widget friendly wordpress theme pack</a>. heh. Then I just install all 100 or so themes. This way - there is no limit to the design potential of the new blog. And they will all be ready and able with widgets. I figure that hosting 50M of themes is the compromise I am willing to take for not hosting pictures and media. heh. Then I download and enable the <a href="http://automattic.com/code/widgets/">widget plugin</a> so that the future blogger can customize the theme a bit. And I am about done.

What the fancy new blogger ends up with is a really awesome fully customizable blog that is able to have pictures, entries and all that. It has the ability to look different than a lot of blogs out there and is running good software and is easy to use. And to make it even easier - if the potential power blogger is on windows, I suggest they use <a href="http://windowslivewriter.spaces.live.com/">windows live writer</a>. That program makes blogging so easy. I love it.

So then I have a new friend with a new blog. I then add the feed to my <a href="http://blogs.nata2.org">friends blog list</a> and then push then out the door, out into the wild world of blogging.
