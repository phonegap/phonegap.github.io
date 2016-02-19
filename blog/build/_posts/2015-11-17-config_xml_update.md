---
date: 2015-11-17 18:00:02
author: brettrudd
title: "config.xml gets an update"
category: build
---

Hey folks, starting today some of you found out config.xml on PhoneGap Build got an update. For most users this will have no change. But for some users who use the Cordova cli you will find your workflow just got easier.

Basically we have allowed Cordova cli config.xml to be used on build.  As those familiar with the newer versions of the the Cordova cli will know config.xml now supports platform specific preferences, splash screens and icons.  So now PhoneGap Build does to!

### Platform tag

The platform tag, note the missing xml **optional** namespace, is now obeyed on Build.  This tag is **identical** to `gap:platform` and they can be used interchangeably.

    <platform name="ios|winphone|wp8|android" />

The `platform` tag has the same powers as `gap:platform` in that if a platform is missing **it will not be built**. If your config has no `gap:platform` or `platform` tags then all platforms will be built.

Also `winphone` and `wp8` can be used interchangeably so as to be consistent with the naming from Cordova.

### Platform Specific Preferences

Some people will be rejoicing.  You can now use platform-specific preferences.  eg.

    <platform name="ios">
      <preference name="phonegap-version" value="3.9.1" />
      <preference name="orientation" value="portrait" />
    </platform>

    <platform name="android">
      <preference name="phonegap-version" value="4.0.2" />
      <preference name="orientation" value="landscape" />
    </platform>

### Splashscreens and Icons

Splashscreen and icons can now be used without the `gap` namespace as well. This is in addition to the fact that they can now be placed within a `platform` tag. Placing them inside a platform tag is the same as adding a `platform="XXXX"` attribute to the element outside a `platform` tag.

    <platform name="ios">
      <icon src="ios/icons/100.png" width="100" height="100" />
      <splash src="ios/splash/default.png" width="320" height="480" />
    </platform>

    <platform name="android">
      <icon src="android/ldpi.png" gap:platform="android" gap:density="ldpi" />
      <splash src="android/ldpi.png" gap:platform="android" gap:qualifier="lhdpi" />
    </platform>

As usual, if you have any questions, <a href="https://community.phonegap.com">don't hesitate to post to the community forum</a> or yell at me on twitter at @brettrudd.
