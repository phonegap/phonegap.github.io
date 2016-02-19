---
author: Bob Easterday
title: Important Update to Google Analytics Plugin
date: Thu May 9 16:00:39 -0700 2013
permalink: /blog/build/important-update-to-Google-Analytics-Plugin/
---

Google has recently deprecated version 1 of the Google Analytics SDK, on which GAPlugin was based. Accordingly, we have updated the plugin to use Google Analytics SDK v2. We have attempted to maintain backwards compatibility with the v1 plugin. However, depending on your usage, you **may** need to make some minor changes to your App.

We apologize for this in advance, but the version 2 SDK from Google is not fully backwards compatible with V1, making these changes beyond our control.

<!-- end-slug -->

## Required Application Updates:

###setVariable() no longer accepts a key argument.

If you were calling setVariable() before then you did something like;
	
	gaPlugin.setVariable( nativePluginResultHandler, nativePluginErrorHandler, "favoriteColor", "Purple", 1);
	
Here is how you should set a variable now;

	gaPlugin.setVariable( nativePluginResultHandler, nativePluginErrorHandler, 1, "Purple");

Notice that with the above change, we are no longer passing a key argument. The "key" is now the index itself. The next event or page view you send after setVariable will contain your variable at the Custom Dimension specified by the index value you passed in the setVariable call. Here's an example;

	gaPlugin.trackEvent( nativePluginResultHandler, nativePluginErrorHandler, "event with variable", "set variable", "favoriteColor", 1);
	
You can also take a look at our [Example](https://github.com/phonegap-build/GAPlugin/blob/master/Example/index.html) for more detail.
Not too bad, right? And there *is* some good news…

###You can now create up to 20 custom variables for a free account (200 for a premium account)

Variable values are assigned to what Google calls Custom Dimensions in the dashboard. Prior to calling setVariable() in your client for a particular index, you need to create a slot in the GA dashboard. When you do so, you will be able to assign a name for the dimension, its index, and its scope. More info on creating Custom Dimensions can be found [here](https://support.google.com/analytics/answer/2709829?hl=en%26ref_topic=2709827).

## Acknowledgements:

A big round of applause to [Mark Paxton](https://github.com/MarkPaxton) for his contribution on the Android side, and to [Shazron Abdullah](https://github.com/shazron) for helping out with the iOS update.

## Further reading:

Check out the main documentation for the plugin [here](https://github.com/phonegap-build/GAPlugin/blob/master/README.md), paying particular attention to the **Preparation:** section.