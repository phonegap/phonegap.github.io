---
author: Ryan Willoughby
title: BarcodeScanner Plugin
date: Wed Oct 24 14:17:40 -0700 2012
permalink: /blog/build/barcodescanner-plugin/
---
We've added support for another plugin to Adobe® PhoneGap™ Build for iOS and Android -- BarcodeScanner. And more are coming!

A single line of JavaScript in your PhoneGap app will launch the scanner, and upon detection of a barcode, control will be passed back to your app, along with the barcode data.
<!-- end-slug -->

As with the [ChildBrowser Plugin](/blog/childbrowser-plugin), this is an [open-source plugin](https://github.com/wildabeast/BarcodeScanner/) originally from the [PhoneGap Plugins repository](https://github.com/phonegap/phonegap-plugins), tweaked to work on our build servers. Kudos to the authors -- check out the Github repository to pay your respects.

For inclusion instructions, check out [the docs](/docs/plugins), and for the full JavaScript API, and a list of the barcode types supported, check out the [source readme](https://github.com/wildabeast/BarcodeScanner/blob/master/README.md). And for a basic demo app, look at and build [https://github.com/wildabeast/BarcodeDemo.git](https://github.com/wildabeast/BarcodeDemo).

We're building out our plugin support based on plugin demand and plugin availability, and for this we lean heavily on our community. Want your plugin on Adobe® PhoneGap™ Build? Read [this guide](https://github.com/phonegap/build/blob/master/Plugins.md). 
