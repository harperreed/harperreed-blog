--- 
wordpress_id: 1211
layout: post
title: Caller id spoofing with PHP and asterisk
tags: general, technology, technology
wordpress_url: http://www.nata2.org/2006/02/14/caller-id-spoofing-with-php-and-asterisk/
---
I have cleaned up and commented a little hack i did for my home asterisk server - allowing a person to dial an extension and then be walked through spoofing caller id on a call. It is a ridiculously easy hack to engage. I was surprised and a bit concerned at what this means in regards to trust and telephony. I mean, if a hobbyist is able to spoof caller id on a phone call to anywhere with nothing more than <a href="http://asteriskathome.sourceforge.net/">asterisk@home</a> and <a href="http://www.vmware.com/products/server/">vmware</a>.. what is to stop someone from setting something like this up and stealing credit cards or social security numbers using some crazy <a href="http://en.wikipedia.org/wiki/Social_engineering_%28computer_security%29">social engineering</a>.. i guess nothing.. So anyway, i released <a href="http://asteriskathome.sourceforge.net/">my source code</a>. It is really really simple and based entirely on one small block of code. The basic idea is:
<blockquote>
<ol>
<li><small>Prompt user for input (spoofed number)</small></li>
<li><small>Grab 10 digits (spoofed number)</small></li>
<li><small>Prompt user for input (number to call)</small></li>
<li><small>Grab 10 digits (number to call)</small></li>
<li><small>Set caller idea based on input in step 1 and 2</small></li>
<li><small>Make call to number from input in step 3 and 4</small></li>
</ol>
</blockquote>
As you can see the idea is pretty simple. get input. set callerid. make call. The code is just as simple:
<blockquote><small><span style="font-style: italic">//(step 1) Prompt user for input</span> $agi-&gt;stream_file('enter_spoof'); <span style="font-style: italic">//(step 2) Grab 10 digits</span> $result = $agi-&gt;get_data('beep', 3000, 10); <span style="font-style: italic">//set variables and output debug info</span> $spoofnumber= $result['result']; $agi-&gt;verbose("Spoof Number:".$spoofnumber);</small> <small><span style="font-style: italic">//(step 3) Prompt user for input</span> $agi-&gt;stream_file('call_spoof'); <span style="font-style: italic">//(step 4) Grab 10 digits</span> $result = $agi-&gt;get_data('beep', 3000, 10); <span style="font-style: italic">//set variables and output debug info</span> $callnumber= $result['result']; $agi-&gt;verbose("Number to call:".$callnumber); <span style="font-style: italic">//(step 5) Set callerid to whatever the input was in step 2</span> $agi-&gt;set_callerid($spoofnumber); <span style="font-style: italic">//(step 6) Make call to number from input in step 3 and 4 $agi-&gt;exec("Dial IAX2/yourpassword@provider/1".$callnumber);</span></small></blockquote>
The agi interface to asterisk obviously hides a lot of the complex stuff that asterisk does in the background - but still - the code is insanely simple. even with user interaction. A lot of features could be added - password; callerid checking to make sure only valid users are using the app; call back - so if you call it and set up your spoof, it calls back your number to make sure you who you say you are. or whatever ;) a lot of options are available. With a little bit of expansion - i think someone could easily make a robust callerid spoofing application for criminals and not criminals. it is easy enough for anyone to do. Check out my code here: <a href="http://stuff.harperreed.org/?path=code%2Fasterisk_callerspoof_php&amp;text=asterisk_callerspoof.phps">asterisk_callerspoof</a> What i have done is nothing new - there is a great article about all this: <a href="http://www.rootsecure.net/?p=reports/callerid_spoofing">Automated Caller ID / ANI Spoofing</a> asterisk and php rule.
