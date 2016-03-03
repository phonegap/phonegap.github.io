---
date: 2014-09-02 10:00:28
author: Michael Brooks
title: "PhoneGap Developer App 1.3.0"
tags:
- App
- News
- Android
- iOS
- Windows Phone
---

We hope all of our Canadian and Americian friends had a great long weekend! To help kick off the new week, we're releasing the PhoneGap Developer App 1.3.0!

## What's New

__Updated to Android@3.5.1__

This addresses [three Android security vulnerabilities][1] that were fixed by Apache Cordova.

__Added support for older CLI versions__

This will help to fix the 404 error on `/register` when using an outdated PhoneGap CLI.

__Added support for Adobe Mobile Analytics__

While this is not directly benefical to you, it'll help provide the PhoneGap team with crash reports
and usage analytics. Feel free to checkout the [Adobe Mobile Services plugin][5] source code to learn
more about it.

You can also [read the complete change log][2] in our repository.

## How to Update

__Updating the PhoneGap Developer App__

Your device should automatically receive the update. If this doesn't happen, then you may need to
manually check for app store updates.

__Updating the PhoneGap CLI__

Many of the features and fixes are deployed through the CLI instead of the application. Please remember to
update to the latest version of the CLI to receive these patches:

    $ sudo npm update -g phonegap

or

    C:\> npm update -g phonegap

## Getting Involved

You can keep up-to-date on our work by following the repository's [issue tracker][4]
and [milestones][3]. Each milestone will be released to the app store.

Thanks for using the app!

[1]: http://cordova.apache.org/announcements/2014/08/06/android-351-update.html
[2]: https://github.com/phonegap/phonegap-app-developer/blob/master/CHANGELOG.md#130
[3]: https://github.com/phonegap/phonegap-app-developer/issues/milestones
[4]: https://github.com/phonegap/phonegap-app-developer/issues/
[5]: https://github.com/Adobe-Marketing-Cloud/mobile-services
