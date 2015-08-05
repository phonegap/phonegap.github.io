---
date: 2013-03-13 14:00:02
author: Steve Christianson
title: "The BYOD challenge to enterprise App development"
tags:
- Guest Post
- Framework
---

Mobile BYOD in enterprise means security can no longer be focused at the device level, but now needs to consider the App level. This puts a big burden on corporate developers and small ISVs, as handling security, communications and authentication can be a tough job and one where the consequences of data leakage are severe.
Coupled with the further challenge of how to author a mobile-friendly solution that runs across multiple mobile OS platforms and does not require expensive or proprietary tooling for authoring, these developers have a big challenge to address. If building using tools that output native applications, they now need to generate one app per target platform, each with potential complexities and costs.
IT departments also face the challenge of distributing and managing access to all these apps as well. In some cases, the projections are for dozens to hundreds of internally developed apps in an organization. Managing that times three or so platforms is a huge administrative burden for IT, and a significant cost for development.

**Solution options**

Ideally, an enterprise would like to have an enterprise app building and publishing solution that addressed these issues in a simple, holistic manner.
Authoring of the solution would use common tools and technologies, so a developer could leverage their HTML and JavaScript skills to create the UI and client logic by using a tool such as Adobe Dreamweaver, and when they needed to leverage native device capabilities, such as local storage or taking a picture, they could leverage the power of the Cordova API’s (PhoneGap) in their JavaScript. Deploying the solution by generating native apps with PhoneGap could be an option, but as noted, has challenges in security and distribution. Ideally, we could take the Web-app we just defined and deploy it like any other web app: to a central server.
To address the security, authentication, data protection and communications challenges, we want to have a mobile client app that handles all of these in consistent, centrally managed fashion yet makes it easy to access multiple content types from a central server.
The solution for this is called a Secure Hybrid App Container such as Rover Apps Retriever, an enterprise- grade secure browser with Hybrid app hosting and a secured app-level private network back to a companion Gateway where your apps (in HTML) are deployed and managed.
By integrating the Cordova APIs into a secure browser, and enhancing it with additional data encryption along with app, user and device authentication, the Hybrid App container makes an excellent dynamic host for multiple Cordova API compliant HTML5 apps published via the companion Gateway.
The platform provides a secure private network, so no VPN or other complex network changes are required; it can securely reach the gateway, which in turn provides controlled intranet access. Making it easy to deploy and provide authenticated access to existing intranet sites and web services.

**Benefits**

By skipping the build step, this solution saves countless developer-hours over the years, and by skipping the native app deployment needs, it saves IT from the hassle and effort of deploying and pushing hundreds of apps a year.
With developers relieved of security, authentication and communications challenges, they can spend more time on the valuable business solutions they are building.
Enabling easy access to built-in capabilities like AirPrint printing, the Rover platform delivers solutions to complex needs like field barcode printing.
Central deployment also brings the advantage of instant updates for all users in the field, as there is no possibility of mismatched versions in the field with a centrally deployed solution.
Offering secure local storage that combined with appcache settings enable the creation and deployment of apps that work offline to capture information for later upload.
A single enterprise container app on the BYOD mobiles can now provide secured access to Intranet web sites as well as multiple hybrid apps, all controlled and managed via a central server.

**Summary**

Enterprises and small ISVs can now rapidly build and deploy rich Hybrid apps to employees and partners on their BYOD devices with full assurance that all communications and local data are secured and that the access is tightly managed by IT. Users benefit from access to multiple apps, with single sign-on and a common security and connectivity method, assured that there is no comingling of their personal and business information on their device. Developers enjoy a simplified process of creation and deployment while still gaining all the benefits of the Crodova API set. Developers can find more information in this informative article on [creating solutions with Rovers Enterprise Hybrid App Container](http://roverapps.com/blog/2012/6/26/writing-a-mobile-enterprise-app-the-simplified-way.html).

*Guest blog post by Steve Christianson, Developer Services at [Rover Apps](http://roverapps.com/)*
