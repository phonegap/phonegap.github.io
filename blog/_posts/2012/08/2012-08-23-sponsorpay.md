---
title: SponsorPay Integrates PhoneGap Plugin
author: Sponsor Pay
tags:
- Plugin
- Guide
---

As a monetization solution, we want our partners to have every advantage possible. Our goal has always been to help developers maximize their app(s)' revenue. The best way to do this is by targeting users that wouldn't otherwise make an IAP. That's why we offer eCPM's and an ad-funded model that is optimal for both the user and the developer. Users can perform simple tasks such as installing an app to be rewarded with virtual currency or premium content. 

As we continue to grow, with our platform now servicing nearly 40 million unique users a month, we're always searching for new ways to spur on the continued growth our mobile partners as well.

One of the biggest problems in the mobile world is the cross-platform conundrum. There have been very few applications that have successfully crossed over from one platform to another. One of the biggest challenges for cross-platform apps occurs during the development stage because each platform requires different frameworks and languages. That's why we've implemented the PhoneGap framework into our own platform. 

As an open source framework for quickly building cross-platform mobile apps using HTML5, Javascript and CSS, PhoneGap tries to remedy cross-platform issues. PhoneGap uses standards-based web technologies to bridge web applications and mobile devices.  

 

###The SponsorPay PhoneGap plugin###

 

The plugin bridges the native SDK for each platform to the PhoneGap JavaScript executing environment and leverage the cross-platform PhoneGap development model to provide a common JavaScript API on both iOS and Android. The plugin is structured as a bridge layer that sits between the PhoneGap application and the native SDK for each platform. The bridge itself is integrated into a JavaScript and a native layer.

 

Integration requires:

* Dropping in the corresponding native SDK for the platform of choice (iOS or Android),

* Adding the corresponding JavaScript files to your PhoneGap project.

* Registering the plugin in the plugin.xml file (for Android) or Cordova.plist (for iOS)

* Adding the corresponding permissions and activities to the Android manifest (depending on the desired features), 

* Modifying the ExternalHosts settings on iOS to let the SDK access the network correctly.


You can find the plugin on SponsorPay's developer site at [http://developer.sponsorpay.com/docs/downloads/](http://developer.sponsorpay.com/docs/downloads/).

 

###About SponsorPay###

 

SponsorPay is the leading international platform for mobile application monetization and user acquisition.

The company’s innovative offer-based monetization products enable iOS and Android developers to increase the number of paying users and boost revenues. SponsorPay’s comprehensive ad inventory includes app install and engagement campaigns, video ads as well as exclusive mobile cost-per-action (mCPA) offers. Using SponsorPay’s distribution services, mobile developers can not only acquire high volumes of quality users in a cost-effective manner but also drive in-app engagement.