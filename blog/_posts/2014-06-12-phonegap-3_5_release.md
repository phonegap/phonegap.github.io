---
date: 2014-06-12 14:20:04
author: Lorin Beer
title: "PhoneGap 3.5.0 Release"
tags:
- 3.5.0
- Release
---

The PhoneGap team is happy to announce the release of PhoneGap 3.5.0!

## PhoneGap 3.5.0 Highlights

- All Platforms received a top-level `package.json`.
- All Platforms are released on npm. For example, [cordova-ios](https://www.npmjs.org/package/cordova-ios).
- Future PhoneGap updates use npm instead of git for loading platforms into projects.
- Refactored Cordova tooling into multiple npm packages to improve CLI stability.
- iOS projects are now built as a universal binary (32 and 64 bit).
- iOS 5.0 and arm64 support has been dropped. The minimum deploy target is now iOS 6.0.
- This is the last release supporting Windows Phone 7.
- More information is available on the [Cordova 3.5.0 release post](http://cordova.apache.org/announcements/2014/05/23/cordova-350.html).

## Upgrading to PhoneGap 3.5.0

    $ npm update -g phonegap
    $ cd my-app/
    $ phonegap platform update android
    $ phonegap platform update ios
    $ phonegap platform update wp8

## Installing PhoneGap 3.5.0

    $ npm install -g phonegap
    $ phonegap create my-app
    $ cd my-app/

For more detail, see the [PhoneGap Install page](http://phonegap.com/install).

Happy coding!
