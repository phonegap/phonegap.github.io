---
author: Baptiste Brunet
title: My First Mobile Game in HTML with PhoneGap Build
date: Fri Jan 18 11:39:05 -0800 2013
permalink: /blog/build/my-first-mobile-game-in-html-with-phonegap-build/
---

In this post, I'll explain how I created a simple puzzle-game in HTML then turned it into an Android app.

<!-- end-slug -->

![devices](/uploads/blog/build/2013/01/telephones.jpg)


I have always been a puzzle-game player: Tetris, Dr Mario, Puyo Puyo, Super Puzzle Fighter, etc. So, as a web developer, I wanted to try and build my own puzzle-game using the languages I know -- HTML / CSS / JavaScript. I also wanted the layout of my game to be "responsive" so I could play it on my PC as well as on my phone.

I used the game Bejeweled as a model because its gameplay is very suitable for touch devices -- you swipe pieces around to align them and make them disappear.

Here is the web version of the game: [http://www.baptistebrunet.com/games/fruit_salad](http://www.baptistebrunet.com/games/fruit_salad)

Here is the Android version compiled with [PhoneGap Build](http://build.phonegap.com): [https://play.google.com/store/apps/details?id=com.phonegap.fruit_salad](https://play.google.com/store/apps/details?id=com.phonegap.fruit_salad)

- The HTML code for the game is quite simple: no Canvas or SVG, just good ol' divs and background images.
- The moving animations are made with [CSS transitions](https://developer.mozilla.org/en-US/docs/CSS/Using_CSS_transitions)
- The sprites are animated with [CSS keyframes](https://developer.mozilla.org/en-US/docs/CSS/@keyframes)
- The best score is saved with [LocalStorage](http://coding.smashingmagazine.com/2010/10/11/local-storage-and-how-to-use-it/)

**About Images**

I'm not a graphic designer, so I built the first prototype with dummy images. Then, when the gameplay began to take shape, I turned to free icon sets to skin the pieces. I ended up using fruit because I wanted a colourful set to fit the gameplay. In order to avoid useless HTTP requests, I grouped the images into PNG sprites, then I reduced the size of PNG files (about 70% lighter!) with tinypng.org

**Tests and User Feedback**

Before I pushed it to Google Play, I tested the web version of the game on my friends' phones to see how it behaves, to identify bugs and to get user feedback. I heard things like, "The text is too small" and "I don't know how many moves I can make".

It's really interesting to observe users in front of an unknown interface without explaining anything. Some people will immediately understand the game mechanics, others will tap everywhere to see what will happen, and some will wait for something to move on the screen before they try to play.  Given that, I added some visual help (glowing hints) to help beginners.

User tests are also useful to adjust the level of difficulty. The game has to be simple enough for beginners but also offer a bit of challenge to hardcore gamers (combos, hi-score, etc).

**Emulate Mobile Rendering on your Browser**

Dubugging a web page on a mobile phone is not the easiest thing in the world. Fortunately, Chrome and Firefox are offering tools to test a page "in mobile conditions" without having to reload a page on your phone every 2 minutes.

On Firefox, you can launch the Responsive Design Mode by pressing Ctrl+Shift+M. 

![firefox](/uploads/blog/build/2013/01/firefox_mode_responsive.jpg)

On Chrome, you can emulate touch events, override the user agent and change the resolution. Hit F12 to launch the dev tools, then click on the wheel (bottom-right corner) to set these options.

![chrome dev tools](/uploads/blog/build/2013/01/chrome_dev_tools.jpg)

Of course, tests on real devices are essential to identify certain bugs.

**PhoneGap Build**

I had two problems with the web version of the game:

1. Players couldn't launch the game if they didn't have internet connection (I tried to implement App Cache... without success)
2. Most people don't know they can create a shortcut icon for a web app.

So, I turned to [PhoneGap Build](http://build.phonegap.com) to wrap my HTML game into a native app and submit it to Google Play.

[PhoneGap Build](http://build.phonegap.com) is a cloud-based service that can generate a mobile app (an .apk file for instance) from your HTML app (a .zip file or a GitHub repo). The killer feature with [PhoneGap Build](http://build.phonegap.com) is that you don't have to write native code AT ALL! Nor installing Eclipse, Android SDK, etc. You just have to configure some options (i.e. orientation, fullscreen mode, icons, splash screens, etc) via a config.xml file [http://build.phonegap.com/docs/config-xml](http://build.phonegap.com/docs/config-xml)

**Certificate Creation**

To submit your app to a store like Google Play, you have to sign it first with a certificate.

If you're on Windows, you can generate this certificate using keytools.exe, located in you Java folder:
C:\Program Files (x86)\Java\jre7\bin\keytool.exe

I suggest you follow these docs for Android: [http://developer.android.com/tools/publishing/app-signing.html](http://developer.android.com/tools/publishing/app-signing.html)

**Google Play**

Sending your app on Google Play is really simple.

First, visit [developer.android.com](http://developer.android.com) to buy a developer license ($25). Then submit your app by filling out a form: text descriptions, illustrations (i.e. icon, screenshots), and of course, your .apk file.

Validation is almost immediate, and your app is available on the market in a few minutes.

**Conclusion**

![devices](/uploads/blog/build/2013/01/bureau.jpg)

With [PhoneGap Build](http://build.phonegap.com), it's easy for a web developer to publish a "real" mobile app using only HTML, CSS and JavaScript. The Android version of the game seems to attract significantly more players than the web version, so I'll soon publish the game on iOS too ;)

*Guest Blog post by Baptiste Brunet. Baptiste is a front-end developer working for [X-PRIME GROUPE](http://www.xprimegroupe.com), a French web agency. He likes to experiment with HTML5, CSS3 and JavaScript.*
