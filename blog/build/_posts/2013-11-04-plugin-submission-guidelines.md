---
tags:
- PhoneGap Build
date: 2013-11-04 14:40:02
author: Ryan Stewart
title: "Plugin Submission Guidelines"
category: build
tags:
- PhoneGap Build
- Plugin
---

One of the new features that's been added to PhoneGap Build in the past couple of months is the ability to submit custom [PhoneGap plugins](https://build.phonegap.com/plugins/) that you and others can use within PhoneGap Build projects. Once a plugin is submitted and approved, it becomes available to everyone using PhoneGap Build. For security and legal reasons, every plugin must adhere to specific standards and is hand-tested by the engineering team before it's approved and available to use in PhoneGap Build projects. We currently have over 30 user-submitted plugins available in PhoneGap Build.

When submitting a plugin there are some things to keep in mind about the approval process:

- Any application that contains binary libraries will be rejected. This is because we need to be able to see exactly what is in a plugin as part of our code review process. So when submitting a plugin make sure that it doesn't contain binary libraries.
- Submitted plugins must be open sourced under either [MIT](http://opensource.org/licenses/MIT) or [Apache 2](http://www.apache.org/licenses/LICENSE-2.0.html) licenses. Because we are distributing the code, we need the submitted plugins to adhere to one of those two open source licences. 
- Currently plugins are limited to 15 megs in size.
- Adobe has some plugins that we offer as part of the PhoneGap Build service like the [Facebook Plugin](https://build.phonegap.com/plugins/257) or the [Google Analytics](https://build.phonegap.com/plugins/262) plugins. These plugins have a specific naming scheme.
  - You _can_ use `com.mycompany.phonegap` in your plugin name but `com.phonegap.xxxx.yyyyy` is reserved for official plugins and your plugin will be rejected if you use that naming scheme.
  - You can't use Adobe anywhere in the plugin name
- You can specify which version of Cordova/PhoneGap your plugin is for (e.g., 2.9, 3.0, 3.1, etc) as well as which platform(s) (e.g., iOS, Android, etc). If you don't specify that, it will be tested against all versions and will be rejected if it fails for any version currently supported by PhoneGap Build. You can see a list of supported versions [here](https://build.phonegap.com/docs/config-xml#preferences).
- We build a test app for each plugin submitted. If the build fails, we'll send you the error and reject the app. Check the error, fix it, and resubmit. 

- We also load the test application on a device to be sure the application runs. If it doesn't, the plugin will be rejected. Double check that a basic app still runs with the plugin and resubmit. During this step we don't test functionality of the plugin, we just make sure the plugin doesn't cause the app to crash. 

This process is in place so that we can be sure that other users of the plugins have a good experience when using submitted plugins in their own applications. In general we hope to review plugins within **5 days** of being submitted, but that's not always possible. 

Hopefully that provides some insight into our approval process. 


