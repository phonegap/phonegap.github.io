---
tags:
- PhoneGap Build
date: 2016-02-09 13:00:04
author: Ryan Willoughby 
title: "PhoneGap 6.0.0 Now Available on Build"
category: build
---

PhoneGap 6.0.0 is now available on PhoneGap Build! To use it, add the following to your config.xml:

    <preference name="phonegap-version" value="cli-6.0.0" />

This update includes major version increments on all 3 platforms, including moving from the deprecated cordova-wp8 to cordova-windows. It includes the following individual platform releases:

- *iOS: 4.0.1*
- *Android: 5.1.0*
- *Windows: 4.3.0*

More info on the changes in each platform:

### iOS

- [Shazron Abdullah's iOS 4.0.0 release blog post](https://shazronatadobe.wordpress.com/2015/09/09/apache-cordova-ios-4-0-0-and-wkwebview-support/)
- [Apache Cordova iOS source repository](https://github.com/apache/cordova-ios), including release notes and change log

### Android

- [Joe Bowser's Android 5.0.0 release blog post](https://cordova.apache.org/announcements/2015/11/09/cordova-android-5.0.0.html)
- [Apache Cordova Android source repository](https://github.com/apache/cordova-android)

### Windows (Beta)

- [Apache Cordova Windows 4.3.0 release blog post](https://cordova.apache.org/announcements/2016/01/18/cordova-windows-4.3.0.html)
- [Apache Cordova Windows source repository](https://github.com/apache/cordova-windows)

### Some notes about Cordova Windows

As mentioned above, this update includes a move from the deprecated cordova-wp8 platform to the cordova-windows platform. If you have a look at the source repository's readme file, you'll probably notice that this platform includes the ability to target Windows 8.1 & 10 (Desktop) in addition to Windows Phone 8.1. At this time PhoneGap Build only supports the Windows Phone 8.1 builds -- but we hope to support Windows Desktop in the near future as well. *Be aware that we are releasing Cordova Windows support under a beta tag -- let us know if you find issues!* Additionally Hydration is not yet supported on Cordova Windows 4.x (in progress).

On all platforms, if you are a plugin owner, you'll need to ensure your plugins work with the above versions so you can continue to use them. Follow the links above for more information.