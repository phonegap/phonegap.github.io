---
tags:
- PhoneGap Build
author: Hardeep Shoker
title: Enhanced Icon and Splash Support
date: Mon Apr 30 16:11:31 -0700 2012
permalink: /blog/build/enhanced-icon-and-splash-support/
---
We've recently had a lot of discussion with users about icons and splash screens
and how they make their way into apps. After some feeback we've revamped our
icon and splash screen handling to provide a more consistent and expressive
interface.

__Please note that you may need to update your config.xml file to continue having
icon and splash support.__

<!-- end-slug -->

Previously, we filtered icons and splash screen based on height and width
properties provided in the config.xml file. However, we found that this method
was error-prone, inconsistent, and confusing.
caused confusion, inconsistency, and was error prone.

We now support some new attributes on icon and splash screen tags, that
correspond to how these images are used in the generated apps. These attributes
are:

* `gap:platform`
* `gap:density`
* `gap:role`
* `gap:state`

For more infomation on how to use these new attributes have a look at our
updated config.xml documentation:

[Icons using a config.xml](https://build.phonegap.com/docs/config-xml#icons)

[Splash screens using a config.xml](https://build.phonegap.com/docs/config-xml#splashes)

We also have a sample application you can try, that defines icon and splash
screen configuration for almost every platform:

[Icon/Splash Demo App](https://github.com/hardeep/pgbuild-app)

Once again, these changes are not backwards-compatible with our previous
interface. Please update your `config.xml` accordingly.

If you have any questions or comments about these changes, feel free to ask
them on our [community support page](http://community.phonegap.com/nitobi)
