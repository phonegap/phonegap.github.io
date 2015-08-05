---
date: 2015-03-19 08:00:03
author: Ryan Hanna
title: "Well-Made to Well-Known: Unlocking your App's Potential Pt. 1"
tags:
- Guest Post
---

In this two-part series, I will share development decisions that help create a well-made app and marketing methods that will allow that app to become well-known. This series will cover ways to delight your users, entice their friends, tell your story and sustain your future. 

As the Lead Software Engineer at [Sworkit](http://sworkit.com/), I develop our popular fitness app using PhoneGap hybrid development tools. With over 3.5 million downloads, we credit the rapid development, testing and distribution cycles made possible by PhoneGap for many of the competitive advantages that Sworkit enjoys. Sworkit is available in 13 languages and has been featured in the Apple App Store, Google Play, and the Amazon Appstore. 

In Part 1 of ‘Well-made to Well-known’, I focus on best practices for design and development to ensure hybrid apps reach their full potential once in the hands of users.  

## Introduction ##    

To us at Sworkit, “well-made” means that we consider users first, but also work to ensure that we can guide them towards certain behaviors that we find most useful, removing any inhibitors along the way. 

## Keeping it Simple ##

When you first start creating your app, you’ll probably come up with a huge list of ideas and features that you want to implement, and it can be hard to focus on just the few things that you really need to get your idea to market. I suggest looking towards Lean principles to quickly deliver a ‘good enough’ initial release of your app before adding more features later. Remember that as hybrid developers we already have the benefit of building for multiple platforms at the same time. This means you have the ability to reach a wide audience quickly, and then you can gauge user feedback for which features to focus on for the next release, saving time while delighting your users with something that works well and doesn’t confuse them.

## Getting Started ##

It’s hard to juggle both design and development of your app at the same time. Thankfully, the framework options for hybrid developers are better than ever. Below, I’ve listed some beautiful frameworks that will get your app development moving forward quickly. With Sworkit, we have found great success with Ionic, thanks to its focus on design and the flexibility of AngularJS.  

- [Ionic SDK](http://ionicframework.com) 
- [Kendo UI](http://www.telerik.com/kendo-ui) + [Telerik Platform](http://www.telerik.com)
- [Supersonic UI](http://www.appgyver.com/supersonic/ui)
- [Framework7](http://www.idangero.us/framework7/)
- [Onsen UI](http://onsen.io)
- [TouchstoneJS](http://touchstonejs.io/)

## Design Tips for Developers ##

If you chose a framework with a solid UI focus, you should be heading in the right direction for design already. Even still, there are a few things you’ll want to do in order to stand out and make the design your own.

Find inspiration in other apps: don’t copy them of course, but allow yourself to be critical of their design and identify which features you find pleasing and which annoy you. With PhoneGap, we have the ability to reconstruct any design elements using just HTML and CSS. 

Design for the user behaviors you want to encourage. Allow [Hick’s Law](http://en.wikipedia.org/wiki/Hick%27s_law) to inform your menu and navigation structure: the less options presented at once, the better. The more time it takes your user to make a decision, the more time they have to become frustrated and possibly confused.

Above all else, focus on the first screen that your users will see every time they launch the app. You want their experience of that screen to be so delightful and welcoming that their second, tenth, or one hundredth impression is as good as their first. If this means contracting out the design of a single view, then I believe it is well worth it. Additionally, you’ll be able to reuse design components from that screen throughout the app, possibly without having to have every screen professionally designed. 

![](/uploads/blog/2015-03/Sworkit-images.png)

Sworkit's first screen and influence on later screens.

One other recommendation I have is to learn from every opportunity to show off your app to friends, family and colleagues. Be excited to share what you have created, but don’t do the app navigation on your own. Hand off the device and use these interactions to watch how people use the app and where they find confusing barriers or extraneous features that keep them from understanding the point of your app. 

Bonus: [PhoneGap Needs Design - Garth Braithwaite at PhoneGap Day US 2014](http://phonegap.com/blog/2015/01/12/phonegap-day-us-2014-phonegap-needs-design/)

## Let Your Users Help You ##

On the road to 3.5 million downloads, Sworkit saw most of our marketing success through word of mouth. The lesson here is to first please your users, then, at a moment of achievement or pride, provide them with an organic opportunity to share their enjoyment with other people. Reviews and shares can become your best source of passive distribution with little more than a few lines of code and a great [share plugin](https://github.com/EddyVerbruggen/SocialSharing-PhoneGap-Plugin).

You should plan for review requests from the beginning of app design and development. Whether we like it or not, reviews are a major factor for app store rankings and are especially important for the Apple App Store, where displayed reviews are erased with every update.

At Sworkit, we have taken a similar approach to [Circa](https://medium.com/circa/the-right-way-to-ask-users-to-review-your-app-9a32fd604fca) of presenting a request for a review in a thoughtful and unobtrusive way: no pop-ups or lock-outs from a user’s normal flow. 

After a user has enjoyed their first Sworkit workout, the next time they use the app, we place a request embedded in the second screen, appearing just as a part of the normal list of workout options. We first ask simple yes/no questions to gauge the user’s opinion, before leading them to either leave a review or provide feedback directly through the email plugin, in case they have encountered something we would rather them tell us directly than to the rest of the world. Once the user has interacted with the request, it is then hidden from view. You can create something similar by using a simple LocalStorage variable to track the number of times a user has opened the app and a certain action to trigger a feedback or review request. 

![](/uploads/blog/2015-03/review-request-sworkit.png)
Requesting review or feedback in Sworkit.

## Build a Future ##

You’ve worked hard to build a great app and there’s no problem with releasing it just for fun, but for free apps especially, you might want to consider the opportunities to bring in revenue to support your hobby, career or passion. PhoneGap provides access to many plugins that allow you to monetize directly within your app, in ways that are considerate to your users. [SessionM](https://github.com/sessionm/phonegap-plugin) and [Kiip](https://github.com/kiip/phonegap-plugin) both take the approach of rewarding users for successful moments, rather than the traditional direct advertising banners and interstitials. The traditional systems do still have their place though, and can provide solid revenue with the right amount of growth. Classics like AdMob, iAd, FacebookAds, FlurryAds, and mMedia are all covered with [PhoneGap plugins](https://github.com/floatinghotpot/cordova-admob-pro). Another new player is [URX](https://developers.urx.com/), which allows you to tap into deep-linking monetization through actions such as buying tickets, listening to music and booking hotel rooms.

## Next Up ##

In Part 1, I have discussed ways to position your app in advance of release to give it the best chance of reaching its full potential. This includes starting lean, considering design, making your app sharable, asking for reviews and considering monetization from the start. In the second half of this series, I’ll explore what to do after the coding is finished and it is time to reach a wider audience by increasing awareness, working with users, and taking chances.

*Ryan Hanna is the creator of [Sworkit](http://sworkit.com/), the fitness app for working out anywhere in as little as five minutes. Find Ryan on Twitter [@heryandotus](https://twitter.com/heryandotus)