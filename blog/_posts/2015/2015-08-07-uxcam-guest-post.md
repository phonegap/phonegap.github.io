---
date: 2015-08-07 08:00:02
author: UXCam
title: "Find UX Issues on your PhoneGap Apps with UXCam"
tags:
- Guest Post
- Community
---

There are hundreds of apps executing similar ideas, but what separates an app between low and high ratings is user experience. [Q Manning at Code Mag](http://www.codemag.com/Article/1401041) sums up his thoughts on this matter very well:

>>"Finding a well-developed app isn't that difficult. Many low-rated apps are responsive and bug free. So what do these top apps all have in common? The top-selling apps have a fantastic user experience. The best apps do more than accomplish their goals; they transport users into a preternatural state of clairvoyance, where each tap is intuitive and never requires second guessing."

To reach this state of perfection, the first step is to understand your users.

UXCam has built an innovative solution to understand users and their pain points and recently released an official PhoneGap plugin. Now, with a simple 2-line code integration on your PhoneGap application, you can:

##See your app experience through the users eyes via Session Replay##

You will be able to see screen replay and physical touch interactions on your app, providing insights into user behavior and helping you understand and solve problems that users encounter.

![](/uploads/blog/2015-08/UXCam.gif)

##Analyze millions of users and sessions for UX issues with powerful tools##

Powerful analysis and filtering tools helps to filter and analyze videos to pinpoint usability issues.

![](/uploads/blog/2015-08/Find_UX_issues.png)

The SDK is lightweight, does not add performance overhead and takes less than 5 minutes to integrate.

##Integration##

	cordova plugin add com.uxcam.cordova.plugin
	or
	phonegap plugin add com.uxcam.cordova.plugin

and then call this method on deviceready
	
	UXCam.startWithKey("Account-key received from UXCam after signing up");

Our friends at UXCam have a great promotion for PhoneGap users. Try UXCam for free for 14 days! Click [here](https://dashboard.uxcam.com/signup).
