---
date: 2014-12-09 13:00:03
author: Brett Rudd @brettrudd
title: "New PhoneGap Build Features: new app size limits, support for external plugins, and more!"
category: build
tags:
- PhoneGap Build Blog
---

The PhoneGap Build team is excited to announce some big changes all designed to make your dev life easier. Say goodbye to plugin restrictions and no more waiting for reviews and approvals. 

## Changes

New features:

1. New application size limits
1. Support for plugins from the Official Cordova Plugin Repository - plugins.cordova.io
1. Plugins no longer must be reviewed and approved
1. Plugins can now contain pre-compiled binaries and aren't required to be open source licensed.
1. Plugins can be uploaded privately to your account so only you can use them in your own applications

#### New App Size Limits

We are increasing our app upload size limits! The new limits are 50MB for free tier users, 100MB for standalone users and 1GB for Creative Cloud subscribers.

#### Support For External Plugin Registries

In addition to the over 600 plugins currently available on PhoneGap Build we are now allowing users to use plugins from the Ofiicial Cordova Plugin Repository (http://plugins.cordova.io).  This includes access to cordova core plugins the minute they are released!

To enable this new support we are adding an optional `source` attribute to the `gap:plugin` element.   At the moment the value of this attribute can only be `plugins.cordova.io` or `pgb`. An example is below:

    <gap:plugin name="com.phonegap.plugins.example" version="0.3.3" source="plugins.cordova.io" />

To specify a PhoneGap Build plugin you can omit this attribute, or specify `pgb` as the value of the attribute.

    <gap:plugin name="com.phonegap.plugins.example" version="0.3.3" source="pgb" />

As plugins default to our own local repository no changes to any existing applications will need to be made.

#### No Reviewing Process

Plugins uploaded to our repository will no longer be required to be reviewed and approved before use.
This means once uploaded the plugin will be able to be used immediately.

#### Plugins Can Contain Compiled Binaries And Don't Have To Be Open Source

Plugins can now contain compiled binaries such as .jar, .a frameworks etc.

Plugins are also not restricted to only open source licenses.

#### Private Plugins

Plugins can now be uploaded privately for only your use. Private plugins can only be used by you and will not show up in the public plugin list.

Read the full documentation for plugins [here](http://docs.build.phonegap.com/en_US/configuring_plugins.md.html#Plugins)
