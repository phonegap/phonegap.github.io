---
tags:
- PhoneGap Build
author: Andrew Lunny
title: ChildBrowser Plugin
date: Tue Feb 21 12:31:00 -0800 2012
permalink: /blog/build/childbrowser-plugin/
---

One of most highly demanded features on Adobe® PhoneGap™ Build has been support for PhoneGap Plugins, so we're happy to announce official support for the popular ChildBrowser plugin for Android and iOS - more details can be found in [the docs](/docs/plugins).

We're going to be ramping forward on support for other plugins in the coming weeks - we've made some big changes internally to support this stuff, so hopefully we can iterate faster on making more plugins available, and allowing the community to contribute extra plugins as needed.

And of course, we've been trying to do this all open source...

<!-- end-slug -->

We're using a slightly modified version of the older ChildBrowser plugin - our version is on [GitHub](https://github.com/alunny/ChildBrowser) - that smooths over some of the cross-platform inconsistencies. It also includes a `plugin.xml` file that defines some metadata about the project, so our tools can do the automated installation of the plugin into a native project.

The tool we're using currently - [pluginstall](https://github.com/alunny/pluginstall) is also open source - it uses Node.js to mess around with the filesystem, based on the `plugin.xml` file, and install the new plugin in your project. If you're curious about using `pluginstall` locally, check out [my quick screencast](http://youtu.be/HOs9nuzhxR4).

All of this stuff is in flux, and we're happy to have feedback and contributions from the community - pleases let us know what you think on [Get Satisfaction](http://community.phonegap.com) and [Twitter](http://twitter.com/PhoneGapBuild).
