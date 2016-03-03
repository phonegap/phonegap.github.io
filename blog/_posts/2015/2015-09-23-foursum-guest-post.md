---
date: 2015-09-23 11:00:02
author: Andrew Buzzell
title: "A hole-in-one with PhoneGap at Foursum"
tags:
- Guest Post
- App
---

![](/uploads/blog/2015-10/foursum_phonegap_cover.png)

Built by a team of golf fanatics and engineers, [Foursum](http://foursum.com/) is a new kind of golf app designed to move beyond the first generation of scoring and flyover apps and create a complete platform for golfers to connect, compete and improve their game. Our aim is to complement the game and its traditions, but also explore new ways to engage with and enjoy golfing. We knew that our broader vision for the platform would require a great deal of testing and experimentation to fill in the details. PhoneGap has been essential to our process.

We initially explored our concept with a web app in a small private beta, and soon realized we needed to think mobile first. Our first questions concerned development: would we build iOS native, Android native, or one of the hybrid app solutions?

Hybrid was appealing because we wanted to offer our product on multiple platforms, and to be able to rapidly iterate and test features as we had done with our web app. We saw the potential with hybrid apps to do deep analytics, A/B testing and segmentation, and to easily test features, concepts, CTAs and designs. PhoneGap was the most mature and best supported hybrid app platform, so that's where we started. 

We have a fantastic team of developers who quickly felt at home with the PhoneGap environment. Out of the gate we provided a free GPS rangefinder using the Cordova Geolocation library, our detailed GIS data, live scoring, analytics to help golfers understand and improve their play, and social features to let golfers connect with each other. Over time we added tools to let golfers schedule games together, share photographs, play different game types, and to manage friendly wagers. 

We decided to build our own UI rather than use the existing UI toolchains, as we are very brand and UX focused, and wanted to have fine-grained control over the look, feel and responsivity of the interface. 

##Feeling fast and native was paramount##

- We take a great deal of care with the way we manage our DOM, keeping it as compact as we can. This means unlearning a lot of web best practices and keeping our markup very terse, using data attributes to attach events and classes for styles. For example, if we have a menu marked up as a list, the events attach to the list items, not anchors within. 
- To speed up CSS selectors we use as few as possible on an element, and try to avoid complicated cascades. No “large-thing dark-green really-really-dark-green align-right bottom-margin additional-overcharge” for us. Style computation is admittedly a small percentage of the overall rendering time but every bit helps. It is worth noting that selector speed itself will vary with the complexity of the DOM. 
- We've learned to be very careful with CSS properties that can be slow to paint, such as shadows, opacities, and border-radii. This can be especially troublesome in conjunction with touch scrolling. 
- Similarly, we are very careful about triggering reflows and repaints with our JS, for example, by using our own show/hide, avoiding excessive geometric calculation, and minimizing direct style manipulation from JS (use classes instead). 
- To ensure user interaction is lively and natural, when actions require network operations we assume success if possible and let the UI react immediately, rolling it back gracefully if something goes wrong. If we can't assume success then we try to find other ways to move the request out of band, or, only if we absolutely must hear back from the API before proceeding, we display the dreaded spinner.  
- One thing we are working on is performance with zero connectivity. We have this now when users are out on the course playing golf, so that our scoring methods all operate independently of connectivity, but there are other situations where we want to improve this. 

#Behind the scenes##

There's a quite a lot written about building PhoneGap interfaces, but comparatively less concerning the rest of the stack that a mature product relies on, so I thought I'd share a little about ours. 

On the backend our app talks securely to a Rails API that uses RABL to compose the JSON responses it emits and offloads heavy work to queues to keep latency down. The mobile client makes heavier requests via promises or websockets and handles responses gracefully whenever they come back. The API in turn communicates with external services such as our in-house payment and account reconciliation for wagers, or our course-level geocoding services. All our servers are on AWS, we have manually distributed staging apps that talk to distinct endpoints for testing and QA. 

PhoneGap has a rich ecosystem of native plugins that provide a lot of valuable functionality that wouldn't be available in a webview. From time to time we add new plugins, but it is important to make sure that old clients can still talk to the API when new clients are rolled out. We version our API as well as our clients to make sure they understand each other. For testing, we use Rspec on the API, on the front end we use CasperJS to interact with our whole app (well … almost) to make sure we haven't broken anything. This setup also gives us a handy way to check for breaking API changes, we can grab an old branch of the frontend and run Casper tests against a new API branch. Sometimes we deploy small changes or set up A/B tests in the app's HTML/JS/CSS bundle over the air via differential updates kicked off by API requests. 

Our frontend app is based on Backbone and is written mostly in Coffeescript. We serve it out of a Rails static site generator while we are developing, and use a Cakefile to build, compile assets, and create the Cordova apps. Like most PhoneGap developers, we work out from browsers and simulators to take advantage of faster cycling and developer tools, and then build to devices for testing and deployment. We use the Sentry app to report errors from the API, the client, and the native containers. They appear in a Slack room and get triaged into our issue tracker, or hotfixed immediately if they scare us sufficiently. 

From time to time we wonder if we want to move to platform native apps, but our analysis has always concluded that PhoneGap comes out ahead for us. As I was putting this post together I was really impressed with the stack and the tools we've been able to build around PhoneGap to manage our product. The PhoneGap environment offers significant scope to adopt and re-use best of breed tools, packages and patterns. Just as importantly, it gives the developers on our team a lot of latitude to experiment, something we encourage at Foursum. 

Foursum is available for [iOS](https://itunes.apple.com/app/id688035250) and [Android](https://play.google.com/store/apps/details?id=com.foursum.android_client)

Andrew Buzzell | Lead Engineer at Foursum
