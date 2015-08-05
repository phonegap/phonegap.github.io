---
date: 2014-04-15 14:00:05
author: Dan Wilson
title: "SceneScout: Flexibility with PhoneGap"
tags:
- Guest Post
- App
---

Hybrid applications take many forms. You can create something that mimics the look and feel of native...or you can create something that stands on its own. Trying to recreate native elements can be troublesome because it’s all the more evident when it does not work exactly as expected. Crafting your own design allows you to play to the strengths of your technology (web) while still feeling at home on your chosen platforms.

![](/uploads/blog/2014-04/addScene.jpg)  
*SceneScout (available on [iOS](https://itunes.apple.com/us/app/scenescout/id738719885) and [Android](https://play.google.com/store/apps/details?id=com.scenescoutapp.scenescout)) is a service for photographers and videographers to scout locations, find new inspiration, plan shoots, and share their work.*

We knew we wanted several key features for [SceneScout](http://scenescoutapp.com/): viewing scouted locations (called scenes) by name/proximity/latest, adding scenes, importing portfolio photos from Flickr (and other services), social login and sharing, profiles, and ways to organize your scenes.  When a new client comes to a photographer, this tool can help guide the conversation about places to shoot. If you, as the photographer, have your favorite scenes tracked in the app, you can quickly find and share ideas that align with the client's. Or if you are drawing a blank, you can search nearby scenes that others have uploaded to get fresh inspiration.

Having worked on several smaller scale PhoneGap and Cordova apps, we chose to really push what was possible with HTML, CSS, and JavaScript and highlight their benefits. 
### Performance
To manage all the views, data, and different routes possible in the app, we chose a JavaScript MVC approach with [Lavaca](http://getlavaca.com/).  Similar to Backbone, Lavaca provides tools for separating code into models, views, and controllers. However it also automatically handles disposing of views and setup for child views.  It also is heavily integrated with Promises which make success and error handling much cleaner and chainable. These aspects allowed us to refresh the screen with relevant data efficiently and manage memory more effectively.

![](/uploads/blog/2014-04/menuToggle.jpg)

Lavaca got us up and running quickly, and it also kept our app feeling fast as we got deeper into the project. Lavaca bundles other libraries such as Hammer.js, a great tool to efficiently handle mouse, touch, gestures, and more across platforms. Allowing Hammer.js to handle all interactions removes the 300ms “click” delay and provides the mechanism to quickly latch on to pinch/zooms, swipes, and more.

Keeping animations/transitions in CSS (simultaneously making sure the elements not visible were not wasting the GPU) allowed us to hook into hardware acceleration and keep things smooth.  Whether you are simply navigating to a new page, selecting from the left menu, or uploading new images, we want it to feel fast to you.
### Across the platforms

It is important to plan for the future when possible. It’s a balancing act because sometimes you need to see how something works first before you commit fully to it.  But since you are using your familiar front end web tools, the most important part of crafting a hybrid app is playing to the strength of HTML, CSS, and JavaScript.  

Even when focusing on mobile, we can ultimately assume little about a user’s device. You can certainly say a project is going to be iPhone only and limit yourself to two device types, but where’s the fun in that?  It’s 2014 and we finally realize our canvas is not fixed. Progressively enhancing based on features and thinking responsively from the beginning is vital.  Even if you think you only want to support a limited set of devices, that limited set of devices might change tomorrow. If the device dimensions don’t change, just a new OS version can also affect your screen real estate (such as when iOS 7 came along and all of a sudden the 20px status bar now overlays the app).

Even limiting yourself to the WebKit domain has downfalls.  FirefoxOS and Windows Phone have great browsers that support a lot of (and sometimes more than) what Chrome and Safari provide, usually already unprefixed for CSS properties. Costs for these developer programs are much less (or nonexistent) than the iOS and Android programs.  There’s little risk with little effort - if thought about at the beginning of your project. Using feature detection will make an app more robust and work well on a new platform with minimal changes.

We released SceneScout on iOS first, but since we were using typical responsive web design techniques and testing for features, the app just worked on Android KitKat. While we have not expanded to other platforms yet, they are not far out of reach at this point.  

On a smaller scale I was able to complete my game Path to Palindromes on four platforms ([iOS](https://itunes.apple.com/us/app/path-to-palindromes/id777602313), [Android](https://play.google.com/store/apps/details?id=com.danielcwilson.PathToPalindromes), [Windows 8.1](http://apps.microsoft.com/windows/app/path-to-palindromes/c56fe53c-4c73-4abd-895c-0c412a8efed4), and [Windows Phone](http://www.windowsphone.com/en-us/store/app/path-to-palindromes/92e21957-f465-4b59-bb20-0179156bfd0d)) in a month’s time... as a side project.  Reading the new [tutorials](https://hacks.mozilla.org/2014/02/building-cordova-apps-for-firefox-os/) posted by Mozilla and Adobe, it appears getting it on FirefoxOS will be straightforward as well.

![](/uploads/blog/2014-04/sceneDetails.jpg)

PhoneGap essentially gives us a blank canvas. We can make something that feels like a website or looks like a native app. Yet, it also gives us the freedom to forge a new path and create an app that feels fresh and unique. Whether you go native or go hybrid, it takes time and effort to design and develop an app with polish.  That polish, though, is often the ultimate differentiator.

*Guest blog post by Dan Wilson*  
Dan Wilson is a front end developer who loves to see apps work well across devices.  You can follow him at [http://danielcwilson.com](http://danielcwilson.com) or on Twitter [@dancwilson](http://twitter.com/dancwilson)


