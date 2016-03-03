---
date: 2014-11-26 19:00:03
author: Tim Kim
title: "PhoneGap Developer App 1.4.0 Release"
tags:
- App
- News
- Windows Phone
- iOS
- Android
---

Hey everyone, we've recently updated the PhoneGap Developer App to 1.4.0!
This release updates the app with Cordova 4.0.0 and updates all of the official plugins
to their latest release.

## What's New

- updated to `cordova-android@3.6.4`
- updated to `cordova-ios@3.6.3`
- updated to `cordova-wp8@3.6.4`
- updated to `org.apache.cordova.battery-status@0.2.11`
- updated to `org.apache.cordova.camera@0.3.3`
- updated to `org.apache.cordova.console@0.2.11`
- updated to `org.apache.cordova.contacts@0.2.14`
- updated to `org.apache.cordova.device-motion@0.2.10`
- updated to `org.apache.cordova.device-orientation@0.3.9`
- updated to `org.apache.cordova.device@0.2.12`
- updated to `org.apache.cordova.dialogs@0.2.10`
- updated to `org.apache.cordova.file-transfer@0.4.7`
- updated to `org.apache.cordova.file@1.3.1`
- updated to `org.apache.cordova.geolocation@0.3.10`
- updated to `org.apache.cordova.globalization@0.3.2`
- updated to `org.apache.cordova.inappbrowser@0.5.3`
- updated to `org.apache.cordova.media-capture@0.3.4`
- updated to `org.apache.cordova.media@0.2.14`
- updated to `org.apache.cordova.network-information@0.2.13`
- updated to `org.apache.cordova.splashscreen@0.3.4`
- updated to `org.apache.cordova.statusbar@0.1.8`
- updated to `org.apache.cordova.vibration@0.3.11`

Remember, as of Apache Cordova 4.0.0, the [platforms will have their own version number that is different from the shipped Cordova version][9]. This is similar to how plugins work and gives the platforms more flexibility to release minor patches, such as a security fix. So for example, Apache Cordova 4.0.0 ships with Android 3.6.4, iOS 3.6.3, and WP 3.6.4. Overtime, you should expect the platform version to diverge from each other!

## Download and Update

### PhoneGap Developer App

If you’ve already downloaded the app, then your device will auto-update for you.

If you’re new, then you can download the latest release from the [iOS AppStore][4], [Android Play Store][5] and [Windows Phone Store][6] by searching for _PhoneGap Developer_.

### PhoneGap CLI

Next, update your PhoneGap CLI to the latest version (`3.6.3-0.22.5` or newer) to get the new features:

    $ sudo npm install -g phonegap

or

    C:\> npm install -g phonegap


Please __do not__ use `npm update -g` because [it's currently broken in npm 2.x][10].

## Known Issues

I'd like to remind everyone that there are known issues with how some plugins 
work in the PhoneGap Developer App. The camera, file transfer, and media plugins
all have issues when trying to access a file uri. The next release of the PhoneGap
Developer App will focus on addressing these issues. Thanks for your patience!

If you're interested in learning more about the issues, you can checkout:

- [#172 - No audio from the Media plugin][1]
- [#173 - FileTransfer unable to access the file uri path][2]
- [#174 - Camera not returning a picture from the plugin][3]

## Getting Involved

You can keep up-to-date on our work by following the repositories [issue tracker][7] and our latest [milestone release][8]. Each milestone will be released to the app store.

Thanks for using the app!

[1]: https://github.com/phonegap/phonegap-app-developer/issues/172 
[2]: https://github.com/phonegap/phonegap-app-developer/issues/173
[3]: https://github.com/phonegap/phonegap-app-developer/issues/174
[4]: https://itunes.apple.com/app/id843536693
[5]: https://play.google.com/store/apps/details?id=com.adobe.phonegap.app
[6]: http://www.windowsphone.com/en-us/store/app/phonegap-developer/5c6a2d1e-4fad-4bf8-aaf7-71380cc84fe3?signin=true
[7]: https://github.com/phonegap/phonegap-app-developer/issues/
[8]: https://github.com/phonegap/phonegap-app-developer/milestones
[9]: http://cordova.apache.org/announcements/2014/10/16/cordova-4.html
[10]: https://github.com/npm/npm/issues/6344
