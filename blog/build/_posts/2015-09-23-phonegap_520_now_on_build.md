---
date: 2015-09-23 13:00:02
author: Ryan Willoughby 
title: "PhoneGap 5.2.0 Now Available on Build"
category: build
---

PhoneGap 5.2.0 is now available on PhoneGap Build! To use it, add the following to your config.xml:

    <preference name="phonegap-version" value="cli-5.2.0" />

This version uses the following individual platform releases:
 - *iOS: 3.9.1*
 - *Android: 4.1.1*
 - *Winphone8: 3.8.1 

Also make sure your third party plugins all are up-to-date, and that your core plugins are being sourced from <b>NPM</b>, like so:

    <gap:plugin name="cordova-plugin-camera" source="npm" />

If you're updating from pre-5.1.1, <a href="http://phonegap.com/blog/2015/06/16/phonegap-updated-on-build/">read this blog post</a>.

**Note**: iOS 9 is not officially supported yet, and there are some known issues. The Cordova open-source project team is hard at work on Cordova iOS 4.0, which will include iOS 9 support. For loads of helpful Cordova iOS news, keep an eye on <a href="https://shazronatadobe.wordpress.com/">Shazron's blog</a>, as well as the <a href="https://cordova.apache.org/blog/">Apache Cordova blog</a>.

As usual, if you have any questions, <a href="https://community.phonegap.com">don't hesitate to post to the community forum</a>.