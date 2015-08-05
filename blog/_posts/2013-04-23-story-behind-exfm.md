---
date: 2013-04-23 08:40:02
author: Dan Kantor
title: "The Story behind Exfm"
tags:
- Guest Post
---

Six months ago, [Exfm](http://ex.fm) had a native iPhone app that was rated 4 stars in the App Store. We also had a native app in Google Play, along with an HTML5 webapp for both desktop and mobile. As a small team of six, we do most of our development in-house, but had contracted out a lot of the native mobile app work. Around this time, I sat down with Lucas Hrabovsky, CTO of Exfm to plan for the future. We looked at our native mobile apps, our Python back-end and our Javascript front-end. We thought about our hiring needs in the next 12 months. We came to the conclusion that the six of us all knew Javascript really well and moving forward we were going to build everything we could in JS. That meant node.js on the back-end and PhoneGap for mobile. Here is the story of how we went from a native iPhone app to one built with PhoneGap. The end result is we now have a 4.5 star rated app, with more daily installs now than we ever did with our native app.

![](/uploads/blog/2013-04/ratings.jpg)

**iOS 6**

When we initially started building our PhoneGap iPhone app, iOS 6 had not yet been released. It was released about a month into our development. iOS 6 was truly a turning point for HTML5 and mobile web development. Performance gains on iOS 6 compared to iOS 5 were significant. iOS 6 fixed some meaningful bugs as well. -Webkit-overflow-scrolling: touch is a major part of making a webapp feel native and prior to iOS 6 was just too buggy to really use. In terms of development, while tools like Weinre for debugging are great, it can't compare to the speed of desktop Safari's Webkit Inspector. Looking back, it would have been very difficult for us to build and release our app prior to iOS 6.

![](/uploads/blog/2013-04/ios.jpg)

**Development and Debugging**

When we started development, it quickly became apparent that having to build and run in XCode every time we made a JS or CSS change was not going to suffice. We decided that we had to put the absolute bare minimum in our HTML shell and load all of our JS, CSS and HTML templates remotely from a webserver when the app started. This approach allowed us to refresh the app in Webkit Inspector and immediately see our changes without having to do a native build. I highly recommend setting up your app this way. To make this happen, we built a node module that watches our source folders for changes, then combines all the JS files, converts LESS files to CSS and serves them up. We called our little node module 'Mott' and [open sourced it on GitHub](https://github.com/exfm/mott). Mott also has the ability to deploy all your assets, including minified JS, CSS and images, to S3 when it comes time to ship code. When you do deploy, Mott will create a manifest JSON file for you that includes version numbers of your JS and CSS. We use these version numbers in our released app to determine at runtime where we are actually loading our code from. We’ll blog more about Mott soon over on the [Exfm blog](http://blog.ex.fm/). 

![](/uploads/blog/2013-04/devdebug.jpg)

**Loading Assets**

One of the beauties of PhoneGap compared to native is its ability to load and run remote code. As I mentioned above, for development this is a complete time saver. But it also has the added benefit of being able to update your app at any point you want without having to go through App Store approval. Remote loading is certainly great, but mobile apps are also expected to work when offline. To get the best of both worlds, we decided to bundle our JS and CSS with the native build, but before loading them check online to see if we have newer versions available. To accomplish this, when our app first starts, it remotely loads the manifest JSON file that Mott created to determine the version numbers of our latest JS and CSS. If the remote versions are different, it loads them and then saves them locally using [PhoneGap’s FileSystem API](http://docs.phonegap.com/en/2.6.0/cordova_file_file.md.html#FileSystem). If the remote versions are the same, it loads them directly from the FileSystem thus saving time. If we are offline, it goes directly to FileSystem. And if for whatever reason FileSystem fails, it loads the JS and CSS versions that we bundled inside the app when we uploaded to the store. This system has allowed us to update our app often while also keeping load times down and working offline. 

![](/uploads/blog/2013-04/loadingassets.jpg)

**Native Feel**

Our goal in building this app was to make it feel as native as we could. Here's a list of the important things we concentrated on to make that happen: 

* **Animations**. They must be butter smooth. We always use transform: translate in our app for all transitions. Those are hardware accelerated and the difference is noticeable. It may sometimes be easier to use width/height or x/y positioning but we avoided that at all costs.  
* **Scroll bounce**. We use -webkit-overflow-scrolling: touch on all scroll parent elements. We also set an inner child absolutely positioned with 110% height inside those overflow parents. This way, there is always a bounce even when the content inside may not be overflowing, which is how native components behave. 
* **Hide scrollbars**. You'll sometimes notice that bouncy sections sometimes don't show scrollbars in a native app. With iOS 6, you can now hide the scrollbar whenever you like using selector::-webkit-scrollbar { display: none; }. 
* **Pause DOM changes on scroll**. One thing we noticed when using native style scrolling is that while scrolling, any other DOM change caused the entire screen to jank. This may be a webkit bug but I believe it's bigger than that since you'll notice that native apps typically pause all other changes while scrolling. We ended up building in 'scroll' listeners that pause other DOM changes until the scroll has finished. 
* **Buttons**. First, always use the 'touchstart' and 'touchend' events. Never use 'click'. On iOS, you can touch a button, then slide your finger off the button and have it not fire. If you want, you can even slide your finger back on the button and have it fire. When your buttons don't act this way, users detect something as being off. We built a small JS class that mimics this functionality. You can [grab it on GitHub](https://github.com/exfm/touch-element) if you'd like to use it. 
* **Lists**. Lists also have a native feel. When you touch a list item, it typically highlights. If you drag your finger, the item loses its highlight and the whole list scrolls. If you touch a list item quickly while in the motion of scrolling, it won't highlight. [We built a JS class](https://github.com/exfm/touch-list-item) that mimics this as well. 

**Wishes**

While I feel that we succeeded in our goal of making the app feel native, there are still a few tell-tale signs that it's HTML. I'm hoping that PhoneGap or iOS 7 will address these:

* **Scroll to top**. An overflow-scrolling: touch element will not scroll to the top when you touch the top status bar. Weirdly, it works on the iPad but not on the iPhone. I'd love to see PhoneGap assist with this - send us an event when the status bar is touched and we can scroll the element ourselves.  
* **Hide keyboard assistant**. E̶v̶e̶r̶y̶ ̶t̶i̶m̶e̶ ̶t̶h̶e̶ ̶k̶e̶y̶b̶o̶a̶r̶d̶ ̶c̶o̶m̶e̶s̶ ̶u̶p̶,̶ ̶i̶t̶ ̶s̶h̶o̶w̶s̶ ̶t̶h̶e̶ ̶P̶r̶e̶v̶i̶o̶u̶s̶/̶N̶e̶x̶t̶/̶D̶o̶n̶e̶ ̶b̶u̶t̶t̶o̶n̶s̶.̶ ̶T̶h̶i̶s̶ ̶i̶s̶ ̶u̶n̶n̶e̶c̶e̶s̶s̶a̶r̶y̶ ̶a̶n̶d̶ ̶t̶a̶k̶e̶s̶ ̶u̶p̶ ̶p̶r̶e̶c̶i̶o̶u̶s̶ ̶s̶p̶a̶c̶e̶.̶ ̶I̶'̶v̶e̶ ̶s̶e̶e̶n̶ ̶s̶o̶m̶e̶ ̶n̶a̶t̶i̶v̶e̶ ̶c̶o̶d̶e̶ ̶t̶o̶ ̶r̶e̶m̶o̶v̶e̶ ̶t̶h̶i̶s̶ ̶b̶u̶t̶ ̶i̶t̶'̶s̶ ̶s̶o̶m̶e̶w̶h̶a̶t̶ ̶o̶f̶ ̶a̶ ̶h̶a̶c̶k̶ ̶a̶n̶d̶ ̶s̶o̶m̶e̶t̶h̶i̶n̶g̶ ̶I̶ ̶w̶i̶s̶h̶ ̶P̶h̶o̶n̶e̶G̶a̶p̶ ̶w̶o̶u̶l̶d̶ ̶b̶u̶i̶l̶d̶ ̶a̶s̶ ̶a̶n̶ ̶o̶p̶t̶i̶o̶n̶ ̶t̶o̶ ̶a̶l̶w̶a̶y̶s̶ ̶r̶e̶m̶o̶v̶e̶.̶  Fixed in PhoneGap 2.6!  
* **Position:sticky**. While technically available in iOS 6, its implementation is very buggy on overflow-scrolling elements. Many lists in iOS have headers and those headers stick to the top as you scroll. I'd love to be able to do this in HTML/CSS.

**Plugins**

We also used a bunch of Plugins in our app. Some we wrote ourselves, others we found on GitHub. Many thanks to [Twitter](https://github.com/phonegap/phonegap-plugins/tree/master/iOS/Twitter), [Facebook](https://github.com/phonegap/phonegap-facebook-plugin), [ActionSheet](https://github.com/mgcrea/cordova-actionsheet), [ChildBrowser](https://github.com/phonegap/phonegap-plugins/tree/master/iOS/ChildBrowser), [EmailComposer](https://github.com/phonegap/phonegap-plugins/tree/master/iOS/EmailComposer), [SMSComposer](https://github.com/phonegap/phonegap-plugins/tree/master/iOS/SMSComposer) and [VolumeSlider](https://github.com/devgeeks/VolumeSlider). The ability to dip into native code for custom system integration is what makes PhoneGap truly awesome. 

**Conclusion**

In closing, I’d like to thank all of the PhoneGap developers as well as Adobe for creating the tools Exfm needed to truly make an awesome mobile app using web technologies. We set out to create a native feeling app using HTML, JS and CSS. I believe we achieved our goal as the installs and reviews bear out. You can find our [iPhone app here](http://ex.fm/iphone) and look forward to iPad and Android versions in the near future. We always love feedback! Tweet at us - [Exfm](https://twitter.com/exfm) or [@dankantor](https://twitter.com/dankantor).

*Guest blog post by Dan Kantor, CEO of Exfm*