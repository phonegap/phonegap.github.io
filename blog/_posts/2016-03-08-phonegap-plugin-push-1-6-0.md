---
author: Simon MacDonald
title: "PhoneGap Push Plugin 1.6.0"
tags:
- PhoneGap Blog
- Release
- News
---

It's been a couple of months but we've just released version 1.6.0 of phonegap-plugin-push. The big changes this time around have to do with Action Button support. Numerous issues and improvements were made to the Action Buttons. For instance, specifying an icon on Android is now optional. Clicking on an Action Button on Android now correctly removes the notification. On both Android and iOS you can now click an Action Button and have it's JavaScript callback execute without bringing the app to the foreground. Read more about it in the [Android](https://github.com/phonegap/phonegap-plugin-push/blob/master/docs/PAYLOAD.md#action-buttons) and [iOS](https://github.com/phonegap/phonegap-plugin-push/blob/master/docs/PAYLOAD.md#action-buttons-1) section of the docs.

Installation of the plugin has changed a little bit. Now when you install the plugin you specify the GCM Sender ID as one of the variables. This is to resolve a warning that was confusing users being thrown by GCM but it also sets us up to evolve the API. Soon you won't need to put you sender ID in your JS code.

```
phonegap plugin add phonegap-plugin-push --variable SENDER_ID="My Sender ID"
```

If you are not using GCM to send messages on iOS or you are not using GCM at all you can put in any value for the variable.

```
phonegap plugin add phonegap-plugin-push --variable SENDER_ID="My Fake Sender ID"
```

## What's New ##

For those interested in the full CHANGELOG:

## [1.6.0](https://github.com/phonegap/phonegap-plugin-push/tree/1.6.0) (2016-03-09)
[Full Changelog](https://github.com/phonegap/phonegap-plugin-push/compare/1.5.3...1.6.0)

**Implemented enhancements:**

- Background processing with coldstart on iOS [\#583](https://github.com/phonegap/phonegap-plugin-push/issues/583)

**Fixed bugs:**

- Android: notification does not dismiss after selection button \(1.6.x dev\) [\#610](https://github.com/phonegap/phonegap-plugin-push/issues/610)

**Closed issues:**

- XDK doesn't work with v1.5.x. Are you going to have a non-gradle version for v1.5.x [\#675](https://github.com/phonegap/phonegap-plugin-push/issues/675)
- emoji support [\#668](https://github.com/phonegap/phonegap-plugin-push/issues/668)
- iOS sound not found \[edited with new debug info\] [\#667](https://github.com/phonegap/phonegap-plugin-push/issues/667)
- Push notification register APN to GCM Problem [\#665](https://github.com/phonegap/phonegap-plugin-push/issues/665)
- IOS Never fire the registration event [\#659](https://github.com/phonegap/phonegap-plugin-push/issues/659)
- Badge count inaccurate [\#651](https://github.com/phonegap/phonegap-plugin-push/issues/651)
- Android Icon options in phonegap-plugin-push@1.2.3  [\#648](https://github.com/phonegap/phonegap-plugin-push/issues/648)
- Getting same registration id when re-register  [\#641](https://github.com/phonegap/phonegap-plugin-push/issues/641)
- Callback not called unless you register to GCM everytime you open the app [\#626](https://github.com/phonegap/phonegap-plugin-push/issues/626)
- How to make GCM show alert automatically ios [\#602](https://github.com/phonegap/phonegap-plugin-push/issues/602)
- Shoddy image for notification icon,status bar icon? [\#587](https://github.com/phonegap/phonegap-plugin-push/issues/587)
- ERROR: Plugin 'PushNotification' not found [\#568](https://github.com/phonegap/phonegap-plugin-push/issues/568)
- No sound and vibration for GCM when built with Cordova but Ok with PhoneBuild [\#520](https://github.com/phonegap/phonegap-plugin-push/issues/520)
