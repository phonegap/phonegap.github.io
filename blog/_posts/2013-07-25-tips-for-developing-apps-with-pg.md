---
date: 2013-07-25 00:00:05
author: Amy Benson
title: "Tips for Developing Apps with PhoneGap"
tags:
- Guest Post
- App
---

Oxford and Cambridge Boat Race sponsors, BNY Mellon wanted to craft a [hands-on app](http://whichblueareyou.com/phoneapp) that gave race-goers the chance to feel the thrill and adrenaline of the contest, from the stern of the boat. We selected PhoneGap software to fulfill the brief as the idea of developing once and deploying to multiple platforms is very appealing. And, since we're web developers, HTML, CSS and Javascript are what we know best. There has been a lot of debate recently about using frameworks like PhoneGap versus building native apps, but PhoneGap has worked well for us and I'd happily use it again.

The Which Blue Are You app has now secured over 7,000 downloads and the opportunity for BNY Mellon to capture a number of leads. Get the app for [iOS](https://itunes.apple.com/us/app/boat-race/id606297975?mt=8%26ign-mpt=uo%3D2) or [Android](https://play.google.com/store/apps/details?id=com.inviqa.Rower%26feature=search_result#?t=W251bGwsMSwyLDEsImNvbS5pbnZpcWEuUm93ZXIiXQ..).

![](/uploads/blog/2013-07/wbay-teamselect.jpg)

Building these apps has been a learning process for us so I thought it might be useful to share some of things I’ve learned along the way.

**Test on Real Phones**

In the world of iOS, things aren’t too bad, using Xcode and the iPhone emulator is fairly realistic. Even then however, there may be some nasty surprises if testing on real devices is left to the end of the project. For example, you might find that your animation looks great on the emulator but is painfully slow on an iPhone 3GS. Some features can't be emulated; for example if your app uses the accelerometer then there’s no way to emulate it (you can try shaking your laptop but it won’t get you very far).

When it comes to Android there’s a huge set of different challenges. The emulator is often slow, unresponsive and frequently flaky when using it to run the app with Eclipse. Consequently I used it very rarely for testing. Luckily deploying an app to real devices during development using Eclipse and the Android SDK is straightforward, and unlike iOS there is no requirement to have developer accounts to test your apps.

How does a project decide which devices and versions of Android to test on? There are a plethora of devices out there and the potential combinations of devices and Android versions is huge. It would be impossible to test on all of them, but as a minimum it is best to aim for at least one of each of the main screen sizes, so something fairly old and small like a HTC Wildfire, a medium size one such as a Samsung Galaxy S2, and a large one like a Nexus 4. This only scratches at the surface of the range of devices available, so the best thing to do is agree with the client on which devices and Android versions will be used for testing, and always make sure this includes the phone they use.

![](/uploads/blog/2013-07/wbay-rowing2.jpg)

**CSS3 and HTML5**

One of the nice things about working on mobile apps is that you can use CSS3 and HTML5 without having to worry about providing fallbacks There will be no need for HTML5 shivs, no images pretending to be gradients, or workarounds for Internet Explorer. Sadly that doesn't mean everything will work exactly as you expect, here are a few things that might trip you up:

1. Some CSS3 properties can affect performance, box-shadow is especially bad for this, so if your animations are looking choppy try removing any box-shadows, it may help.

2. 3D CSS3 animations are hardware accelerated, but you can trick it into using hardware acceleration on 2D animations by adding:

	-webkit-transform: translate3d(0,0,0);  
	transform: translate3d(0,0,0);

3. Bear in mind that while many CSS3 properties no longer require prefixes, these may still be needed for earlier versions of Android and iOS. For example box-shadow requires the -webkit prefix in Android up to version 4 and iOS up to version 5. The ever-helpful http://caniuse.com includes mobile browsers in its compatibility tables. It's also worth noting that older versions may use different syntax for background gradients, but generators such as http://www.colorzilla.com can provide these for you.

![](/uploads/blog/2013-07/wbay-menu.jpg)

**jQuery Mobile**

[jQuery mobile](http://jquerymobile.com/) can be very useful and time-saving when developing apps as it’s easy to use and well documented. From a front end point of view the ability to just be able to specify the desired transition directly on a link is great, it looks something like:

	<a href="index.html" data-transition="slidedown">

However, where we found problems was when you need to have more control over the look and feel of your app. On another app we ended up removing jQuery mobile, writing our own page loader and spending time creating and tweaking a flip animation to get it to fit the client’s requirements exactly.

**Handy Tips, or "Things that took far too long to find by Googling"**

Renaming your App:

1. **Android:** Edit the app-name in \[project-folder\]/android/\[project\]/res/values/strings.xml
2. **iOS:** In xCode, select your project under Targets, then in the Info tab update the Bundle display name

Force the phone to show the app in landscape mode:

1. **Android:** In \[project-folder\]/android/\[project\]/AndroidManifest.xml add android:screenOrientation="landscape" to the activity tag
2. **iOS:** In xCode, select your project under Targets, In the Summary tab make sure that either Landscape Right or Landscape Left is selected and the Portrait ones are not selected.

Hide the phone status bar while the app is running:

1. **Android:** In \[project-folder\]/android/\[project\]/res/xml/config.xml add
2. **iOS:** In xCode, select your project under Targets, In the Summary tab select Visibility - Hide during application launch in the Status bar section.

Opening external links in the in-app browser:

Without this a user can click on an external link in your app, and then can’t get back to the app, luckily the current version of PhoneGap comes with InAppBrowser which you can use with the window.open call. For example, you can open a URL using a command like:

	onClick="window.open('http://google.com', '_blank', 'location=yes');"
	
![](/uploads/blog/2013-07/wbay-landingscreen.jpg)

**Developing with PhoneGap**

This has only been a brief overview of the learning process we have been through while developing these apps, but hopefully there will be tips here that are useful to other developers taking their first steps into app development. Using PhoneGap does comes with some limitations, but for our apps it has done the job and for web developers, especially front-end types like me, it’s a good way to get started and begin to learn about app development.

The BNY Mellon Boat Race app is available for [Android](http://play.google.com/store/apps/details?id=com.inviqa.Rower) and for [iPhone](https://itunes.apple.com/us/app/boat-race/id606297975?mt=8%26ign-mpt=uo=2).

*Guest Post by Amy Benson*
*Amy is a front-end developer at [Inviqa](http://inviqa.com/). With several years of web design and development experience, Amy has worked on projects including iPhone and Android apps and responsive eCommerce sites.*
