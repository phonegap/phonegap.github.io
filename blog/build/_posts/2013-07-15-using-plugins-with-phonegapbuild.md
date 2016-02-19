---
date: 2013-07-15 12:40:02
author: Mike Harris
title: "Using Plugins with PhoneGap Build"
category: build
---

In the near future, we will be releasing a new feature that allows users to submit online their own plugins to PhoneGap Build. These submitted plugins will be available for the whole community to use. 

To support this we have had to change the way that an application includes a Plugin in the [config.xml](https://build.phonegap.com/docs/config.xml). 

Specifically the Plugin ID must be used as the value in &lt;gap:plugin> tag. This change is necessary as it prevents name collisions allowing multiple plugins to have the same name.

Current plugins supported by Build will now need to be referenced as follows:

##BarcodeScanner:

    <gap:plugin name="com.phonegap.plugins.barcodescanner" />

##Anaytics:

    <gap:plugin name="com.adobe.plugins.gaplugin" />

##GenericPush:

    <gap:plugin name="com.adobe.plugins.pushplugin" />

##FaceBook Connect:

    <gap:plugin name="com.phonegap.plugins.facebookconnect" />


## For all new applications

This change is effective today (July 15, 2013) 

## For applications created before today

PhoneGap Build will continue to build applications usign the Plugin Name rather than the Plugin ID. We recommend moving over to used this new reference as soon as possible. 

More details about the current supported PhoneGap Build plugins can be found [here](https://build.phonegap.com/docs/plugins-using)

If you have any questions regarding this change please head over to our [Support Community](http://community.phonegap.com/) where we'll be more than glad to help.
