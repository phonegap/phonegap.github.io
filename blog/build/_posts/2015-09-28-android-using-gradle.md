---
date: 2015-09-28 17:00:03
author: brettrudd
title: "Android Builds Now Using Gradle By Default"
category: build
---

All android builds using any PhoneGap version above 4.0.0 will now use [Gradle](http://www.gradle.org) by default. For **most** users this change will not have an effect. Users who know what this change means and realise the flexibility it provides to plugin authors and users will most likely dance.

### Rationale

The main reasons behind changing the default build tool is:
* user feedback
* plugins depending on gradle are failing on PhoneGap Build
* gradle offers more flexibility and options for plugin authors and users
* the local Cordova / PhoneGap CLI defaults to gradle

### Do I have to Do Anything?

There are a few issues that may require user action, they are minimal and relate to extended validation at build time:
* **minSdkVersion** is now enforced on all libraries (typically included as part of a plugin). This means the minSdkVersion of your application, as set in your config.xml or the default (**14** for phonegap 4.x.x), must be greater or equal to any Libraries included in the application. The plugin / library that specifies a higher minSdkVersion should be included as part of the error message. If not please view the build log.
* **9-patch images** will now be validated and will cause a failed build if they are invalid. Documentation on 9-patch images is [here](http://developer.android.com/guide/topics/graphics/2d-graphics.html#nine-patch). To verify your 9-patch images if they fail validation you can download and use the [9-patch drawing tool](http://developer.android.com/tools/help/draw9patch.html) available in the android-sdk or android studio. The build logs will mention the exact validation error in your image.

### Things Ant What They Used To Be

As all build tools have their quirks we are adding a preference to override this default.  To use Ant instead of Gradle you can add this to your config.xml:

    <preference name="android-build-tool" value="ant" />

### What?

As usual, if you have any questions, <a href="https://community.phonegap.com">don't hesitate to post to the community forum</a>.
