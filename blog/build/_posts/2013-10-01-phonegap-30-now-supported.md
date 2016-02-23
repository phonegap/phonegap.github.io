---
tags:
- PhoneGap Build
date: 2013-10-01 12:00:03
author: Ryan Stewart
title: "PhoneGap 3.0 Now Supported in PhoneGap Build"
category: build
---
tags:
- PhoneGap Build

PhoneGap 3.0 is now available as a build target in PhoneGap Build! You can start using 3.0 by specifying it in your config.xml file by using the `phonegap-version` preference:

`<preference name="phonegap-version" value="3.0.0" />`

Currently the supported platforms in PhoneGap Build for 3.0 are iOS and
Android. Keep in mind that not all user-submitted plugins will work because not all of them have been updated to support 3.0.

There have also been a lot of changes between Cordova 2.9 and 3.0 that
you'll need to be aware of when you create 3.0 applications. The core
features (camera, geolocation, etc) have all been moved into a plugin
architecture. The benefit is that you no longer need to include the
libraries that supports camera if your application doesn't use it. But it
also means you'll need to specifically add the those core plugins to your
project when doing local development. Luckily PhoneGap Build makes this
easy.

There is a [new tab](https://build.phonegap.com/plugins/core) under the
Plugins page which shows a list of all the core plugins available.
Clicking on one of those plugins shows information on how to use it in
your project. For instance for
[Camera](https://build.phonegap.com/plugins/XXX)  you need to add the
following line to your config.xml project:

`<gap:plugin name="org.apache.cordova.core.camera" />`

PhoneGap Build will then take care of making sure your iOS and Android
versions are set up to use the Camera APIs. The team [has an example
project with Camera
support](https://github.com/phonegap-build/pgb-example-camera) that you
can use to see how your config files should be set up.

###Config.xml changes

There have also been some improvements to config.xml. You can now specify
which platforms to have PhoneGap Build package for you by using the
`<gap:platform />` tag. PhoneGap Build also now supports all of the
possible preference options available in the PhoneGap config.xml file. You
can find out more about those [on the
docs](http://docs.phonegap.com/en/3.0.0/config_ref_index.md.html#Configurat
ion%20Reference) by clicking on the specific platform for details.

###Bugs and other Fixes
In addition to 3.0 support the team has fixed a number of issues:

* [co.uk domain whitelist parsed
incorrectly](https://github.com/phonegap/build/issues/143)
* [Subdomains set to true in access config not working on
Android](https://github.com/phonegap/build/issues/156)
* [HTML5 video cannot be
played](https://github.com/phonegap/build/issues/185)
* [PhoneGap won't work with Nexus 7
camera](https://github.com/phonegap/build/issues/90)

###The Future

The team is hard at work implementing Windows Phone 8 support which will
be part of our next big release. In addition the team has also already started working on supporting 3.1.0 which supports iOS 7. We'll be posting more about both of those soon.

Be sure to let us know about any issues you encounter by posting to the
[Get Satisfaction
forums](http://community.phonegap.com/nitobi/products/nitobi_phonegap_build
).

