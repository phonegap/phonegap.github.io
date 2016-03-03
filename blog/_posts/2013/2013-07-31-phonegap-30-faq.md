---
date: 2013-07-31 14:00:05
author: Colene Chow
title: "PhoneGap 3.0 FAQ"
tags:
- Framework
- PhoneGap Build
- News
---

Since we released [PhoneGap 3.0](http://phonegap.com/blog/2013/07/19/adobe-phonegap-3.0-released), we’ve received a lot of positive feedback from the community. Thanks guys! We’ve also received some great questions, so we’ve compiled this FAQ to help clear things up.

**Q. When will we start to see iOS7 support?**

**A.** The very same day that Apple ships iOS7. =)

**Q: What do you mean when you say “Firefox OS is coming”? How would that work, since Firefox OS is already based on HTML/JS/CSS?**

**A:** First of all, keep in mind that PhoneGap is far more than just APIs. PhoneGap also includes powerful tooling for building, emulating, logging, and deploying to devices. A consistent development experience is one of the strengths of the platform. So we're working on that. From an API perspective the current prototype is just a simple and light JavaScript shim. The API surface between our implementations is very similar. That said, we're looking for deep integration so its possible we will create PhoneGap plugins to make OTHER platforms (like iOS and Android) behave like Firefox OS itself. PhoneGap 3 gives us the ability to do this.

**Q: Does PhoneGap play well with angular.js? Or any other framework?**

**A:** It sure does. PhoneGap does not dictate how an app gets authored with HTML, CSS, and JavaScript. We play nice with all frameworks and, of late, many are being authored today with Angular.

**Q. What changed in the plugin architecture?**

**A:** Plugin API has been tweaked for a whole new variety of use cases. The biggest change was a standard plugin spec for packaging. The win from this is automated installation and removal. Discovery is just about ready to ship too. In the past plugins were installed by a complicated copy/paste that required manual developer intervention. With a standard for plugin packaging we can now install/remove plugins in a single command.

**Q. What’s the difference between the PhoneGap CLI vs the Cordova CLI?**

**A:** The PhoneGap CLI is built on top of the Cordova CLI. It has all of the functionality that the Cordova CLI has. The main difference is that the PhoneGap CLI has [PhoneGap Build](http://build.phonegap.com) integration. So if you don’t have the native SDK installed, you can delegate compilation to the PhoneGap Build cloud service and get app-store ready mobile apps. Both tools are completely interoperable. 

**Q. What if I don’t want to use NodeJS and still want to download PhoneGap? **

**A:** NodeJS is a mandatory dependency for PhoneGap development. To install any plugins (including core plugins) into your application, NodeJS is required for our tooling to work. We decided to use NodeJS to build our tools so they would work cross platform with only one codebase and because NodeJS is just JavaScript it has never been easier to contribute back to PhoneGap. 

**Q: What if NodeJS cannot be installed or won't work due to firewall restrictions?**

**A:** You can still install PhoneGap or Cordova behind a firewall. The following command can be used to specify your firewall proxy:

	$ npm config set proxy http://company.com:8000

After setting that correctly, you should be able to install either tool (and anything else on npm)

As for firewall support with the PhoneGap CLI, it's an outstanding issue that [Michael Brooks](http://twitter.com/mwbrooks) will work on: [https://github.com/mwbrooks/phonegap-cli/issues/75](https://github.com/mwbrooks/phonegap-cli/issues/75)

**Q. Is there anything new in [PhoneGap Build](http://build.phonegap.com)?**

**A.** PhoneGap 3.0 support should land in roughly two weeks to the PhoneGap Build service. We like to bake the open source project in the wild before deploying to our servers. 

Did you know? PhoneGap Build now fully supports user submitted plugins too! Read more:
[Announcement of User Submitted plugins](http://phonegap.com/blog/2013/07/16/user-submitted-plugins-announcement-post/)  
[How to use plugins](http://phonegap.com/blog/2013/07/15/using-plugins-with-phonegapbuild/)

**Q. When’s the next [PhoneGap Day](http://pgday.phonegap.com)?**

**A:** Now that we’re done with [PhoneGap Day US](http://pgday.phonegap.com/us2013), we’re setting our sights on [PhoneGap Day EU](http://pgday.phonegap.com/eu2013) in Amsterdam on Sept 24 (with pre-conference workshops on Sept 23). We’re also excited to announce our first foray into South America! Save the date for PhoneGap Day BR in Rio de Janeiro on Nov 26, 2013.


