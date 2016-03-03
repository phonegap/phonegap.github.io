---
date: 2014-05-09 10:00:05
author: Bob Moore
title: "Alpha Anywhere with PhoneGap Build"
category: tools
---

According to [Gartner](http://www.gartner.com/newsroom/id/2324917), by 2016, More Than 50 Percent of Mobile Apps Deployed Will be Hybrid. At [Alpha Software](http://www.alphasoftware.com), we are always focused on simplifying complex technology. We try to provide developers with the tools they need to build great apps that solve real business problems without having to worry about the behind the scenes technical details of making it work.

When we started thinking about integrating PhoneGap with our HTML5 mobile application development environment, [Alpha Anywhere](http://alphasoftware.com/products.asp), it became apparent very quickly that many of our developers would be overwhelmed by the process of building native business apps with the standard development tools for iOS, Android and Window Phone 8. When Adobe announced PhoneGap Build, which eliminates the hassle of using the native SDK’s for compiling and building the app, we hoped we could put it to work within Alpha Anywhere.

In order to provide seamless integration of PhoneGap Build within our IDE, it was key to have access to an API that would allow our IDE to talk to PhoneGap Build directly. Fortunately, Adobe anticipated this requirement, and provides an excellent API for PhoneGap Build integration within any development framework. When using the PhoneGap Build API, you don’t have download and install anything in order to build native PhoneGap apps. Everything that you might want to access on PhoneGap Build is available through the numerous API calls. 

Using the PhoneGap Build API, we were able to build a sophisticated [PhoneGap App Builder](http://alphasoftware.com/alpha-anywhere-2.asp) that removes all of the complexity of building and testing PhoneGap Apps for Alpha Anywhere users. There’s no reason to worry about app configuration XML files, plugins, supported platforms, features or app packaging. It’s all handled through the integrated builder. We were also able to allow the capability to automatically generate all of the app icons and the splash screens for all of the supported platforms and at all of the required resolutions, handling both retina and non-retina displays. This is typically a day long process in itself, and we’ve boiled it down to picking a few images within the new Alpha Anywhere PhoneGap App Builder.

Our development environment supports the use of smart components that understand how to communicate with SQL databases and web services. The component builders are tuned for mobile development and support the concept of touch-enabled panel cards, panel navigators, scrollable lists, etc. When building a PhoneGap app, the developer simply picks a component to use as a basis for the application. The component can be configured to run in a standalone fashion or it can dynamically load additional components or data. That choice is up to the developer. The builder makes is a simple process of selecting the base component. Once that is done all of the HTML, JavaScript, CSS and image assets are created and packaged up within the PhoneGap app for uploading to PhoneGap Build. From within the our IDE, the developer can login to their PhoneGap Build account and create a new business app, update an existing app or choose to delete an app on PhoneGap Build. We’ve also built a PhoneGap App Manager that lists all available PhoneGap Build apps and includes buttons that display the QR codes which allow the business app to be installed on a mobile device for immediate testing.

The PhoneGap Build API has proved to be quite robust and reliable. It has allowed us to simplify the process of PhoneGap application development, deployment and testing. It’s helping us to reach a wide range of HTML5 developers that may have been put off by the complexity of each platform’s native development toolset.

**Bob Moore, VP, Mobile Development, Alpha Software, Inc.**

Alpha Anywhere integration with PhoneGap Build allows developers to turn HTML5 business applications into hybrid applications within minutes:

![Screenshot of PhoneGap Build Project Settings](/uploads/blog/2014-05/PhoneGap-App-Builder-Alpha-Anyhwere.PNG)

![Screenshot of PhoneGap Build App Manager](/uploads/blog/2014-05/PhoneGap-App-Manager-Alpha-Anywhere.PNG)