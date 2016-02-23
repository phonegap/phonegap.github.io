---
tags:
- PhoneGap Build
date: 2015-01-20 10:00:02
author: brettrudd
title: "iOS 64-bit Support Now Available on PhoneGap Build"
category: build
---
tags:
- PhoneGap Build

Starting today iOS builds using **PhoneGap 3.5.0** and above will now include the
arm64 (64-bit) architecture as required by all new apps on the Apple App Store
starting on February 1st, 2015.

Arm64 support was added to cordova in 3.4.1 (see this
  [blog post](http://cordova.apache.org/announcements/2014/11/25/ios-64bit.html)).
  As we skipped this minor version update on PhoneGap Build arm64 will be enabled
  for any app using PhoneGap
  3.5.0 and above. **So if you wish to submit your app to the Apple App Store you
  MUST build your application with PhoneGap 3.5.0 or above**.

Support for building iOS apps below this PhoneGap version will still be possible
but these apps will not be accepted by the Apple App Store.

Some plugins will be incompatible with arm64 eg. the plugin contains a compiled
  binary which does not
support arm64.  So if you are a
plugin author please double check that your plugin supports arm64.
