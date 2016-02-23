---
tags:
- PhoneGap Build
date: 2015-06-16 15:00:02
author: Ryan Willoughby
title: "Cordova 5.1.1 Now on PhoneGap Build"
category: build
---
tags:
- PhoneGap Build

We're happy to let you know that we've updated PhoneGap for iOS, Android, and Windows Phone on PhoneGap Build. The latest version can be used by setting the following in your config.xml:

    <preference name='phonegap-version' value='cli-5.1.1' />

This will build your PhoneGap app with the following individual platform versions (links to version release notes):

 * [Cordova Android 4.0.2](https://github.com/apache/cordova-android/blob/4.0.2/RELEASENOTES.md)
 * [Cordova iOS 3.8.0](https://github.com/apache/cordova-ios/blob/3.8.0/RELEASENOTES.md)
 * [Cordova WP8 (Windows Phone 8) 3.8.1](https://github.com/apache/cordova-wp8/blob/3.8.1/RELEASENOTES.md)

#### Why the new (somewhat confusing) versioning?

 Previously PhoneGap Build would wait for all of our supported platforms to reach an agreed upon common version release in the Cordova Project before we added it to PhoneGap Build. However, the individual platform projects (iOS, Android, WP8) are no longer syncing their version releases either in time or in labeling. Thus moving forward PGB will attempt to sync with Cordova CLI releases and its packaged platform versions. For example, [Cordova CLI 5.1.1](https://github.com/apache/cordova-cli/releases/tag/5.1.1) was recently released, and by default it will use Android 4.0.2, iOS 3.8.0, and WP8 3.8.1 -- so those are the versions we'll use on PGB when you build with `cli-5.1.1` on Build.

#### Cordova Android 4.0.2 and 3rd Party Webviews

A long awaited feature (for a vocal few) is support for building with 3rd party webviews -- in particular the [Crosswalk Webview Project](https://crosswalk-project.org/) -- on PhoneGap Build. Now you can! Include the Crosswalk plugin in your app like so:

    <gap:plugin name='org.crosswalk.engine' version='1.3.0' source='pgb' />

To verify, connect the Chrome debugger to your app running on an Android device, check out the `navigator.userAgent`, and you should see something like this:

    Mozilla/5.0 (Linux; Android 5.0.2; Nexus 7 Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.65 Mobile Crosswalk/14.43.343.13 Safari/537.36

Note that the source in the plugin xml above is 'pgb', not 'npm'. You'll find that building with the npm version of cordova-plugin-crosswalk-webview will fail on PhoneGap Build. Currently PGB doesn't support gradle builds, so we had to [fork the Crosswalk plugin](https://github.com/phonegap-build/cordova-plugin-crosswalk-webview/tree/plugin_with_arm_binary) and convert it to an ant project. Believe us, we don't want to maintain a separate fork, so rest assured we are investigating gradle support on PGB and other solutions.

Check out the [Apache Cordova Blog](https://cordova.apache.org/blog/) for more detailed info. Questions? [Ask here.](https://community.phonegap.com)
