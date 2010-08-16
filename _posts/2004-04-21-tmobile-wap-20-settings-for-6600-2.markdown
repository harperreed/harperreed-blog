--- 
wordpress_id: 1196
layout: post
title: Tmobile WAP 2.0 Settings for 6600
date: 2004-04-21 02:53:19 -05:00
tags: general, technology, phones, mobile, tmobile, settings, help, tutorial
wordpress_url: http://www.nata2.org/2004/04/21/tmobile-wap-20-settings-for-6600-2/
---
a lot of people have been having a hard time getting MMS and WAP to work with the nokia 6600. however. a while ago tmobile upgraded their system and now it works. basically it is all the same except for the addition of a proxy server. so you can either add the proxy server info to your current config or you can add whole new connections using the correct info provided.

<!--more-->

Proxy server info:
<strong>Primary Proxy Server Address:</strong> 216.155.165.050
<strong>Primary Proxy Port Number:</strong> 8080

The entire configuration is included here:
so here is the correct info:

<strong>Connection Name:</strong> T-Zones
<strong>Data Bearer:</strong> GPRS
<strong>Access Point Name:</strong> wap.voicestream.com
<strong>User name:</strong>
<strong>Prompt Password: </strong>NO
<strong>Password: </strong>
<strong>Authentication:</strong> Normal
<strong>Homepage:</strong> http://wap.myvoicestream.com
<strong>Connection security:</strong> off

Click on Options - Advanced Settings

Under advanced settings

<strong>Phone IP address:</strong> Automatic
<strong>Primary name server:</strong>
<strong>Second name server:</strong>
<strong>Proxy serv. address:</strong> 216.155.165.050
<strong>Proxy port number:</strong>8080

<strong>Connection Name:</strong> MMS
<strong>Data Bearer:</strong> GPRS
<strong>Access Point Name: </strong>wap.voicestream.com
<strong>User name:</strong>
<strong>Prompt Password:</strong> NO
<strong>Password: </strong>
<strong>Authentication: </strong>Normal
<strong>Homepage:</strong> http://216.165.155.84/servlets/mms
<strong>Connection security:</strong> off

Click on Options - Advanced Settings

Under advanced settings

<strong>Phone IP address: </strong>Automatic
<strong>Primary name server:</strong>
<strong>Second name server:</strong>
<strong>Proxy serv. address: </strong>216.155.165.050
<strong>Proxy port number:</strong>8080
