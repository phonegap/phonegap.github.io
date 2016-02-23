---
tags:
- PhoneGap Build
date: 2014-03-18 14:20:03
author: Ryan Willoughby
title: "Deprecation and Removal of iOS SDK 6.1 on PhoneGap Build"
category: build
---
tags:
- PhoneGap Build

[From Apple](https://developer.apple.com/news/index.php?id=12172013a): 
> As of February 1, new apps and app updates submitted to the App Store must be built with the latest version of Xcode 5 and must be optimized for iOS 7.

What does this mean for PhoneGap Build? We build PhoneGap 3.0.0 and below using the iOS 6.1 SDK, but since you can't submit those apps to the iTunes store, there is no point in doing so. So, we're removing support for the iOS 6.1 SDK, and essentially removing support for PhoneGap 3.0.0 and below for iOS.