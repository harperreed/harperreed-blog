--- 
wordpress_id: 1434
layout: post
title: PECL Uploadprogress example
date: 2007-04-16 17:21:40 -05:00
tags: technology, technology, php, progressbar, php-progress-bar, progress-bar, prototype-uploads, yui, prototype, pecl, uploadprogress, ajax-uploads, uploads
wordpress_url: http://www.nata2.org/2007/04/16/pecl-uploadprogress-example/
---
Today I decided I was going to build the asynchronous picture uploader for one of our new projects. I had installed the <a href="http://pecl.php.net/package/uploadprogress">PECL Uploadprogress extension</a> awhile ago and I just needed to build an example and then build it into our app.

However, my plan was spited by the opensource gods who delivered very little documentation about how to use the <a href="http://pecl.php.net/package/uploadprogress">PECL Uploadprogress extension</a>. So here is my quick writeup and example.

After crawling for 30 minutes through the C++ source of the Uploadprogress extension, I figured out what the heck was actually happening. The basic set of events is that an upload occurs. with that upload post is a hidden input that has a unique ID in it. The Uploadprogress extension then assigns the progress of that upload to that ID. Then when you call the uploadprogress_get_info() function with that unique id, the response is the upload progress.  So, the two key pieces of information are this:

The function that accesses the upload progress is:
<blockquote>uploadprogress_get_info($unique_id);</blockquote>
It takes a string that is the uploads unique id. To set this id you include the following hidden input in your upload form:
<blockquote>&lt;input type="hidden" name="UPLOAD_IDENTIFIER" value="&lt;?php echo $some_uniq_id; ?&gt;" /&gt;</blockquote>
This sets the ID of the upload that the uploadprogress extension then can track. THIS IS VERY IMPORTANT. As far as I could tell, if you entered a different ID name, your uploadprogress_get_info($unique_id); will not work. If there is no upload, or it is complete uploadprogress_get_info() returns not a array.

So the pseudo php code is like this

<strong>upload.php</strong>
<blockquote>&lt;form crap&gt;
&lt;input type="hidden" name="UPLOAD_IDENTIFIER" value="&lt;?php echo $some_uniq_id; ?&gt;" /&gt;
&lt;input type="file" ....... /&gt;
&lt;input type="submit" .... /&gt;
&lt;/form&gt;</blockquote>
<strong>progress.php</strong>
<blockquote>&lt;?
$uniq_id = $_GET["id"];
print_r(uploadprogress_get_info($unique_id));
?&gt;</blockquote>
so you would load up upload.php and upload a huge file. Then in another browser window you would view progress.php?id=$some_uniq_id and theoretically you would get a raw progress response from uploadprogress_get_info().

heh.

So I have created a working (at least on my server) example of this for yall to test. I have placed it in my code archive under <a href="http://stuff.harperreed.org/?path=code%2Fphp_upload_progressbar">php_upload_progressbar</a>. This example uses prototype and YUI components to achieve totally asynchronous uploads and then has a CSS progress bar to handle the upload progress. The upload is through an Iframe using the YUI container.js and the updaters are using prototype. I imagine I could have used just YUI, but I know prototype better and it was easy to rock out in about thirty seconds. I have attempted to thoroughly comment both my <a href="http://stuff.harperreed.org/?path=code%2Fphp_upload_progressbar&amp;text=progress.php">progress.php</a> and my <a href="http://stuff.harperreed.org/?path=code%2Fphp_upload_progressbar&amp;text=upload.php">upload.php</a> so it should be somewhat clear on what is going on.

Let me know if you have questions or comments. I haven't placed a live example anywhere because I don't really feel comfortable having crazy people uploading random porn to my servers. however, I would love to help peeps that are having issues getting the example to run.

UPDATE: I have updated the urls - as the old ones have expired.
<p id="0767317B-992E-4b12-91E0-4F059A8CECA8:ccac64de-bd50-4ea3-8cd2-461a77951d8c" class="wlWriterSmartContent" style="margin: 0px; padding: 0px; display: inline">[tags]uploads, ajax uploads, uploadprogress, pecl, prototype, php, yui, prototype uploads, progress bar, php progress bar, progressbar[/tags]</p>
<p class="wlWriterSmartContent" style="margin: 0px; padding: 0px; display: inline"></p>
