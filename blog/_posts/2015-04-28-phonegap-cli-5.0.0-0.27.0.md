---
date: 2015-04-28 15:00:02
author: Steve Gill
title: "PhoneGap CLI 5.0.0 Released!"
tags:
- Release
- Announcement 
---

We have just released a new version of the [PhoneGap CLI 5.0.0](https://www.npmjs.com/package/phonegap)! 

__OS X or Linux__

    $ npm install -g phonegap

_You may need to use `sudo npm install -g phonegap`_

__Windows__

    C:\> npm install -g phonegap

## Release Highlights:

* Upgraded to use newly released [Cordova-CLI](https://www.npmjs.com/package/cordova) version 5.0.0. Checkout the [release blog post](http://cordova.apache.org/news/2015/04/21/tools-release.html) for more information. 
* **Cordova Android@4.0.0** has been released and pinned as the default version for new projects. This includes support for pluggable WebViews! Read about it in the [Android 4.0.0 release blog post](http://cordova.apache.org/announcements/2015/04/15/cordova-android-4.0.0.html).
* Added the ability to manage your plugin and platform dependencies in your project's `config.xml`. 
  * Platforms and their versions get *autosaved* when users run `phonegap build/run PLATFORM`. 
  * To save plugins to your projects `config.xml`, use the `--save` flag when adding them. Ex: `phonegap plugin add cordova-plugin-device --save`. 
  * Existing projects can use `phonegap plugin save` and `phonegap platform save` commands to save all previously installed plugins and platforms into your project's `config.xml`
  * Platforms and plugins will be autorestored when running `phonegap build/run`. 
* Cordova plugins have been renamed and moved to [npm](https://www.npmjs.com/browse/keyword/ecosystem:cordova). Plugin developers should read the [plugins release blog post](http://cordova.apache.org/announcements/2015/04/21/plugins-release-and-move-to-npm.html)

## Platform Versions
When creating a new project, the default platform versions are now:
* Cordova Amazon-FireOS: 3.6.3
* Cordova Android: 4.0.0
* Cordova BlackBerry10: 3.7.0
* Cordova Browser: 3.6.0
* Cordova FirefoxOS: 3.6.3
* Cordova iOS: 3.8.0
* Cordova Ubuntu: 4.0.0
* Cordova Windows: 3.8.1
* Cordova WP8: 3.8.0
