---
author: Herm Wong
title: "PhoneGap Desktop App 0.2.3"
tags:
- PhoneGap Blog
- Release
- News
---

We had to release an emergency fix with PhoneGap Desktop 0.2.3.

We had an [issue](https://github.com/phonegap/phonegap-app-desktop/issues/553) where PhoneGap Desktop 0.2.2 would not connect properly with the PhoneGap Developer App.

From our investigation it looked like Electron 0.36.0 (used in PhoneGap Desktop 0.2.2) had some type of incompatibility with our code base. We found that Electron 0.35.6 worked fine with the PhoneGap Desktop 0.2.2 code base, so we had to roll back to Electron 0.35.6.

You'll need to manually update to 0.2.3.

## Installation ##

You can install the latest version of the PhoneGap Desktop App from our docs:

- [Install on OS X](http://docs.phonegap.com/references/desktop-app/install/mac/)
- [Install on Windows](http://docs.phonegap.com/references/desktop-app/install/win/)

## What's New ##

For those interested in the full CHANGELOG:

[#549](https://github.com/phonegap/phonegap-app-desktop/issues/549) - update to pgVersion 6.0.0
[#550](https://github.com/phonegap/phonegap-app-desktop/issues/550) - roll back to Electron 0.35.6
[#551](https://github.com/phonegap/phonegap-app-desktop/issues/551) - update to connect-phonegap 0.20.2
[#552](https://github.com/phonegap/phonegap-app-desktop/issues/552) - update .gitignore to include zip files in the installers directory
[#553](https://github.com/phonegap/phonegap-app-desktop/issues/553) - error connecting with PhoneGap Desktop 0.2.2
[#557](https://github.com/phonegap/phonegap-app-desktop/issues/557) - issue connecting from OSX to iPhone
[#558](https://github.com/phonegap/phonegap-app-desktop/issues/558) - PhoneGap Desktop quit unexpectedly when connecting to PhoneGap Developer App

## Getting Involved ##

We would like to thank our users for helping us improve the PhoneGap Desktop App by submitting feedback and issues.

Help us improve by submitting [issues, feature requests and ideas](https://github.com/phonegap/phonegap-app-desktop/issues) or by sending us a [pull request](https://github.com/phonegap/phonegap-app-desktop) to an existing issue.
