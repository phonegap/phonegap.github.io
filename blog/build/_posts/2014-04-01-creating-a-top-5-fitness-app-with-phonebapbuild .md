---
date: 2014-04-01 23:40:04
author: Matthew Netkow
title: "Creating a Top 5 Fitness App with PhoneGap Build"
category: build
tags:
- Guest Post
- PhoneGap Build
---

Fitbit creates wireless activity trackers that empower people to live healthier lives. My new mobile app, Fitwatchr, allows Fitbit users to combine their daily calorie tracking features with scientific formulas, motivating them to lose weight, earn extra calories, and achieve their weight loss goals. It is available on [iOS](http://appstore.com/fitwatchr) and [Android](https://play.google.com/store/apps/details?id=com.netkow.fitwatchr).
 
![](/uploads/blog/2014-04/fitwatchr.png)
 
I had the idea for Fitwatchr almost immediately after receiving a Fitbit device last summer. Having begun a weight loss program around the same time, I recognized that the Fitbit activity and calorie data could be used to complement it in a unique way. In order to reach a large user base, I decided to target both iOS and Android. There was a problem, though. While I had done some Android development in the past, I had no experience with iOS/Objective-C. While I was certainly capable of investing the time to learn Objective-C, I wondered if there was a more efficient route. I had heard of PhoneGap before and decided to investigate; the idea of reusing my web development skills was very appealing. I was initially skeptical of the “write once, run everywhere” mantra, but soon after exploring PhoneGap and the companion [Build service](http://build.phonegap.com), I was convinced.

![](/uploads/blog/2014-04/fitwatchr_1.jpg)
 
The [PhoneGap Build service](http://build.phonegap.com) was a huge help as I built out the app. Using the following core Build features, Fitwatchr was able to successfully become a Top 5 Health & Fitness app on iOS.
 
**Plugins**  
As I began to plan the first version of Fitwatchr, I realized that I would need some way to implement an OAuth 2.0 flow for allowing users to connect their Fitbit account to my app. I was concerned until I realized that PhoneGap Build provides plugins that anyone can leverage to add native functionality to their apps. The list of available plugins is [very impressive and expanding rapidly](https://build.phonegap.com/plugins). From barcode scanning to bluetooth and power management, virtually any native need is now available. Additionally, developers can submit their own plugins to be listed and shared with others.
 
Plugin use is straightforward, providing JavaScript hooks that are consistently well documented. The PhoneGap [Child Browser plugin](https://build.phonegap.com/plugins/2) was utilized to implement the OAuth feature in Fitwatchr, while the Adobe [Google Analytics plugin](https://build.phonegap.com/plugins/156) anonymously tracked how users utilized different features, a crucial tool for continued app development. 
 
**Hydration**  
One of the greatest aspects of PhoneGap web development is the ability to run an app locally in the browser, permitting fast iterations. PhoneGap Build’s Hydration capabilities further improve development speed by automatically uploading the latest build to installed devices. This is especially useful when multiple end users are involved with testing; the developer uploads the latest code, the tester is notified, and the changes are applied immediately. I leveraged Hydration primarily for testing the PhoneGap plugins. Since they must run on a device, Hydration was invaluable when debugging issues or testing new features.
 
**Remote debugging**  
I incorporated plugins into the app and used Hydration to quickly push updates to my test mobile device, but there was still one problem: fixing issues that only appeared on the device. Fortunately, remote debugging allows you to review the app while it is running in real-time. After enabling a debug setting and launching the debug web page from within PhoneGap Build, all you have to do is open the app on the mobile device and select the device name on the page.
 
With the device connected, you can now see the app’s full DOM tree and JavaScript code. I used the Resources tab often to inspect the internal state of the app, since I used localStorage for caching various data. Additionally, you can check sessionStorage or cookies. I consider the most useful feature the Console window, which acts exactly as it does in major browsers, displaying log messages and allowing you to run ad-hoc JavaScript directly. Rather than incorporating large amounts of alert statements, I used console logging to pinpoint exactly where my plugin issues were.

![](/uploads/blog/2014-04/fitwatchr_2.jpg)
 
Using these three key features of the PhoneGap Build service, I created an initial version of Fitwatchr within a few months of nights and weekends. I partnered up with David Lapekas, the Creative Director at [UNIVERSALD INC.](http://www.universald.com/), to help with the first phase of branding, website development, and social media marketing. We have a great foundation that we are continuing to build on, with 3,000 users and counting. In future releases, we plan to add new features and continue to refine the user experience. Phase 2, which includes a mobile UI redesign, is currently in progress; we are looking forward to this next big release!
 
*Guest blog post by Matt Netkow, Senior Developer for [The SAVO Group](http://www.savogroup.com/)*  
Based in Chicago, he does sales productivity consulting at SAVO and works on mobile development projects in his spare time through his company, [Netkosoft](http://www.netkosoft.com).



