---
title: Introducing PhoneGap Emulation
author: Michael Brooks
tags:
- Tutorial
- Guide
---

At [PhoneGap Day US 2012][1], [Dan Silivestru][2] [spoke about the Ripple Emulator][5]
and proudly announced [emulate.phonegap.com][6].

## About

Debugging a mobile web application is not easy and a PhoneGap application is
even more difficult. [PhoneGap Debug][7] uses [Apache Cordova's Weinre][8] to
help you inspect the DOM and JavaScript of your PhoneGap app. However, it's also
helpful to test your application _before_ deploying to a device. You can accomplish
this on your desktop browser, which offers a richer set of debugging tools,
such as [Chrome's Developer Tools][9].

This is where [PhoneGap Emulation][6] steps-in. With your Google Chrome desktop
browser, you can emulate PhoneGap's JavaScript APIs. This includes everything
from the `deviceready` event to `navigator.device.capture` to your custom plugins.
By leveraging your desktop browser, you can speed up your initial development
process and quickly debug the DOM, JavaScript, and resource loading.

It's important to understand that [PhoneGap Emulation][6] only applies to JavaScript.
While the emulator will use a device skin, it cannot emulate the rendering capabilities
of a specific mobile platform browser.

## Powered by the Ripple Emulator

Under the hood, [PhoneGap Emulation][6] is powered by [BlackBerry's Ripple Emulator][10].
The emulator was originally created by the folks at [TinyHippos][4] and is now
part of the [BlackBerry WebWorks SDK][3]. This is a powerful open source tool
that the PhoneGap team feels is unutilized in the world of mobile web development.

## Requirements

[PhoneGap Emulation][6] has two requirements: [Google Chrome][11] and the
[Ripple Emulator Extension][10].

While it would be nice to remove both of these requirements, we're not there yet.
On the upside, Google Chrome has some of the best [developer tools][9] around,
including [Touch Event Emulation][12], and a rapid update cycle that continues
to add modern features, such as the [File System][13].

## Usage

There are two ways to use [PhoneGap Emulation][6]: Web Interface or API.

### Web Interface

Browse to [emulate.phonegap.com][6] and enter the URL to emulate.

You can emulate any URL that is accessible from your computer, including `localhost`
and intranet addresses.

### Web API

Automatically invoke Ripple by making a request with the query-string parameters.

Example: [http://emulate.phonegap.com?phonegap.com][14]

## How to Contribute

Both [PhoneGap Emulation][6] and the [Ripple Emulator][10] are open sourced and
available on GitHub. Please fork, submit issues, and send pull requests!

### Source code for emulate.phonegap.com

[https://github.com/phonegap/emulate.phonegap.com][15]

### Source code for the Ripple Emulator

[https://github.com/blackberry/Ripple-UI][16]

[1]:  http://pgday.phonegap.com/us2012/
[2]:  https://twitter.com/confusement/
[3]:  https://developer.blackberry.com/html5/
[4]:  http://tinyhippos.com/
[5]:  http://dansilivestru.github.com/phonegap-day-slides/#/
[6]:  http://emulate.phonegap.com/
[7]:  http://debug.phonegap.com/
[8]:  http://people.apache.org/~pmuellr/weinre/docs/latest/
[9]:  https://developers.google.com/chrome-developer-tools/docs/overview/
[10]: https://chrome.google.com/webstore/detail/geelfhphabnejjhdalkjhgipohgpdnoc/
[11]: http://google.com/chrome
[12]: http://googledevelopers.blogspot.ca/2012/04/fridaygram-chrome-tools-goldberg.html
[13]: http://www.html5rocks.com/en/tutorials/file/filesystem/
[14]: http://emulate.phonegap.com?phonegap.com
[15]: https://github.com/phonegap/emulate.phonegap.com
[16]: https://github.com/blackberry/Ripple-UI

