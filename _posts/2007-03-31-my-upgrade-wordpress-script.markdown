--- 
wordpress_id: 1427
layout: post
title: My upgrade wordpress script
date: 2007-03-31 18:54:13 -05:00
tags: technology, technology, php, wordpress, automatic-upgrade, bash, script, upgrade
wordpress_url: http://www.nata2.org/2007/03/31/my-upgrade-wordpress-script/
---
I broke my blog the other day. It was a pain in the ass. I don't really know what happened - just that it broke. So I was thinking, I hate upgrading my wordpress. I hate it. I agree 100% with <a href="http://www.mattcutts.com/blog/upgrading-wordpress/">Matt Cutts</a> about how wordpress has one of the most clunky and cruft creating upgrade process. So annoying. And it gets even more annoying when you are doing it with 50 blogs. stupid friends. hah. So awhile ago I created this script which basically lets me just execute a small number of commands to upgrade a wordpress blog.

If a script isn't really your thing, it seems like the best way to handle wordpress upgrades is to use SVN to do them. I am going to look into the best way to do that, but my experience so far in that experiment has shown me that the bleeding edge release of wordpress is not always a working release. ;)

<a href="http://photomatt.net/">Matt</a> from wordpress <a href="http://www.mattcutts.com/blog/upgrading-wordpress/#comment-100841">comments</a> on Matt Cutt's blog about the existence of a <a href="http://www.zirona.com/software/wordpress-instant-upgrade/">upgrade plugin</a> - which seems really interesting. hmm..

So anyway. The script...

I am warning you that this script HAS KILLED AT LEAST ONE BLOG. hah. but it has also regularly upgraded at least 50 blogs as well. So.. use at your own risk. and feel free to modify and fix stuff that you see.

I am assuming that your web layout is:
<blockquote>/ <em>- root of domain</em>
/web <em>- blogs webroot
</em>/archive  <em>- archive for old backups
</em></blockquote>
If your layout differs it will not be too hard to change the vars and make the script work for you. The script will backup your wordpress DB, tar up your wordpress dir, download the newest version of wordpress, untar the new wordpress, and then move all your wp-content and what not into the new wordpress dir. It then puts all the backups into a dated folder in the archive dir. then cleans up a bit after itself.

The script does not account for any customizations at all. If you have any files that are placed in the webroot, or files that are not in their normal places, it will not work at all. Honestly - unless you know what you are doing and really want to play Russian roulette of the bash kind - I wouldn't use this script. ;)
<blockquote>#!/bin/bash

# Dirs
webdir="web"
archivedir="archive"

# Mysql credentials
database="wordpress mysql database"
username="wordpress mysql username"
password="wordpress mysql password"

#the meat of the script
echo "Wordpress upgrade script"
echo "* Backing up wordpress db"
/usr/local/mysql/bin/mysqldump $database -u $username -p$password &gt; sql_backup_`date +"%m-%d-%Y"`.sql
echo "* Gzipping wordpress sql"
gzip sql_backup_`date +"%m-%d-%Y"`.sql
mkdir wordpress.backup_`date +"%m-%d-%Y"`
mv sql_backup_`date +"%m-%d-%Y"`.sql.gz wordpress.backup_`date +"%m-%d-%Y"`
mkdir wp-backup_`date +"%m-%d-%Y"`
cd $webdir
echo "* Backing up the old wordpress"
tar zcf ../wordpress.backup_`date +"%m-%d-%Y"`/$webdir.backup_`date +"%m-%d-%Y-%T"`.tgz .
cp -a wp-config.php ../wp-backup_`date +"%m-%d-%Y"`
cp -a wp-content ../wp-backup_`date +"%m-%d-%Y"`
cp -a wp-images ../wp-backup_`date +"%m-%d-%Y"`
cp -a .htaccess ../wp-backup_`date +"%m-%d-%Y"`
cd ../wp-backup_`date +"%m-%d-%Y"`
echo "* Downloading the newest wordpress"
wget -q http://wordpress.org/latest.tar.gz
echo "* Extrating the new wordpress"
tar zxf latest.tar.gz
cd ..
echo "* Doing a bunch of directory and file juggling"
mv $webdir wordpress.backup_`date +"%m-%d-%Y"`/
mv wordpress.backup_`date +"%m-%d-%Y"`/ $archivedir/wordpress.backup_`date +"%m-%d-%Y-%T"`
mv wp-backup_`date +"%m-%d-%Y"`/wordpress $webdir
cp -af wp-backup_`date +"%m-%d-%Y"`/* $webdir/
cp -af wp-backup_`date +"%m-%d-%Y"`/.htaccess $webdir/

echo "* Cleaning up"
rm -rf wp-backup_`date +"%m-%d-%Y"`/
echo "* Backup placed in $archivedir/wordpress.backup_`date +"%m-%d-%Y-%T"`"

echo "All upgraded. Run the upgrade script: /wp-admin/upgrade.php"</blockquote>
So you drop this script into your domain root and then execute it. Here is the output from my most recent upgrade.
<blockquote>[jhr@destrukt nata2.org]$ sh wordress_upgrade.sh
Wordpress upgrade script
* Backing up wordpress db
* Gzipping wordpress sql
* Backing up the old wordpress
* Downloading the newest wordpress
* Extrating the new wordpress
* Doing a bunch of directory and file juggling
* Cleaning up
* Backup placed in archive/wordpress.backup_03-31-2007-17:50:04
All upgraded. Run the upgrade script: /wp-admin/upgrade.php
[jhr@destrukt nata2.org]$</blockquote>
Since it completely removes all the old files, except those in wp-content and wp-images it leads to less cruft and nonsense. It simply runs though and does what I would have done with my fingers, but automagically.

You can <a href="http://stuff.harperreed.org/v/code/wordpress_upgrader/f/wordress_upgrade-release.sh">download the script at stuff.harperreed.org</a>.

So there yea go. Its really simple and quite easy. And it works great for upgrading my blogs. Let me know if it worked for you, or if you have any comments or suggestions.
<p class="wlWriterSmartContent" id="0767317B-992E-4b12-91E0-4F059A8CECA8:4aa8b25b-1fa2-4173-bbf9-60825aebbc8f" contenteditable="false" style="margin: 0px; padding: 0px; display: inline">[tags]wordpress, upgrade, script, bash, automatic upgrade, php[/tags]</p>
