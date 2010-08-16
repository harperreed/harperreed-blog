--- 
wordpress_id: 1508
layout: post
title: "Google Apps Auth: XMPP and Radius idea"
date: 2008-02-25 01:51:39 -06:00
tags: technology, xmpp, google-apps, radius, ldap, authentication, sso, saml
wordpress_url: http://www.nata2.org/2008/02/25/google-apps-auth-xmpp-and-radius-idea/
---
At work we use <a href="http://google.com/a">Google Apps</a> for our enterprise email and calendaring. We use pretty much the entire gamut of tools Google provides us. And for the most part, we love it. It is great to have an easy to use, inexpensive suite of hosted tools that you can use from anywhere.

Gmail is far better than outlook for our organization and the other tools just help make things go smoothly. We use docs quite a bit for knowledge share and even use it some in the warehouse for quality control and what not. its neat stuff.

Recently, we have been adding various appliances to our organization that can authenticate users based on an <a href="http://en.wikipedia.org/wiki/Ldap">LDAP data store</a> or a <a href="http://en.wikipedia.org/wiki/RADIUS">Radius server</a>.

It started with one of out <a href="http://en.wikipedia.org/wiki/Samba_%28software%29">file servers</a>. I wanted to make it so people have their own share for archiving and backing up personal documents. A place that is "protected" by their password. But with 35 employees possibly accessing the file server, it is not efficient to have another ACL system. So ultimately it would be nice to have it use Google Apps as authentication portion.

I googled a bunch and forgot that this was a goal. Until this last month when we added an awesome wifi mesh system (<a href="http://www.aerohive.com/">Aerohive</a> - hit me up if you want hooked up with them, awesome stuff) and we grabbed a MUCH better VPN subsystem (<a href="http://www.juniper.net/products_and_services/ssl_vpn_secure_access/">Juniper SSLVPN</a>). Both require user auth to work most securely. Which means that in the best case, both would authenticate to the same ACL system that the file server is authenticating against.

Once again, the problem of integrating Google Apps accounts into an LDAP/Radius service was brought to my attention.  It seems like it should be something that is relatively easy to integrate. However, I can't quite grasp the <a href="http://code.google.com/apis/apps/sso/saml_reference_implementation.html">SAML offering that the Google Apps API suggests using</a> for SSO. I couldn't easily figure out if this would be an option for web only authentication, or I could drop it into a <a href="http://wiki.freeradius.org/Base_Modules">freeradius module</a> (using <a href="http://wiki.freeradius.org/Rlm_python">rlm_python</a>). It also seems that it is a way to use a radius server to authenticate a local user into their Google Apps account. Not the direction that I want. It seems like this should be possible, but i wasn't able to find any help on the various Google Groups that suggested that it possible.

I got to thinking. If I am going to be hacking away at a python module for freeradius or using <a href="http://www.wiggy.net/code/pyrad/">pyrad</a> to create a radius server - why couldn't I just have it authenticate against Google Apps jabber server. Basically using <a href="http://xmpppy.sourceforge.net/">XMPPPY</a> or whatever to hit talk.google.com and check if a user is authenticating correctly, and if so let them in.

The immediate benefit of piggy backing on Google's jabber server is that I would be able to bypass managing user accounts or passwords. They would be managed by the users themselves or by whoever is managing the user accounts. It would be independent of the Radius server.

Some immediate problems are that all the users would immediately have the same access. If I wanted more granularity of access, I would obviously have to create some ACL system that sat between the XMPP auth and the response to the radius request.

I am guessing that figuring out if SAML would work would be easiest. I can already tell this is possibly a backwards way of doing it. I just want everything to work well together. And I want to haxor up some python.
