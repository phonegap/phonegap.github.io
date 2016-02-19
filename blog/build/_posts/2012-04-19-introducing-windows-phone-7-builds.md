---
author: Hardeep Shoker
title: Introducing Windows Phone 7 Builds
date: Thu Apr 19 13:13:57 -0700 2012
permalink: /blog/build/introducing-windows-phone-7-builds/
---
The Adobe® PhoneGap™ Build team is proud to introduce Windows® Phone 7 as our latest addition to our platform lineup.

With the addition of Windows Phone 7, developers are now able to reach a new and rapidly growing market.

<!-- end-slug -->

### How do I build for Windows Phone 7?

Building for Windows Phone 7 is as simple as building for any other Build project. 

Simply upload your HTML5 source code and assets, sit back and wait for our Build Bots to compile your deployable package. Within moments, you will have a package ready for testing on an emulator or device.

For more information on deploying your package please read the articles on deploying to a [Windows Phone Device](http://msdn.microsoft.com/en-us/library/gg588378%28v=VS.92%29.aspx) or deploying to the [Windows Phone Emulator](http://msdn.microsoft.com/en-us/library/ff402563%28v=vs.92%29.aspx).

###What are the supported API features?

The Cordova project exposes the following APIs:

Accelerometer, Camera, Compass, Contacts, File, Geolocation, Media, Network, Notification (Alert), Notification (Sound), Notification (Vibration), Storage

###What versions of PhoneGap/Cordova are supported?

We support PhoneGap 1.5.0 for Windows Phone 7 right now; support for subsequent releases will be available at the same time as other platforms. To build older apps for Windows Phone 7, please update the PhoneGap Version to 1.5.0.

###How do I configure my build?

Like other projects on PhoneGap Build, Windows Phone 7 projects also uses our config.xml.

With this you will be able to configure items such as the name, author, preferences, icons, and splash screens.

For more information please refer to our [config.xml Documentation](https://build.phonegap.com/docs/config-xml)

###Does PhoneGap Build sign my application for Windows Phone 7?

PhoneGap Build does not sign Windows Phone packages; we provide the necessary XAP file for application submission.

For more information please refer to the following guides:

[Technical documentation on the application submission](http://msdn.microsoft.com/en-us/library/ff941089%28v=vs.92%29.aspx)

[Application Hub Walkthrough](http://create.msdn.com/en-US/home/about/app_submission_walkthrough_upload)
