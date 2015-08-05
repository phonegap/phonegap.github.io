---
date: 2013-04-16 09:00:02
author: Rob DiMarco
title: "Firebase Adds PhoneGap Integration"
tags:
- Guest Post
- News
---

Many developers have been using [Firebase](https://www.firebase.com/) in their PhoneGap applications since our beta launch nearly a year ago. We know many of you encountered some rough edges, so we've put a lot of work into making sure the experience of developing with PhoneGap and Firebase is a smooth one.

Today, we're announcing that the Adobe PhoneGap / Apache Cordova platform is fully-supported by Firebase and works out of the box to offer the full suite of functionality that Firebase provides on the web.

**Aligned Philosophies**

At Firebase, we're big believers in the power and flexibility in writing applications entirely using client-side code without managing your own servers. PhoneGap embodies this same philosophy in enabling developers to write mobile applications for a broad suite of devices using only client-side JavaScript.

PhoneGap goes further by providing rich APIs for accessing native device features, such as geolocation services or the device camera, that previously required writing device-specific code in the native platform language.

Getting Started

With Firebase, you no longer need to store all of your data locally on the device itself or manually sync it with a remote server using AJAX and your own authentication logic. Firebase makes it easy to enable real-time data synchronization in your PhoneGap application with a simple JavaScript include.

Ready to start building? [Head to our web quickstart guide](http://www.firebase.com/docs/web-quickstart.html).

**What's New**

Firebase Simple Login is now fully supported in PhoneGap with the release of PhoneGap 2.3.0, making use of the InAppBrowser for OAuth-based authentication. You can now use Facebook, Twitter, GitHub, and password-based authentication in your PhoneGap application purely with a script include, free from the hassle of configuring application domains or bundle IDs. To see it in action, clone our [sample repo](https://github.com/firebase/firebase-simple-login-phonegap) and head to the documentation for [Firebase Simple Login](https://www.firebase.com/docs/security/simple-login-overview.html).

*Guest blog post by [Rob DiMarco](<mailto:rob@firebase.com>) from Firebase*
