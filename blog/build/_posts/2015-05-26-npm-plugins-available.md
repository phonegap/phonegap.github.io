---
tags:
- PhoneGap Build
date: 2015-05-26 15:00:02
date: 2015-05-26 13:00:02
author: brettrudd
title: "npm Plugins Are Now on PhoneGap Build!"
category: build
---
tags:
- PhoneGap Build

As announced in this [blog post](http://cordova.apache.org/announcements/2015/04/21/plugins-release-and-move-to-npm.html),
cordova has moved it's official plugin source to the [npmjs.com](https://www.npmjs.com) repository. As part of this move [plugins.cordova.io](http://plugins.cordova.io)
will be deprecated.  It will move to read-only on July 15th, 2015 and will be **shuttered on October 15th, 2015**.

We will continue to support plugins from plugins.cordova.io until it is fully deprecated, but we recommend all users to migrate their apps to use the npm repository if possible. To use plugins from npm in your app specify `npm` as the `source` of the plugin.

    <gap:plugin name="this-npm-plugin" source="npm" version="1.0.0" />

Full [documentation](http://docs.build.phonegap.com/en_US/configuring_plugins.md.html#Plugins) is here.

We recommend plugin authors who have plugins on [plugins.cordova.io](http://plugins.cordova.io) to move their plugins to the [npmjs.com](https://npmjs.com) repository as soon as possible.  Be aware of the new naming conventions to improve readability as followed by the core plugins.

To search for plugins on [npmjs.com](https://npmjs.com) use the keywords `ecosystem:cordova`.  A full list is [here](https://www.npmjs.com/search?q=ecosystem%3Acordova).
