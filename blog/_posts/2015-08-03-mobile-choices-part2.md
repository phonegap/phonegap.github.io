---
date: 2015-08-03 08:00:02
author: Holly Schinsky
title: "Choosing a Mobile Strategy: Part 2 "
tags:
- Guide
---

This post is part 2 of a series on choosing a mobile strategy. [Part 1](http://phonegap.com/blog/2015/03/12/mobile-choices-post1) focused on providing a general overview of the approaches available and highlighted important characteristics of each. 

<div style="float:right"><a href="http://sworkit.com/"><img src="/uploads/blog/2015-07/sworkit-ex.png"/></a></div>

In this post we'll cover more specific factors to consider when making your decision. We'll also dig deeper into the ***native hybrid*** approach introduced in part 1 since it's used in several  [popular apps](http://kennethormandy.com/journal/your-favourite-app-isnt-native) you may not be aware of and shows that it's not a one-size-fits-all solution. You can choose to use the right balance of native and webview controls that work best for *your* app. 

## Factors to Consider
First let's frame this discussion with a look at some important factors to consider when choosing between a native or hybrid approach. For the purposes of this post (and since you are here on the PhoneGap website specifically), we'll assume you're looking to build a cross platform app that uses native device features, can handle offline situations and be distributed via an app marketplace versus consumed directly in the device browser. 

1. **Performance:**  First consider if your app will need to rely on heavy graphics or animation. 
	
	- Yes? Then a native approach makes the most sense for this type of app. 
	- If the answer is no however, don't discount the hybrid approach. In the past apps built with HTML5 have received [a lot of criticism](http://techcrunch.com/2012/09/11/mark-zuckerberg-our-biggest-mistake-with-mobile-was-betting-too-much-on-html5/) in the area of performance, and there are plenty of poorly built apps that have perpetuated this [misguided assumption](http://sintaxi.com/you-half-assed-it). If you develop your hybrid app with performance in mind using proven best practices then this factor should not be your primary concern. The quality of hybrid apps is increasing rapidly as developers gain more knowledge and experience on exactly ***how*** to build for performance. The arrival of frameworks like [Ionic](http://ionicframework.com) have also made a huge impact on helping developers build high-performance, polished apps quickly by handling the [low-level performance concerns] (https://medium.com/@maxlynch/the-web-is-too-low-level-7a4ea4933366) for you.
    
2. **Budget / Time:** If you're working around budget and time constraints, a hybrid approach has the advantage of saving you from having to find and pay multiple developers possessing the skill sets needed to support all of the native platforms you're targeting. If you chose a native approach, you'd also have to ensure each developer implements the app requirements in a similar fashion and that each platform is tested, updated and maintained going forward. If cost and time is of concern then this should be a primary factor to focus on. 
	
3. **App Updates:** 
	Dealing with a lot of app updates can be annoying from both a developer and a consumer perspective. As a developer you have to deal with lengthy app store approval processes (sometimes only to receive a rejection) and as a consumer you don't want to constantly be bothered to update your app. Apps containing a web view by nature have the benefit of showing the latest up to date information. However, hybrid apps also have the benefit of receiving over the air updates outside the app store based on section 3.3.2 of [Apple's Developer Agreement:](https://developer.apple.com/programs/ios/information/iOS_Program_Information_4_3_15.pdf)
	> An Application may not download or install executable code. Interpreted
	>code may only be used in an Application if all scripts, code and interpreters are
	>packaged in the Application and not downloaded. The only exception to the
	>foregoing is scripts and code downloaded and run by Apple's built-in WebKit
	>framework or JavascriptCore, provided that such scripts and code do not change
	>the primary purpose of the Application by providing features or functionality that are
	>inconsistent with the intended and advertised purpose of the Application as
	>submitted to the App Store.	
	
4. **Existing Web App:**
	If you have an existing web app, you should determine if there's an opportunity for any code reuse. Also, in this case it's likely you have access to web developers that could be leveraged in your move to mobile and are already familiar with your business and app requirements.	

## Finding the Optimal Solution
As a quick refresher from [part 1](http://phonegap.com/blog/2015/03/12/mobile-choices-post1), we used the term *native hybrid* to describe mobile apps built using a blend of native controls and one or more embedded webviews. This was mainly to differentiate it from a hybrid app built with a single webview wrapped in a thin native layer for providing the bridge of communication (like a traditional PhoneGap app). 

The popular apps using the native+embedded approach often use pure native controls (those found in the iOS/Androiid or Win SDK) to provide the navigation and page transitions and embed the main content in webviews to get the advantages of both. There are plenty of ways you could implement a mixed approach, however. The main takeaway here is that it's possible to find a mix that allows you to leverage the hybrid advantages mentioned above over going strictly native.

Below are screenshots from Zillow's mobile app for iOS. Take a look at [this in-depth article from their engineering team](https://engineering.zillow.com/high-performance-embedded-webviews-in-mobile-apps/) explaining their approach.

![](/uploads/blog/2015-07/zillow2.png)


## How do I get started?
The PhoneGap team has been looking at how we can help developers get started creating this embedded webviews type of app more easily. We recently posted [two new tutorials](http://docs.phonegap.com/develop/1-embed-webview/ios) to our docs site which also include sample reference apps you can download and try. These new tutorials walk through the process of creating a native hybrid app for both [iOS](http://docs.phonegap.com/develop/1-embed-webview/ios) and [Android](http://docs.phonegap.com/develop/1-embed-webview/android). They've been written from a web developer perspective and are pretty explanatory about the native bits to help remove the barrier of entry. However, a native developer could still benefit from these guides by focusing on the Cordova and native-webview communication parts specifically. 

### Steps Overview

A general overview of the steps needed to build a native+embedded webview app are listed below:

1. Download or clone the base Apache Cordova project for the platform you want to start with ([iOS](https://github.com/apache/cordova-ios) / [Android](https://github.com/apache/cordova-android)). 
2. Create the default *Hello World* app for that platform. This default project will already have the project structure and libraries pre-configured and is the quickest way to get started. 
3. Add any specific Cordova plugins your app may need to interact with the native device. 
4. Open the default project in the main IDE for the platform you're focused on. (Xcode for iOS and Android Studio for Android).
5. Start adding the native navigation controls and native bits required by defining your layout using an Xcode storyboard or Android XML file. 
6. Set up the specific web view <--> native communication needed via PhoneGap plugins. 

Check out the official [Embedded WebView Guides](http://docs.phonegap.com/develop/1-embed-webview/ios) and sample reference apps per platform for more details. 

### Show and Tell!
Lastly, we'd love to hear from you! Tell us about your own unique hybrid app development experiences, tips or gotchas or just share a link to your app!

##Related Reading

- [Why Hybrid doesn't suck (anymore)](https://www.airpair.com/javascript/posts/switching-from-ios-to-ionic)
- [Evolution of WebViews for iOS and Android] (https://www.airpair.com/android-webview/posts/evolution-of-webview-ios-and-android) 
- [High Performance Embedded WebViews in Mobile Apps](https://engineering.zillow.com/high-performance-embedded-webviews-in-mobile-apps/)
- [Whoa That Embedded Web View Looks Hot in your iOS App](http://engineeringblog.yelp.com/2013/11/whoa-that-embedded-web-view-looks-hot-in-your-ios-app.html)
- [Mixing Cordova/PhoneGap Components with Native iOS] (http://devgirl.org/2014/07/22/mixing-cordova-phonegap-components-with-nativ/)












