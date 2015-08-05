---
date: 2014-03-04 14:00:05
author: Lorin Beer
title: "PhoneGap 3.4.0 Released"
tags: 
- Release
---

The Adobe PhoneGap team is happy to announce the release of PhoneGap 3.4.0!

## FireFox OS

By far the biggest new feature is [FireFox OS](https://developer.mozilla.org/en-US/Firefox_OS) support!

FireFox OS is referenced as firefoxos in phonegap commands. To compile a FireFox OS PhoneGap app, run:

    $ phonegap build firefoxos

To find out how to use the compiled FireFox OS package with the Mozilla App Manager, [Mozilla put together a guide using the Cordova CLI](https://hacks.mozilla.org/2014/02/building-cordova-apps-for-firefox-os/). All the steps should be the same from 'Debugging the App' onward.

This is on top of usual hardening and bug fixes.

There are a large number of bug fixes and improvements to the Cordova engine across iOS, Android, BlackBerry10 and Windows Phone 8. 

If you’re interested in diving into the details, then [checkout the Cordova release notes](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12312420%26version=12324813).

##How to Install PhoneGap
###Mac and Linux:

    $ npm install -g phonegap

###Windows:

    C:\> npm install -g phonegap

##How to Upgrade PhoneGap

###Mac and Linux:

    $ npm update -g phonegap 

###Windows:

    C:\> npm update -g phonegap

##How to Upgrade an App

    $ cd path/to/my-app

    $ phonegap platform update <platform>

where platform is your desired mobile platform

## Plugins
the following plugins were tested against this release of PhoneGap
- cordova-plugin-battery-status: 0.2.7
- cordova-plugin-camera: 0.2.7
- cordova-plugin-console: 0.2.7
- cordova-plugin-contacts: 0.2.8
- cordova-plugin-device: 0.2.8
- cordova-plugin-device-motion: 0.2.6
- cordova-plugin-device-orientation: 0.3.5
- cordova-plugin-dialogs: 0.2.6
- cordova-plugin-file: 1.0.0
- cordova-plugin-file-transfer: 0.4.1
- cordova-plugin-geolocation: 0.3.6
- cordova-plugin-globalization: 0.2.6
- cordova-plugin-inappbrowser: 0.3.1
- cordova-plugin-media: 0.2.8
- cordova-plugin-media-capture: 0.2.7
- cordova-plugin-network-information: 0.2.7
- cordova-plugin-splashscreen: 0.2.7
- cordova-plugin-vibration: 0.3.7

Issues and Improvements
If you come across any issues while using PhoneGap, please file an issue! This can be a bug report or feature request.

[All command-line usage issues can be submitted to the PhoneGap CLI Issue Tracker](https://github.com/phonegap/phonegap-cli/issues).

[All application issues can be submitted to the Cordova Issue Tracker](https://issues.apache.org/jira/browse/CB).


