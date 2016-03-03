---
date: 2014-01-22 00:40:04
author: Scott Bolinger
title: "AppPresser Integrates Phonegap with WordPress"
tags:
- Guest Post
---

[AppPresser](http://apppresser.com/) is an open source plugin that integrates Phonegap with WordPress.

WordPress is the most popular content management system on the web, but it’s difficult to integrate it into your Phonegap projects.

WordPress uses server side PHP, which makes it impossible to add locally to a device like a traditional Phonegap project.  You can use it as a data source, which means pulling in posts and pages via json.  That works for some projects, but it doesn’t use the full potential of WordPress.

WordPress has a powerful templating and plugin platform that helps create very complex functionality such as ecommerce. Wouldn’t it be great if we could use WordPress plugins and themes inside of an app?

AppPresser is setting out to help you do exactly that.

**How it Works**

AppPresser is a free WordPress plugin that allows you to use the Phonegap API inside of a WordPress website. This gives you the vast feature set and ease of use of WordPress, combined with the power of Phonegap to create mobile apps.  

Utilizing WordPress makes creating your app easier, and also introduces many powerful features that were previously very difficult to achieve.  For example, to create an ecommerce app, you can use a WordPress plugin such as [Woocommerce](http://www.woothemes.com/woocommerce/).

The Woocommerce plugin does most of the heavy lifting for you on the ecommerce side, and AppPresser allows you to integrate any Phonegap feature.  Here are some screenshots of an iOS app that allows customers to purchase clothing, and upload their own product images through the app.  This app uses the AppPresser theme and a couple of extensions.

![](/uploads/blog/2014-01/houseofragz-3screenshots.jpg)

Ecommerce is just the start, you can build almost any type of app using WordPress. Other examples would be creating a social app using BuddyPress, a photo blogging or journaling app using the camera and custom post types, post geolocation data inside Google maps, and much more.

Since the entire Phonegap API is exposed, you can create a WordPress plugin that uses any Phonegap feature.  For example, add geolocation, integrate with device contacts, and much more.

AppPresser uses a webview to display WordPress inside your app, so it is best used for apps that require an internet connection.  Performance is a big concern to ensure a great user experience, so speed is imperative.  Hosting your site with a managed WordPress host such as [WP Engine](http://wpengine.com/) can offer a great user experience, even over slow 3G connections. 

Offline apps are in the works for AppPresser, as well as loading content locally for a faster app.

**Building Your App**

AppPresser utilizes [Phonegap Build](http://build.phonegap.com) to create the app.

Phonegap Build allows you to upload a .zip file of your project without messing with any Objective C or Java.  That means you only have to change a few lines in the config.xml file, and add your own splash/icon images and you’re ready to go!

**How to get it**

You can download the core AppPresser plugin for free at [http://apppresser.com/download](http://apppresser.com/download)

Other products to help you build your app are available for purchase at the AppPresser website.

<div style="float:left;margin:0 10px 10px 0" markdown="1">![](/uploads/blog/2014-01/scott-headshot-150.jpg)</div>

*Guest Post by Scott Bolinger*

*Scott Bolinger is the co-founder of [AppPresser](http://apppresser.com/), the first mobile app framework for WordPress. You can find him on twitter [@scottbolinger](http://twitter.com/scottbolinger)*