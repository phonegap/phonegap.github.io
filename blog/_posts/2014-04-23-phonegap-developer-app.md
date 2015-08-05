---
date: 2014-04-23 11:40:03
author: Michael Brooks
title: "PhoneGap Developer App"
tags:
- App
- News
---

Today, the PhoneGap Team is proud to announce the release of the [PhoneGap Developer app][2]!

The PhoneGap Developer app aims to lower the barrier of entry to creating PhoneGap applications. You can now immediately preview your app on a device without installing platform SDKs, registering devices, or even compiling code. You have full access to the [official PhoneGap APIs][9]. You can even develop an iOS app on Windows - and soon - a Windows Phone app on OS X. Whether you're a novice or expert, we think the PhoneGap Developer app will become part of your personal toolkit!

<img src="http://forms.phonegap.com/uploads/blog/2014-04/phonegap-developer-app-hero.png" alt="PhoneGap Developer App" width="500px" height="auto" />

## Getting Started

### 1. Install the PhoneGap CLI

First, you need the latest version of the PhoneGap CLI:

    $ sudo npm install -g phonegap

You can read more about the installation details on our [installation page][1].

### 2. Install the PhoneGap Developer App

Now grab the mobile app, which is globally available in an app store near you:

- [iOS from the App Store][3]
- [Android from Google Play][4]
- Windows Phone is coming soon!

### 3. Create an App

The PhoneGap Developer app is compatible with existing PhoneGap and Apache Cordova projects.

You can create a new app:

    $ phonegap create my-app
    $ cd my-app/

Or open an existing app:

    $ cd ~/Development/app/my-existing-app

### 4. Pair the CLI and Developer App

This is where the magic happens. The CLI starts a tiny web server to serve your project. Then, the PhoneGap Developer App connects to that server.

First, use the CLI to serve your project:

    $ phonegap serve
    [phonegap] starting app server...
    [phonegap] listening on 192.168.1.76:3000
    [phonegap]
    [phonegap] ctrl-c to stop the server
    [phonegap]

Second, enter the server address into the PhoneGap Developer App. In this example, the address is `192.168.1.76:3000`.

<img src="http://forms.phonegap.com/uploads/blog/2014-04/phonegap-developer-app-pairing.png" alt="Pairing the PhoneGap Developer App" width="500px" height="auto" />

Remember, both the CLI and PhoneGap Developer app must be on the same network in order for the address must to be reachable.

### 5. Get to Work

Once paired, it's business as usual. You can freely add, edit, and remove files from your project. Every saved change will automatically update the preview displayed in the PhoneGap Developer App.

<img src="http://forms.phonegap.com/uploads/blog/2014-04/phonegap-app-developer-workflow-v2.gif" alt="PhoneGap Developer App Workflow" width="500px" height="auto" />

You can also use hidden touch gestures for additional control:

- a _3-finger tap_ will go to the home page
- a _4-finger tap_ will force the app to update

## The Future

PhoneGap is made for you and your requests always drive its direction! The PhoneGap Developer app was purposely designed with a small number of features. This allows us to release early, listen to your thoughts, and move in the direction that helps you the most! Please - I can't emphasize this enough - report issues and [submit feature requests](#open_source) to any of the project issue trackers.

At the moment, we're focusing on:

- Windows Phone 8 support _(already under development)_
- Custom plugin support support
- Remote Web Inspector support
- PhoneGap Build integration

## Open Source

In the tradition of PhoneGap, we've open sourced everything short of the signing keys!

- __PhoneGap Developer App:__ [source code][5] and [issue tracker][6]
- __PhoneGap Developer App Website:__ [source code][7] and [issue tracker][8]
- __PhoneGap Connect module:__ [source code][10] and [issue tracker][11]
- __PhoneGap CLI:__ [source code][14] and [issue tracker][15]

## More Info

We're terrible at keeping secrets! Many of you have already noticed the PhoneGap Developer app and some have written about it! I highly recommend that you checkout the articles by Holly Schinsky and Raymond Camden.

- Official [PhoneGap Developer App Website][2]
- Holly Schinsky's [Introducing the PhoneGap Developer App][1]
- Raymond Camden's [PhoneGap Developer App][12]

[1]: http://phonegap.com/install/
[2]: http://app.phonegap.com/
[3]: https://itunes.apple.com/app/id843536693
[4]: https://play.google.com/store/apps/details?id=com.adobe.phonegap.app
[5]: http://github.com/phonegap/phonegap-app-developer
[6]: http://github.com/phonegap/phonegap-app-developer/issues
[7]: http://github.com/phonegap/app.phonegap.com
[8]: http://github.com/phonegap/app.phonegap.com/issues
[9]: http://phonegap.com/about/feature/
[10]: http://github.com/phonegap/connect-phonegap
[11]: http://github.com/phonegap/connect-phonegap/issues
[12]: http://www.raymondcamden.com/index.cfm/2014/4/21/PhoneGap-Developer-App
[13]: http://devgirl.org/2014/04/22/introducing-the-phonegap-developer-app/
[14]: http://github.com/phonegap/phonegap-cli
[15]: http://github.com/phonegap/phonegap-cli/issues
