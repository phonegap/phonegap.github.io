---
tags:
- PhoneGap Build
date: 2013-10-28 09:00:05
author: Mike Harris
title: "October Build Update"
category: build
---
tags:
- PhoneGap Build

In addition to providing support for Cordova 3.0, 3.1 and Windows Phone 8 platform, we've also been able to tackle:

+ Support for iOS7
+ Service Status Page: [status.build.phonegap.com](http://status.build.phonegap.com)

__Status Bar Changes for iOS7__

As you all know there was a change in the default behavior of the status bar between iOS6 and iOS7 with respect to placement.  In iOS6, the status bar was above the web view with no overlap. In iOS7, the default behavior is that the WebView appears full-screen and is overlapped by the status bar, at the top. To provide PhoneGap Build clients with control over this we have added a plugin that gives control back to the developer. To use this plugin, add the following to your config.xml:

&lt; gap:plugin name="com.phonegap.plugin.statusbar" />

The StatusBar plugin will give you full control over the status bar behavior from within your app.

plugin docs - [https://github.com/phonegap-build/StatusBarPlugin/blob/master/README.md](https://github.com/phonegap-build/StatusBarPlugin/blob/master/README.md)

example app - [https://github.com/phonegap-build/pgb-example-statusbar](https://github.com/phonegap-build/pgb-example-statusbar)

_This plugin is available for PhoneGap Build apps built with Cordova 3.1_

__Service Status Page__

Due to popular demand, we have added a [service status page](http://status.build.phonegap.com) that indicates the health of the service and all of its components. Specifically it has status indicators for logging in, pulling code from gitHub and zip file uploads as well the status of builds each of the individual platforms.

__Future work__  

Going forward we will be working to increase the size of Mobile apps that can be built by our service and working to enhance the API.

Build Away!