---
date: 2014-04-11 16:20:04
author: Brett Rudd
title: "PhoneGap Build Adds Some New Features!"
category: build
---

Hi. I'm Brett (@brettrudd) from the build team and i'm happy to announce a few new features that have been deployed to build in the last week.

<!-- end-slug -->
##Android Resource Qualifiers


We have now added full support for Android resource qualifiers in config.xml. Shut up and show me code:

    <gap:splash src="splash-xlarge-portrait.png" gap:qualifier="port-xhdpi">
    <gap:splash src="splash-xlarge-landscape.png" gap:qualifier="land-xhdpi">
    <icon src="icon-xlarge-english.png" gap:qualifier="en-xhdpi">
    <icon src="icon-xlarge-french.png" gap:qualifier="fr-xhdpi">
    <icon src="icon.png" gap:qualifier="">

The above config.xml will generate the following structure inside the Android res folder:

    res/
      drawable  
        icon.png
      drawable-port-xhdpi/  
        splash.png  
      drawable-land-xhdpi/  
        splash.png  
      drawable-en-xhdpi/  
        icon.png  
      drawable-fr-xhdpi/
        icon.png

That's right! You now have full control of Android resource qualifiers for splashscreens and icons. The Android documentation has a full
list of [configuration qualifier names](http://developer.android.com/guide/topics/resources/providing-resources.html). Take note of the rule that qualifiers should be entered
in the same order as they are in that table-2.

All existing attributes are still supported, but consider this the **recommended** option over the current `gap:density` attribute.  We think the added flexibility and reliability plus open-ended support of future qualifiers make this the way to go.

##.pgbomit


Build currently includes all uploaded assets in the app package for every platform, **unnecessarily** increasing each platforms package size. This can include splashscreens and icons (even ones not applicable to a certain platform), temp directories, mockups, intermediate build directories, bower sources etc.

So because `.gitignore` functionality is too useful and full-featured, we have decided to add support for `.pgbomit`.

`.pgbomit` is a file that you can create and add to a directory that signifies to PhoneGap Build that it SHOULD NOT include the contents of that directory in the app package. This folder can be used to store any files needed during the PhoneGap Build process **up to the compile step**.

A typical use case is for a directory containing the icons and splashcreens for an app. Place `.pgbomit` in that directory and none of those files/directories will be included in the binary app package, except those copied and used for icons and splashscreens for only the specific platform.
