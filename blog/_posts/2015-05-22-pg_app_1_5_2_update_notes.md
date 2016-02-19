---
date: 2015-05-22 15:00:02
author: Tim Kim
title: "Important notes about the 1.5.2 release of the PhoneGap Developer App"
tags:
- App
- Desktop 
- News
- Windows Phone
- iOS
- Android
---

## Important notes about the recent PhoneGap Developer update
Hello everyone, we are noticing an uptick of issues concerning people unable to pair their device(s) to the PhoneGap CLI or the PhoneGap Desktop app. 

The first thing people should try is to update their `PhoneGap CLI` to version 
`5.0.0-0.28.0` or newer:

    $ sudo npm update -g phonegap

or

    C:\> npm update -g phonegap

Or their desktop app by downloading and installing to `0.1.7` or newer:
- __OS X__: Download [PhoneGap Desktop 0.1.7 for OS X](https://github.com/phonegap/phonegap-app-desktop/releases/download/0.1.7/PhoneGapDesktop.dmg)
- __Windows__: Download [PhoneGap Desktop 0.1.7 for Windows](https://github.com/phonegap/phonegap-app-desktop/releases/download/0.1.7/PhoneGapSetup.exe)

If you are still unable to connect to the server, please create an issue on our [issue tracker][1] 
describing:
- the operating system you are using
- the device OS and version
- if they are using the desktop app or CLI

Thanks for using our app!

[1]: https://github.com/phonegap/phonegap-app-developer/issues/
