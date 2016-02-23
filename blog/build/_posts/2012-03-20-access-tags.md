---
tags:
- PhoneGap Build
author: Andrew Lunny
title: Access Tags
date: Tue Mar 20 16:12:16 -0700 2012
permalink: /blog/build/introducing-windows-phone-7-builds/
---
There's been some confusion over the behavior of external links in PhoneGap™ (and Adobe® PhoneGap™ Build) apps lately - when you click on a link, should it take over your entire app? Or should it open in the device's browser?

This is a bit of a tricky issue due to PhoneGap's use of a whitelist for allowed domains - developers need to explicitly allow any domains from which resources can be loaded. In theory, this is a good idea; however, the PhoneGap/Apache Cordova implementations have to deal with the webviews provided by native SDKs, and the control the open source project has over these webviews varies greatly from platform to platform.

On PhoneGap Build, we've tried to mitigate this by setting the default whitelist on each platform that supports one (Android, iOS, and BlackBerry) to a wildcard. The thinking is that this allows developers to access external resources without issue. However, inconsistencies from platform to platform make this an unrealistic goal. More specifically, what the whitelist does varies from platform to platform.

<!-- end-slug -->

The table below covers the simplest case - you want your app to open a web page in the device's browser. This is trickier than expected to achieve. In the table, __browser__ indicates that the page opens in the device's browser, while __webview__ indicates that it opens in the app's webview (taking over the entire app). __nothing__ means it does nothing visible to the user, while __prompt__, just on BlackBerry, notifies the user that an unlisted domain is attempting to be opened.

![](/uploads/blog/build/access_table.png)

Note: if this is your actual use case, you may well want to use the [ChildBrowser plugin](/docs/plugins) instead. But anyhow, to summarize:

* on Android, if a domain is whitelisted, a link will take over the entire webview. If it is not, it will open in the browser.
* on iOS, if a domain is whitelisted, a link will take over the entire webview, unless the link's target is _&#95;blank_, in which case it will open in the browser. If it is not, it will log an error on the device, while doing nothing from the user's perspective.
* on BlackBerry, if a domain is whitelisted, a link will take over the entire webview. If it is not, it will prompt the user that an unlisted domain is being linked to.

If you want a link to open in the device's browser (using PhoneGap 1.5.0):

* on Android, don't list the domain in the whitelist
* on iOS, list the domain in the whitelist, and then use _target="&#95;blank"_
* on BlackBerry, use a [BlackBerry-specific API](https://bdsc.webapps.blackberry.com/html5/apis/blackberry.invoke.BrowserArguments.html)

Ignoring BlackBerry for the moment, this meant that PhoneGap Build's defaults would open pages in the webview on Android, but (with the right target) in the browser on iOS.

Because of this, we're making a couple of changes to how things work:

* the defaults for iOS and BlackBerry will be unchanged
* Android will now, by default, only whitelist the local domain (used by PhoneGap itself)
* more granular controls will be provided by the use of `<access>` tags in your `config.xml` file - [more details are available](/docs/config-xml)
