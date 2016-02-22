---
date: 2015-03-12 08:00:02
author: Holly Schinsky
title: "Choosing a Mobile Strategy"
tags:
- Community

---

##Mobile App Development Choices

This post is the first in a series examining different choices to be considered when choosing a mobile strategy.  Comparison information is provided to help developers see where Adobe PhoneGap fits in and when it might be the right choice for your app.

The main general choices to consider when building for mobile include native, mobile web or a hybrid approach.

##1. Native Mobile App

- Built for specific devices/operating systems
- Runs as a locally installed app
- Built with multiple programming languages Objective-C/Swift (iOS) Java (Android) or C# (Windows)
- Installed to the device
- Uses all native APIs and controls
- Must be approved by the app marketplace
- No dependencies on a container (webview or the like)
- Offline capable

**Native App Example**

![image](/uploads/blog/2015-03/native.jpg)


##2. Mobile Web App

- Runs from a mobile web browser on any device
- Less access to device functionality
- Built using standard web technologies - HTML5/JavaScript/CSS
- No submission, approval, distribution needed by an app store
- Run across multiple screen sizes
- Served by a web server
- No offline capabilities

**Mobile Web App Example**

![image](/uploads/blog/2015-03/mobile-web2.png)


##3. Hybrid Mobile App

When speaking about hybrid, it’s important to clarify the definition further, since there are really two flavors of hybrid mobile apps which may make sense to classify in terms of this post as Web Hybrid and Native Hybrid.

###Web hybrid mobile apps
Web hybrid mobile apps are those which wrapped in a webview with a thin native container used just as the bridge to native. No UI components are provided from the native side, it’s simply a wrapper for native-to-webview communication.

###Native hybrid mobile apps

Native hybrid mobile apps include a blend of native controls and one or more webviews. One common scenario is to use native controls to provide the navigation and transitions with the main content wrapped in webviews.


![image](/uploads/blog/2015-03/phonegap-diagram2.png)

###Hybrid App Characteristics

- Run as a locally installed app on the device
- Built using standard web technologies - HTML5/JavaScript/CSS
- Run in a webview (embedded web browser)
- Mostly one code base for multiple platforms
- Accesses native APIs (camera, contacts, accelerometer, GPS etc)
- Must be submitted, approved and distributed by an app marketplace (iOS App Store, Google Play)
- Built for specific devices
- Run across multiple screen sizes
- Offline Capable

PhoneGap can be used to build both of the above types of hybrid apps and provides the flexibility to tailor the user experience by combining native elements achieving a more native look and feel, while leveraging the benefits of using standard web technologies. It should be fairly clear why many companies are increasingly choosing this mixture of both native and web in a hybrid manner to gain the best of both worlds.

####Hybrid Sweet Spot
Many developers choose to build native navigation and transitions into their apps but use webviews for the main content, allowing them to still realize a large cost and time savings while still making their app available to a wider range of users quickly. This approach also provides the ability to push timely updates without app store approval hassles. With this model, only a small native code-base needs to be maintained per platform, and it’s typically the static elements of the app rather than the main content, thus more manageable.

The creators of [Basecamp](https://basecamp.com/), a popular project management app, used this mixed approach. They have written up some great descriptive posts explaining their mobile app approach and how it's evolved over time into the best mix of native and hybrid.

- [Hybrid: How we took Basecamp multi-platform with a tiny team](https://signalvnoise.com/posts/3766-hybrid-how-we-took-basecamp-multi-platform-with-a-tiny-team)
- [Hybrid sweet spot: Native navigation, web content](https://signalvnoise.com/posts/3743-hybrid-sweet-spot-native-navigation-web-content)
- [Drawing the native/web line in Basecamp for iPhone](https://signalvnoise.com/posts/3438-drawing-the-nativeweb-line-in-basecamp-for-iphone)

**Basecamp running across multiple devices**

<img src="/uploads/blog/2015-03/1557-project-view-variants-new.jpg" style="max-width:600px;"/>

####JavaScript SDK Frameworks

One other breed of mobile apps that should be discussed and may be considered as hybrid as well are those written in JavaScript which render the views natively using the platform’s native controls. Some frameworks that fall into this category are:

- [React Native](http://www.reactnative.com/) from [Facebook](http://facebook.com)
- [NativeScript](https://www.nativescript.org/) from [Telerik](http://www.telerik.com)
- [Titanium](http://www.appcelerator.com/titanium/) from [Appcelerator](www.appcelerator.com)

React Native is still private alpha and NativeScript just became private beta, so not a lot of information is available quite yet on how apps built with these frameworks will be perceived.

##Stay tuned...
Now that you have an idea of the different choices available, the next post in the series will focus specifically on how PhoneGap can be used in the native hybrid way with embedded web views. Be sure to check back soon!
