--- 
wordpress_id: 1655
layout: post
title: 2009 Hosting Summary (or where does Harper host in 2009/2010)
date: 2009-12-09 19:29:06 -06:00
tags: general, hosting, rackspace, google, infrastructure, cloud, amazon, cloud-hosting
wordpress_url: http://www.nata2.org/?p=1655
---
<a title="this is mount fuji by nata2, on Flickr" href="http://www.flickr.com/photos/natatwo/2581673203/"><img src="http://farm4.static.flickr.com/3192/2581673203_d18270a494_m.jpg" alt="this is mount fuji" width="240" height="180" align="right" /></a>2009 was an awesome year. A lot of amazing things happened in the world of hosting (and <a href="http://www.nata2.org/2009/10/07/leaving-threadless/">a lot happened</a> in the world of Harper too). Being a crazy hosting aficionado, I will summarize my thoughts on hosting in 2009 (I will leave the predictions for 2010).
<blockquote><strong><em>Disclaimer</em></strong><em>: I am paid money by Rackspace to think about these things. However, I am an equal opportunity hosting consumer. I will try and be as open as possible (but probably a bit biased as well). This is on my personal blog and does not represent Rackspace in the least. These opinions are mine and do not represent Rackspace in anyway.</em></blockquote>
I guess I will go ahead and jump in. This is based on what I use and would most likely suggest if we were drinking beers and talking about hosting. Your mileage may vary. I am sorry if I end up causing a nuclear war based on these recommendations.

<strong>"Platforms"</strong>

Two platforms are really getting me going these days. Google's App Engine and Heroku.

App Engine is known by my close friends as my true love (haha. second only to <a href="http://hiromiusagi.com">my lovely wife</a>). I spend almost 90% of my development time hacking on App Engine apps (<a href="http://Excla.im">Excla.im</a>, <a href="http://CityPayments.org">CityPayments</a>, <a href="http://ChicagoAlerts.org">ChicagoAlerts</a>, <a href="http://chicagowiki.transitapi.com/">Transitapi</a>, <a href="http://AwesomeUpdater.com">AwesomeUpdater</a>, and <a href="http://harpersfriends.com">Harper's Friends</a>). App Engine does a few things very well and allows the developer to do the rest. Quite a few of the lessons I learned while scaling out Threadless are baked into the app by default. You don't have to scale all the pieces independently and you can really take care of things all at once. I recommend it and use it for prototyping and building new apps.

<a href="http://Heroku.com">Heroku</a>! I go to <a href="http://Heroku.com">Heroku.com</a> I spend about 10 minutes <a href="http://heroku.com/pricing">playing with sliders, clicking on features</a> and acting like I am going to deploy an app to their infrastructure. It's awesome. Heroku makes me want to learn ruby frameworks well and build applications fast. It seems that it might be expensive though. I would love to know if people have actually used it in paid production environments (i have only done hackings).

If you are interested in <a href="http://www.djangoproject.com">Django</a>, Ruby/Rails or JVM languages (I am looking at you <a href="http://www.scala-lang.org/node/1831">Scala</a>!) - I highly recommend App Engine or Heroku.

<strong>"Cloud" Server Providers</strong>

Cloud Servers are amazing things. Usually they are <a href="http://xen.org/">XEN</a> hosted and wrapped by an API or a nice pretty interface. I &lt;3 them. If I would have had these server options in 2001 I would have been able to make the server kingdom I dreamt about. It would be awesome. Luckily, now in 2009/2010 I can build my server kingdom in the <a href="http://www.nepholologist.com/">CLOUDS</a>. Anyway....

<a href="http://www.slicehost.com/">Slicehost</a> is my favorite. I really enjoy the user interface. I prefer websites with less buttons. Slicehost delivers. However, it doesn't explicitly have usage based billing (pay per hour) - which is why i am also excited about <a href="http://www.rackspacecloud.com/cloud_hosting_products/servers">Rackspace Cloud Servers</a>. Rackspace Cloud is everything you need to have fun with servers and host enterprise apps. My most recent Cloud server was used to pop up a <a href="http://www.ubuntugeek.com/howto-configure-pptp-vpn-in-ubuntu-intrepid-and-jaunty.html">VPN</a> in Ubuntu so I could use public wifi without being frightened. It took about 10 minutes from deciding to do it, to connecting with my macbook pro. awesome.

<a href="http://aws.amazon.com/ec2/">EC2</a> is pretty sweet as well. It is the heavy duty infrastructure that powers so many awesome sites. I really like watching what Amazon is doing. Amazing stuff. I am super excited about booting from the <a href="http://aws.amazon.com/ebs/">EBS</a>. However, I don't like the complexity that comes with EC2 by default. Which is why I only use EC2 if I need AWS specific utilities.

Sidenote: <a href="http://www.linode.com/?r=1762fce92f905a07a8623481199299b3ab8a90b9">Linode</a> is getting a lot of buzz based on their <a href="http://blog.linode.com/2009/12/04/linode-stomps-competition-in-performance-benchmark/">performance/cost ratio</a>. I recommend you <a href="http://www.linode.com/?r=1762fce92f905a07a8623481199299b3ab8a90b9">take a look</a> at them and see if they will work for you.

If you do find yourself in the dark world of cloud servers, you should check out my favorite utility for managing all things servers: <a href="https://www.cloudkick.com/">CloudKick</a>. CloudKick is a pretty solid app that allows you manage your all your Rackspace and Amazon servers. You can do it very easily and with very few buttons (I love a small amount of buttons).

If you are looking for awesome easy servers - use Rackspace Cloud Servers. If you are looking for a full stack (load balancer, block storage and what not) - use Amazon. I use Rackspace Cloud Servers.

<strong>File Hosting and Serving.</strong>

File hosting is simple stuff. I follow this simple guideline:

If you want to host a file for everyone (i.e. a popular image, a iso, download etc) where performance is important - use <a href="http://www.rackspacecloud.com/cloud_hosting_products/files">Rackspace Cloud Files</a> with limelight integration. This is the closest you will come to paying for enterprise CDN capabilities for a tiny amount of money. You can't beat the level of performance that <a href="http://www.limelightnetworks.com/">limelight</a> offers (unless you want to pay for <a href="http://www.akamai.com">Akamai</a>).

If you need to put a BUNDLE of files somewhere that needs to be public or private - use Cloud Files or <a href="http://aws.amazon.com/s3/">S3</a>. Depending entirely on what vendor you like or what API you are most familiar with. I use both for backing up various data from my servers and home (I recommend <a href="http://www.s3rsync.com/">s3sync</a>, <a href="http://code.google.com/p/s3fs/">s3fs</a> for S3 or <a href="http://westhoffswelt.de/projects/mossofs.html">MossoFS</a>, <a href="http://blog.chmouel.com/2009/09/02/rsync-like-backup-to-rackspace-cloud-file-with-duplicity/">CloudFiles/Duplicity</a> for Cloud Files).

<strong>Multi Tenant/Shared Hosting.</strong>

Shared hosting is such a pain in the ass. ;) I really don't like it. However, I use it because of the price and because of how easy it is to host stuff for friends and others.

I use two providers regularly for shared hosting:

<a href="http://www.webfaction.com/?affiliate=harper">Webfaction</a> is by far my favorite multi tenant hosting company. It is SUPER NERD. They have this unique approach to hosting based on proxying a bunch of servers through apache. This allows you to easily host a django app that has a rails component and a wordpress blog all at the same domain root. You can even compile your own build of whatever flavor of server you like best. Its a great place for prototyping servers and generally having a great time inlinux. Webfaction also has a <a href="http://forum.webfaction.com/">developer community</a> that offers great support. I host most of my personal stuff onWebfaction (this blog, <a href="http://harperreed.org">harperreed.org</a>, etc).

<a href="http://www.rackspacecloud.com/cloud_hosting_products/sites">Rackspace Cloud Sites</a> is a great multi tenant platform. I use it hosting various apps for your friends and family. It is a no brainer to light up a domain for my brother or friend and have them host it. The only problem I have with Cloud Sites is that sometimes you have to compromise your code to fit in their super scalable infrastructure. You will NEVER go down - but you might have to tweak your drupal or wordpress code to make it easy.

If file storage is just what you need - then check out <a href="http://www.dreamhost.com/r.cgi?159982">Dreamhost</a>. For the love of god they have cheap prices. I looked today and they were offering unlimited everything (that doesn't make sense). The only problem is that they don't allow you to use it as a backup service (y<a href="http://www.labnol.org/internet/backup-files-on-dreamhost-web-hosting-servers/4538/">ou have to use the space in a very specific way</a>).

<strong>Enterprise/Physical Servers.</strong>

Enterprise servers are easy. You use <a href="http://www.rackspace.com/">Rackspace</a>. ;) Seriously though - while at <a href="http://threadless.com/">Threadless</a>, Rackspace saved our asses more than once. Using Rackspace allowed us to concentrate on our application rather than concentrate on our servers. Although they can be expensive - they offer so much that it is often worth it.

If you are looking for something a bit cheaper or a bit more hands on, I suggest my favorite chicago hosting company: <a href="http://fdcservers.net/">FDCServers.net</a>. They offer great support and cheap servers. You are not going to get near the support that Rackspace offers, but you are going to pay a LOT less. I host a couple big apps at FDC and have had no problems at all.

<strong>Conclusion.</strong>

This wraps up my hosting review. I recommend App Engine, Cloud Servers, Cloudfiles/S3 and Rackspace Managed hosting. heh. See - super easy. All your hosting questions are answered.

2010 is going to be an exciting year. I imagine that Rackspace and Amazon will continue to fight head to head. Which will only make us consumers have better options. I also am very excited to see what Google does with App Engine (I imagine that they will NOT be adding <a href="http://code.google.com/p/googleappengine/issues/detail?id=13">PHP support</a>). I hope that 2010 is as productive as 2009 was for hosting, if so - then it will be an exciting, innovative time.

Leave your questions in the comments - I will attempt to answer them the best i can.
