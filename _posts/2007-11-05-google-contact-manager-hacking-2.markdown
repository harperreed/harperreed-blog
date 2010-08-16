--- 
wordpress_id: 1489
layout: post
title: Google Contact Manager Hacking
date: 2007-11-05 16:10:03 -06:00
tags: general, hacking, google, gmail, xml, javascript, ajax, contacts, isync, contact-manager
wordpress_url: http://www.nata2.org/2007/11/05/google-contact-manager-hacking-2/
---
Since Google just changed the game of mobile software - I got to thinking about my new fascination - Contact management. So the first place I go to is Gmail and <a href="http://lifehacker.com/software/sneak-preview/gmail-speeds-up-improves-contacts-316673.php">Google's new contact manager</a>. Being an <a href="http://en.wikipedia.org/wiki/ISync">iSync</a> freakout, I love syncing my contacts. I LOVE being able to bring in contacts from all my different sources and see them mix with my current contacts. I LOVE finding duplicates and merging then. God I am a dork. So recently, Google released a new contact manager into Gmail's across the world (If you don't have it, you probably will soon) - so I was excited to try out the import export pieces to see how well it works/goes. fun fun. here are most of my notes.

First off some history. So there is a pretty <a href="http://googlesystem.blogspot.com/2007/01/gmail-contact-list-exposure.html">well documented "hole" in the old Google contact manager available in Google video</a>. I say hole because some people claim its a security concern. It is. But I don't think it is too big of concern. It requires a legit cookie and active session. I imagine through some reflection and other security nonsense - bad things could happen. But i am happy it is exposed.

If you go to:
<blockquote><a href="http://video.google.com/contacts/data/contacts?thumb=true&amp;groups=true&amp;show=PICKER&amp;enums=true&amp;psort=Name&amp;max=300&amp;out=js&amp;rf=Emails&amp;jsx=true">http://mail.google.com/mail/contacts/ui/ContactManager? js=RAW&amp;maximize=true&amp;hide=true&amp;position=absolute&amp;hl=en&amp;border=NONE</a></blockquote>
You will get a list of your contacts in XML. You can add various things onto the query string to change the output to js (<a href="http://video.google.com/contacts/data/contacts?thumb=true&amp;groups=true&amp;show=ALL&amp;enums=true&amp;psort=Name&amp;max=500&amp;out=js&amp;jsx=true">out=js</a>), change the sort order (<a href="http://video.google.com/contacts/data/contacts?thumb=true&amp;groups=true&amp;show=ALL&amp;enums=true&amp;psort=Email&amp;max=500&amp;jsx=true">psort=Email</a>, <a href="http://video.google.com/contacts/data/contacts?thumb=true&amp;groups=true&amp;show=ALL&amp;enums=true&amp;psort=Name&amp;max=500&amp;jsx=true">psort=Name</a>) and I am sure there are others as well.

So from here we move onto Gmail and the new contact manager. First off, you can easily find the new xml/js stream of your contacts:
<blockquote><a href="http://mail.google.com/mail/contacts/data/contacts?show=ALL&amp;out=js">http://mail.google.com/mail/contacts/data/contacts?show=ALL&amp;out=js</a></blockquote>
This is (apparently) all your contacts. Take away the "&amp;out=js" if you want to see the <a href="http://mail.google.com/mail/contacts/data/contacts?show=ALL">easier to read XML version.</a>

So now the magic part of it all! Access to the raw Contact Manager. You do not have to physically in Gmail to access it. Just visit this easy to remember URL:
<blockquote><a href="http://mail.google.com/mail/contacts/ui/ContactManager">http://mail.google.com/mail/contacts/ui/ContactManager</a></blockquote>
You now have access to the new contact manager for Gmail (even if your Gmail account doesn't have access). You can also access this from a Google Apps account as well:
<blockquote><a href="http://mail.google.com/a/nata2.org/contacts/ui/ContactManager">http://mail.google.com/a/nata2.org/contacts/ui/ContactManager</a>?</blockquote>
Pretty easy!

From here you can handle all the goodness of importing and exporting your contacts to real formats. You can add real contact info. You can import from a bundle of different places and finally get your Gmail address book under control.

Sadly, there is not an "<a href="http://code.google.com/apis/gmail">official</a>" Gdata rest API for Google contacts, however with the recent announcements and with <a href="http://code.google.com/apis/opensocial/">OpenSocial</a>, I can't imagine it being far behind.

<strong>Extra Credit: </strong>Here is a Gmail photo access trick from <a href="http://jacobdehart.com">Jacob</a>! Have you ever wondered how to access the photos stored? Well here is a trick:
<blockquote><a href="http://mail.google.com/mail/photos/email@address.com" title="http://mail.google.com/mail/photos/email@address.com">http://mail.google.com/mail/photos/email@address.com</a></blockquote>
So the trick is to just append the email address to the url: <a href="http://mail.google.com/mail/photos/" title="http://mail.google.com/mail/photos/">http://mail.google.com/mail/photos/</a>

So for me you get:
<blockquote><a href="http://mail.google.com/a/nata2.org/photos/harper@nata2.org">http://mail.google.com/a/nata2.org/photos/harper@nata2.org</a></blockquote>
That is the picture of me for my Google Apps account. If you want it in Gmail go to:
<blockquote><a href="http://mail.google.com/mail/photos/harper@nata2.org">http://mail.google.com/mail/photos/harper@nata2.org</a></blockquote>
<font style="background-color: #ffffff" color="#40454b">This is obvious a helper URL to easily get contact pictures in Gmail. You just replace the email address in the above URL with your own and you will get the picture. You could probably roll your own simple <a href="http://site.gravatar.com/">Gravatar</a> like service using this info!</font>
