---
author: Andrew Lunny
title: Install iOS Apps Directly
date: Fri Feb 24 09:33:25 -0800 2012
permalink: /blog/build/install-ios-apps-directly/
---

A small but much-demanded new feature for our iOS users to announce - you can now install Adobe® PhoneGap™ Build directly on your iOS devices, without syncing through iTunes or XCode!

![Remote Installing](/uploads/blog/build/install-ios-apps-directly/something-awesome.png)

Just launch your favorite QR code reader app, point your device at your app's code, and follow the link. You'll see a prompt for your app like the one in the image. You can also log into PhoneGap Build on your phone and hit the link directly; or navigate to a public page and hit the link from there.

Please note the usual caveats for iOS builds apply: most pertintently, that only devices listed under your app's provisioning profile can install your app.

Also, we've just pushed this feature - if your older app still tries to download the IPA file, jsut hit rebuild and wait a minute for it to regenerate.

Have fun!
