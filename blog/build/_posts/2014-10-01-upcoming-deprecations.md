---
tags:
- PhoneGap Build
date: 2014-10-01 17:00:02
author: Brett Rudd @brettrudd
title: "Cordova 2.9, WebOS, Symbian, Blackberry and Windows Phone 7 Deprecations"
category: build
---

On October 15th, 2014 we will be removing support for WebOS, Symbian, Blackberry
and Windows Phone 7 platforms, as well as for all Cordova versions below 3.0.

As mentioned in this [blog post](http://phonegap.com/blog/2014/02/21/platform-deprecation/)
from February 2014, we will
be deprecating WebOS, Symbian, Blackberry and Winphone 7. Cordova has stopped active development
on these platforms and we feel continuing support for these platforms on
PhoneGap Build means less resources to focus on adding new platforms or
improving our service. While Blackberry 10 is still being supported in Cordova we
feel it's lack of [market share](http://www.idc.com/prodserv/smartphone-os-market-share.jsp) and
community support don't warrant it being supported on PhoneGap
Build. It may be added in the future, but currently we have no plans to do so. If you still require these
platforms you can download the older Cordova frameworks and build locally.

Cordova 3.x was released in July 2013 and since then we have been recommending
users migrate their apps to the new versions. Cordova 3.x has significant improvements
over Cordova 2.x including support for newer devices, security updates and an easier upgrade
path as bugfixes and improvements are added to Cordova. Although it might be an
inconvenience for user's with legacy applications, the upgrade path for these
apps on PhoneGap Build is easy as no native code or project upgrades need to
be applied. Upgrading will mean tracking down api usage and finding which core plugins
implement the function calls. The list and full documentaion of the core plugins is
[here](http://docs.phonegap.com/en/3.5.0/cordova_plugins_pluginapis.md.html#Plugin%20APIs).
