---
title: Apache Cordova and Windows Phone 8
author: Jesse MacFadyen
tags:
- Windows Phone
- Guide
- Tutorial
---

### January 7, 2013 Update: We are live!
Apache Cordova 2.3.0 with full support for Windows Phone 8 is available.

Here’s the quick list of steps to follow to get started:

1. Download [Apache Cordova 2.3.0](http://bit.ly/ZhKa0B)

2. Watch the [5’ tutorial on Channel9](http://bit.ly/WoH0WC)

3. Read the new [‘Getting Started’ Guide](http://bit.ly/TH2FMX)

Read the rest of the post below for all the details!
--


Over the last few months, we have been working to bring Windows Phone 8 (WP8) into Apache Cordova. I [originally announced](http://www.risingj.com/archives/314) the newly supported device at the Microsoft Build event at the end of October, but it has not made it into an official release until recently. Apache Cordova 2.3.0 will include full support for Windows Phone 8 applications. While it probably will not be officially released until the first week of January, you are welcome to go download and get started with the [Direct Link to Release Candidate 2](https://github.com/phonegap/phonegap/archive/2.3.0rc2.zip), or via the tags page at [github.com/phonegap/phonegap/tags](http://github.com/phonegap/phonegap/tags).

The majority of the work for WP8 was done by Sergei Grebnov [(Sergey)](https://github.com/sgrebnov). Sergey made huge contributions to Apache Cordova for Windows Phone 7 (WP7), so he already knew his way around Cordova. He was also joined by his colleague [Ruslan Kokorev](https://github.com/rkokorev).
Microsoft was also involved, and they helped by providing advanced access to the SDKs, tools and even pre-release devices for us to test on. Microsoft provided technical guidance and support and we also TAP’ed into the community via their Technology Adoption Program.

Windows Phone 8 brings with it some new requirements. You will need to be running Windows 8 Professional or better in order to build for WP8. You will also need Visual Studio 2012 and the WP8 SDK. The express version of Visual Studio 2012 comes with the SDK, and is all you need to get started. You can even use it to continue building apps for Windows Phone 7.

The new ‘[Getting Started](http://docs.phonegap.com/en/2.3.0rc2/guide_getting-started_windows-phone-8_index.md.html#Getting%20Started%20with%20Windows%20Phone%208)’ guide is posted and the documentation has been updated to include Windows Phone 8.

Ben Lobaugh of the Microsoft Open Technologies team has recorded a video explaining, everything you need to get started. Watch it on [Channel9](http://channel9.msdn.com/Blogs/Interoperability/Getting-started-with-Windows-Phone-8-and-Cordova).

If you are a developer coming from a Mac background, then Olivier Bloch [(@obloch)](http://twitter.com/obloch) has a great post on [How to develop for Windows Phone 8 on your Mac](http://blogs.msdn.com/b/interoperability/archive/2012/12/21/how-to-develop-for-windows-phone-8-on-your-mac.aspx).

What’s New?
-----------

WP8 apps load faster because they do not need to unpack resources to Isolated Storage. In WP7 Cordova, when the app launched all of the JavaScript, CSS, and HTML had to be moved to the application’s sandboxed file system to allow linking to work. WP8 has removed this step.

Multiple screen sizes, Scalable Vector Graphics (SVG), ES5, gesture events, [and more ...](http://msdn.microsoft.com/library/windowsphone/develop/jj206940(v=vs.105).aspx)

The New Browser
---------------

WP8 has a new browser! Internet Explorer 10 is the engine behind the WebBrowser control in Cordova for WP8, and this brings many enhancements.

IE10 has MSPointer events, which while not exactly the same thing as webkit’s ubiquitous touch events, is a major step forward from WP7, where I had to generate native mouse events and pass them through the DOM myself. Now you can do true multi-touch interfaces in HTML5 on WP8.

WP7 had issues with a large grey hit area that was drawn on any interactive DOM element ( LINK )
WP8 and IE10 has resolved this. You can specify for yourself how elements should look when touched via the :active selector, or your own mouse/pointer handling logic.

Windows Phone 8 does not support WebSQL (neither did WP7), however this was a deprecated spec anyway. Microsoft has chosen instead to move forward, and so you can use the much richer [indexedDB API](http://msdn.microsoft.com/en-us/library/ie/hh673548(v=vs.85).aspx).

As with WP7, localStorage is available to you, with the added bonus that WP8 has it built in, so my WP7 workaround is no longer required. I had to patch these on WP7 because although they were technically supported by IE9, when a page was loaded from Isolated Storage (via the file:// protocol) it did not have a domain, and was not accessible because it was considered a security violation. Additionally, this means on WP8 you can access localStorage as a key/value dictionary, and you are not forced into using setItem+getItem.

Numerous updates to the documentation to show that all Cordova APIs are supported by Windows Phone 8 and list any quirks with any of the API calls.

Windows Phone 8 still requires user interaction in order to manipulate Contacts, so while some tests will time-out in an automated test, they do pass if someone is there to press the on-screen button and save the contact.

If you are porting a Cordova app to WP8, there is an extremely useful blog post from the Windows Phone team outlining everything you need to know in the process. Read all about [Adapting your Webkit optimized site for Internet Explorer 10](http://blogs.windows.com/windows_phone/b/wpdev/archive/2012/11/15/adapting-your-webkit-optimized-site-for-internet-explorer-10.aspx)

Next Steps
----------

CLI tooling needs to be brought up to date to match the other platforms. Visual Studio is great for development, but if you are coming from Android, or iOS, then you expect the same command line interface to work. This will also page the way for integration with tools, like [PhoneGap Build](http://build.phonegap.com/).

Windows Phone 7+8 are both using the same JavaScript file behind the scenes. I would like to explore this further and see if we could get to 1 library that could target either, although as WP8 gains prominence this will become less important.

Permission models are still a bit of a mess because of the way Cordova links to every device API. As we explore more plugin-unification this problem should disappear. Some experimentation is still warranted though.

Your Assignment
---------------

Once you have ported your Cordova apps to Windows Phone 8, make sure you let everyone know. PhoneGap has a [community page](http://www.phonegap.com/app/submit) where you can post your progress, and get the attention you deserve.

If you find issues, whether they are in the code, the examples, or the documentation, please post them in the [Issue Tracker](https://issues.apache.org/jira/browse/CB).

If you want to keep a close eye on things as they develop, you can watch the [Apache github mirror](https://github.com/apache/cordova-wp8), or [my github fork](https://github.com/purplecabbage/cordova-wp8).

As always, I welcome your comments and suggestions, both here, and on [twitter](http://twitter.com/purplecabbage).


*Originally posted on [Jesse’s MacFadyen’s blog](http://www.risingj.com/archives/374)*

