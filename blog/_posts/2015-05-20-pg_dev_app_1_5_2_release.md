---
date: 2015-05-20 14:00:02
author: Tim Kim
title: "PhoneGap Developer App 1.5.2 Release"
tags:
- App
- News
- Windows Phone
- iOS
- Android
---

## What's New
- Updated PhoneGap Developer App to use the Content Sync plugin
- iOS orientation fix

Hello everyone, I'm here to annouce that the PhoneGap Developer App has been updated to 1.5.2.
With this release, we have finally fixed the CORS issues that were in our previous versions. 
Plugins such as camera, file transfer, media should now be able to access assets off the file URI
without returning an error. In addition, the proxying issues for your AJAX calls should be fixed as well.

With that said, an enormous amount has changed behind the scenes in the way the PhoneGap Developer App
communicates with the Phonegap CLI. In order to get all of the new features 1.5.2 offers, please
update the PhoneGap CLI to the latest version (`5.0.0-0.28.0` or newer):


    $ sudo npm update -g phonegap

or

    C:\> npm update -g phonegap


## Download

If you’ve already downloaded the app, then your device will likely auto-update the app.

If you’re new to the app, you can download the 1.5.2 release for [iOS AppStore][1], [Android Play Store][2] and [Windows Phone Store][3] by searching for _PhoneGap Developer_.

## Getting Involved

You can keep up-to-date on our work by following the repositories [issue tracker][4] and our latest [milestone release][5]. Each milestone will be released to the app store.

Thanks for using our app!

[1]: https://itunes.apple.com/app/id843536693
[2]: https://play.google.com/store/apps/details?id=com.adobe.phonegap.app
[3]: http://www.windowsphone.com/en-us/store/app/phonegap-developer/5c6a2d1e-4fad-4bf8-aaf7-71380cc84fe3?signin=true
[4]: https://github.com/phonegap/phonegap-app-developer/issues/
[5]: https://github.com/phonegap/phonegap-app-developer/milestones