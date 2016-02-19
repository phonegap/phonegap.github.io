---
date: 2015-09-04 00:00:03
author: Ryan Willoughby
title: "Deprecation of Public Plugins on PhoneGap Build"
category: build
---

Don't panic! A few months ago [we announced support for building with Cordova plugins from the npm repository](http://phonegap.com/blog/2015/05/26/npm-plugins-available/), and have since been encouraging plugin developers to publish plugins there instead of on Build. We've now disabled submission of public plugins to Build; they must be published to the [npm repository](http://npmjs.com). Users can still continue to build with all of the [existing plugins in the PhoneGap Build repository](https://build.phonegap.com/plugins), but any new plugins, or new versions of existing plugins, must be published to npm. PhoneGap Developers can use [this page](http://plugins.cordova.io/npm/index.html) to find Cordova plugins in the npm repository. In addition we've added a field on the plugin details page where plugin owners can flag plugins as deprecated, and provide the npm package id of the plugin. We highly encourage all plugin owners to do so as soon as possible.

As a reminder, here is an example of declaring a cordova plugin from npm in your PGB config.xml:

    <gap:plugin name="phonegap-plugin-barcodescanner" source="npm" version="4.0.2" />

Paid PhoneGap Build users can still submit **private** plugins to Build as before.

As usual, if you have any question, [don't hesitate to ask](http://community.phonegap.com).