---
tags:
- PhoneGap Build
author: Colene Chow
title: Introducing GenericPush Plugin
date: Thu Jan 24 14:17:30 -0800 2013
permalink: /blog/build/introducing-genericpush-plugin/
---
tags:
- PhoneGap Build

We're happy to announce the support of a new plugin! The
[GenericPush plugin](https://github.com/phonegap-build/PushPlugin) is
an open-source plugin for use with [Cordova](http://cordova.apache.org)
and allows your application to receive push notifications on both
Android and iOS devices. 

<!-- end-slug -->

The Android implementation uses
[Google's GCM service](http://developer.android.com/google/gcm/index.html), whereas
the iOS version is based on
[Apple APNS Notifications](http://developer.apple.com/library/mac/#documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/ApplePushService/ApplePushService.html).

**Important** - Push notifications are intended for real devices.
The registration process will fail on the iOS simulator.
Notifications can be made to work on the Android Emulator.
However, doing so requires installation of some helper libraries,
as outlined [here](<http://www.androidhive.info/2012/10/android-push-notifications-using-google-cloud-messaging-gcm-php-and-mysql/>),
under the section titled "Installing helper libraries and setting up
the Emulator".

[Read more about the plugin](https://github.com/phonegap-build/PushPlugin)
and see [Holly Schinsky's](http://devgirl.org/2013/01/24/push-notifications-plugin-support-added-to-phonegap-build/)
sample to see the plugin in action.

We know the community has been anxious for this plugin, so we're stoked
to see it join the line-up of other supported plugins:

-  [ChildBrowser Plugin](https://build.phonegap.com/blog/childbrowser-plugin)
-  [BarcodeScanner Plugin](https://build.phonegap.com/blog/barcodescanner-plugin)
-  [Adobe PhoneGap Build Plugin for Google Analytics](https://build.phonegap.com/blog/analytics-plugin)

To use any of our plugins in your project, check out our documentation
[here](https://build.phonegap.com/docs/plugins).

The team is working on adding more plugins, so stay tuned!
