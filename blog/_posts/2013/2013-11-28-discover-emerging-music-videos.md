---
date: 2013-11-28 12:00:05
author: Mark Wheeler
title: "Discover Emerging Music Videos with PhoneGap"
tags:
- Guest Post
---


**A bit of background on Rormix**

[Rormix](http://rormix.com) is a platform for discovering emerging music videos. Music videos are tagged by genre and related commercial artists, making it easier to find new music videos that you like.

The Rormix app was made using PhoneGap and released on [iOS](https://itunes.apple.com/app/rormix-discover-emerging-music/id700740840?ls=1%26mt=8) and [Android](https://play.google.com/store/apps/details?id=com.rormix). Development took just over a month from the first line of code, to the app submissions in the app stores.

Listed below are a few things we learnt along the way:

**Develop for Android first then port to iOS**

If you plan on making an app for both Android and iOS, develop the app on Android first. You will have to keep in mind different screen sizes, and the code you write will work on the (currently) fixed screen size of iOS without any modifications. The performance of the Android web-view is not as good as iOS, so if your app works comfortably on Android then it will work fine in iOS.

One of the major differences between Android and iOS, is that Android users make heavy use of the built in "back button" that is present on all Android devices. Make sure your app can handle going backwards in state, or at least close the app at the appropriate moment.

**Use FastClick**

As soon as you start to use PhoneGap you will notice a lag between clicking an object and the associated event firing. This is because web-views wait to see if the user has double-clicked before firing the event. To get around this you can either fire events on “touch-down” or use the library FastClick ([https://github.com/ftlabs/fastclick](https://github.com/ftlabs/fastclick)) which replaces all "clicks" with "touch-down" events for you.

**Scrolling**

The main body of an app scrolls just like a web page would, but problems come when you want to have a smaller scroll window inside the main window. The usual tricks of overflows or iframes don't work here. Manual scroll libraries exist but beware the performance hit.

**Animations**

If in doubt, avoid animations. But if they're a must, use 3D hardware accelerated functions and CSS transitions to get the best performance. If all else fails, make the animations short and sweet.

**Plugins**

Plugins are where PhoneGap excels. Web-views can't do everything, and the ease of switching to native code (and back again) to get the job done is PhoneGap's greatest strength. A wealth of pre-made plugins are available; an essential plugin is for native dialogue boxes, to replace the JavaScript ones.

**Localisation**

If you are thinking about releasing your app in multiple countries you need to think about localisation from the beginning. PhoneGap does not provide a built in mechanism for this, instead simply giving you access to the country/language information for the current device.

There are a few ways you can implement localisation, but remember when designing your app, some words in some languages are a lot longer than in English!

**Software keyboards**

If your interface accepts user input, test the design thoroughly, as some OS's move the content on the app to make room for the keyboard, or might behave differently for fixed or relatively positioned elements.

**Test in all environments** 

Even if your app is designed for phones, test to see if the app still functions properly on tablets, as this is a requirement of some app stores.

**Designing for the device**

![](/uploads/blog/2013-11/1-freshmusic.jpg)

The designs for iOS and Android are slightly different. Alot of Android users stick to the default "Holo Dark" theme that ships with Android, so we changed the design to suit the platform.

Another small difference is the font face. Android uses a default font called "Roboto" which can be downloaded from the Android website: [https://developer.android.com/design/style/typography.html](https://developer.android.com/design/style/typography.html).  Using this font makes the app appear more native.

![](/uploads/blog/2013-11/2-discover.jpg)
                          
**Summary**

When developing apps in PhoneGap remember that you are basically designing a website, and unfortunately you inherit all the problems and frustrations that web browsers have. One upside is that smart phones are modern enough to support HTML5 and CSS3, so you can assume a certain level of compliance and also support a large number of devices.

Web niggles aside, it is really easy to get a PhoneGap app up a running in multiple environments, and is a must for rapid prototyping. Apps are becoming more and more important for businesses, and PhoneGap is the perfect way to reduce code management,time and money spent, developing cross platform apps.

**Rormix Biography**

Founded in September 2013 in Manchester UK  
App released in October on iOS and Android  
5000 downloads to-date without any investment  
Downloaded in over 100 countries  
Team of five music enthusiasts

**Further Reading**

[Android style guidelines](https://developer.android.com/design/style/index.html)

[Optimizing Web Content in UIWebViews and Websites on iOS](https://developer.apple.com/videos/wwdc/2012/?id=601)
