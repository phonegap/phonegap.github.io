---
date: 2014-04-29 13:00:06
author: Brian LeRoux
title: "Embed PhoneGap into Corona"
category: 
---

Adding visual richness and interactivity to PhoneGap/Cordova-based apps is about to get a whole lot easier.

With [CoronaCards](http://coronacards.com/?utm_source=phonegap), you can now integrate Corona as a plugin into your __existing__ native app.

CoronaCards lets you take full advantage of Corona's richness and ease-of-use, especially its [graphics engine](http://coronalabs.com/2d). Lots of things take one line of code, like OpenGL-accelerated graphics, physics or shader-based filters. And they work cross-platform!

When you integrate CoronaCards into your app, it behaves just like any other widget/control in the view hierarchy. Once you have the plugin installed, you can instantiate a `CoronaView` in JavaScript:

	var view = new CoronaView( x, y, w, h );

CoronaCards is available on iOS, and is currently in beta for Android, with Windows Phone 8 soon to follow. 

[Download CoronaCards](http://developer.coronalabs.com/downloads/coronacards)

[Learn more about the Corona/PhoneGap plugin](https://github.com/CoronaCards/plugin-phonegap)