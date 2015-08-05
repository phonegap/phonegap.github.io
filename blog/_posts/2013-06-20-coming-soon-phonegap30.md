---
date: 2013-06-20 16:00:03
author: Brian LeRoux
title: "Coming soon! What to expect in PhoneGap 3.0"
tags:
- Framework
- News
---

The team has been hardcore hacking on the future of the mobile web. Our theme this past year has been developer ergonomics, which sounds as comfy as it is. There is a Canadian metric TONNE of new things to be excited about!

**Here's a quick overview of what's new and exciting:**

**Better tools**  
We've made it easier to quickly shift between native platforms without learning new vocabularies by aligning the native platform CLI tooling.

**New platforms**  
Earlier this year we welcomed support for iOS6 (with work on iOS7 happening now!), Windows Phone 8, and BlackBerry 10. Firefox OS and Ubuntu are coming soon.

**New APIs**  
Welcome to two new APIs -- InAppBrowser (formerly known as the ChildBrowser plugin) and Globalization API.

**Streamlined plugin architecture**  
A slimmer Cordova means faster and smaller apps that can be customized more easily.

![](/uploads/blog/2013-06/phonegap-plugins-2.jpg)

**Better Tools: Command Line Interface**

We have aligned all native platform CLI tooling to a common nomenclature. Now you can comfortably shift between Android, iOS, BlackBerry or Windows Phone without learning a whole new vocabulary for common workflows like creating projects, compiling, logging, and kicking up emulators. We’ve taken platform-level tooling and wrapped it in a convenient master executable based on the magical NodeJS, which can be installed with this simple incantation:

**npm install -g cordova**

If you want to get remote building and backup from Creative Cloud you can install the Adobe PhoneGap version which allows for easy interaction with PhoneGap/Build. The PhoneGap distribution is completely compatible with the lower level Apache Cordova so you can use both tools side by side.

**npm install -g phonegap**

*Note: both of these tools are under active development so we appreciate any feedback you have. Remember these are beta!*

**New Platforms**

Mobile is moving fast and you know we have your back. We’ve added support for iOS 6 (iOS 7 is in the works!), Windows Phone 8, and Blackberry 10. We’re also very excited to see that Firefox OS and Ubuntu Phone are not far behind.

**New APIs: InAppBrowser and Globalization**

Spawning browsers from the PhoneGap context is now core supported as InAppBrowser (formerly known as the ChildBrowser plugin). The audience for mobile is global so we now officially support a Globalization API to perform specific operations based on a user’s location and timezone.

**Brand New Plugin Architecture**

![](/uploads/blog/2013-06/cordova_plugin_diagram.png)

One of our goals in 3.0 is a slim core with only the very basic native to web bridge technology. All other APIs are optionally installable. This allows developers to compose a version of PhoneGap suited to their project needs, and enables us to revision APIs independent of the container project. This will make upgrading and extending far easier. Users’ apps will be smaller and faster.

Plugins are installed and removed using a new tool called Plugman. To battle test Plugman for you and ourselves, we’ve broken core into 17 discrete repos.

This means that the current massive community of open source plugins will require refactoring to work with the new tooling and we will be helping our community get there after we ship the 3.x release.

In the future we expect many new APIs from the broader web community. Imagine composing a version of PhoneGap that comes complete with the Chrome Packaged Apps API surface or Firefox OS WebAPIs. This is now possible.

**Existing Projects and Migrations Paths**

We understand and respect that there is a huge community of projects built on PhoneGap 2.0 series and we will continue to support 2.x in a long lived branch. We’re working on getting documentation so that your migration is as painless as possible. We’re going to work with the community to see the plugin ecosystem migrate to the new spec and Plugman. ***We know how important this is to you***.

We are proud to see PhoneGap mature to a global project structure, independently revisioned plugins, now allowing developers the freedom to compose a PhoneGap made of only the APIs needed, and distribute their own native plugins themselves. In this release we are proving the web can be a first class platform on any mobile operating system and we could not be doing this without the support of the thousands of developers in the community. ***Thank you***.


