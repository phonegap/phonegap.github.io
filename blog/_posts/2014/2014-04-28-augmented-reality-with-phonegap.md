---
date: 2014-04-28 11:20:04
author: Brian LeRoux
title: "Discover augmented reality on smart glasses with PhoneGap"
tags:
- Plugin
---

![Google Glass Wikitude SDK](http://forms.phonegap.com/uploads/blog/2014-04/Google_Glass_Getting_Started.jpg)

As a pioneer in mobile Augmented Reality, Wikitude was the first company to provide an augmented reality plugin to users of the PhoneGap framework. With this plugin, developers can quickly and easily enrich their app with state of the art augmented reality technology.
The use-cases range from displaying information of landmarks nearby to transparent videos rendered on top of a magazine cover using image recognition, and everything in between.

##The rise of augmented reality eyewear
While not the first augmented reality eyewear on the market, Google Glass has popularized the hardware and brought into the public eye. Market analysts at Deloitte [predict](http://www.deloitte.com/assets/Dcom-Iceland/Local%20Assets/Documents/TMT%20Predictions%202014.pdf), “...smart glasses, fitness bands and watches should sell about 10 million units in 2014, generating $3 billion. Of these wearable form factors, smart glasses should generate most revenues, from sales of about four million units at an average selling price (ASP) of $500.” Clearly, this is a market that developers shouldn’t pass off as simply a fad.

At Wikitude, we’ve partnered with three top level smart glasses producers, and have developed specific SDKs for each device.


First and foremost, we’ve adapted the [Wikitude SDK for Google Glass](http://www.wikitude.com/products/eyewear/google-glass-augmented-reality-sdk/).  This device hardly needs an introduction, but it’s worth noting that it is not truly an augmented reality device. We’ve penned a few thoughts of our own regarding [Google Glass and augmented reality](http://www.wikitude.com/wikitude-google-glass/). Using Wikitude’s powerful image recognition technology, developers can create some truly incredible experiences for Glass wearers.

![Vuzixs Wikitude SDK](http://forms.phonegap.com/uploads/blog/2014-04/Vuzix_Getting_started.jpg)

Our second offering is the [Wikitude SDK for the Vuzix M100](http://www.wikitude.com/products/eyewear/vuzix-augmented-reality-sdk/) Smart Glasses.  The M100 is an Android-based wearable monocular display and computer that includes recording features and wireless connectivity capabilities designed for commercial, professional, and prosumer users. Wikitude’s sensor-based augmented reality experiences and image recognition technology are optimized to meet the M100’s hardware specifications. The technical specifications are comparable to Google Glass whereby the optical unit is in the middle of the field of vision.

![Epson Moverio Wikitude SDK](http://forms.phonegap.com/uploads/blog/2014-04/Epson_Getting_Started.jpg)

Rounding out our three wearable SDKs is the [Wikitude SDK for the Epson Moverio BT-200](http://www.wikitude.com/products/eyewear/epson-augmented-reality-sdk/). The BT-200 is a transparent binocular device, providing stereoscopic displays projecting transparent items over real-life objects in a 16:9 aspect ratio and a 23 degree field of view. Complete with GPS, a gyroscope, digital compass and camera, the BT-200 is fully capable of powering computer vision and tracking as well as geo-location aware content and context. Out of the three devices the BT-200 offers a true see-through mode and a stereoscopic 3D viewing mode.

##Augmented Reality Plugin for PhoneGap

We’ve made working with these wearable devices as intuitive and simple as possible, with no need to struggle with various viewing angles and 3D mode support. The Wikitude SDK manages everything in the smart glass experience in one convenient package and includes the same features as their Android and iOS counterparts including:

convenient features to make working with geo-referenced data easy. 
inhouse-built image recognition and tracking technology which can be used right out of the box. It works with up to 1000 images that can be recognized offline. 
rendering 3D models in the augmented reality scene. Import your 3D model from your favorite tool like Autodesk® Maya® 3D or Blender. Every 3D model can be used in combination with image recognition targets or with geo locations. 

##PhoneGap App running on glasses

As an example, we’d like to show you how easy it is to get a PhoneGap app up and running on the Epson BT-200 using the Wikitude augmented reality PhoneGap plugin.

In order to create a PhoneGap application for the Epson BT-200 you simply create a PhoneGap project, add the Wikitude Plugin to the project and replace the Wikitude library file in the project with the Epson-specific library file. The Wikitude PhoneGap plugin sources remain the same.

This is the “from scratch” guide to install PhoneGap, the Wikitude Plugin and run a HelloWorld sample on your glasses hardware. We assume that you already have Node.js and PhoneGap installed and are somewhat familiar with using the command line on your computer. The installation of the Wikitude PhoneGap Plugin is only briefly described. You can find a more [detailed setup guide](http://www.wikitude.com/external/doc/documentation/latest/phonegap/setupguidephonegap.html#setup-guide-phonegap-plugin) in Wikitude’s documentation.


Navigate to your general project folder and run the command below to create a new PhoneGap project

	phonegap create MyGlassHelloWorld

Build the App
All subsequent commands need to be run within the project's directory

    $ cd MyGlassHelloWorld

In this example the project needs to be built for the Android platform as the Epson BT-200 runs Android 4.0.4

    $ phonegap build android
    
Add the Wikitude Plugin from GitHub

    $ phonegap local plugin add https://github.com/Wikitude/wikitude-phonegap.git

Replace the `wikitudesdk.jar` in the Android Projects lib-directory with the Epson specific `wikitudesdk.jar` from the Wikitude SDK for Epson (separate download)  This library will take over all the Epson specific adjustments.
Follow the steps in the “[Setup Sample App](http://www.wikitude.com/external/doc/documentation/latest/phonegap/setupguidephonegap.html#PhoneGapSampleApp)” section of the documentation
To deploy the application on the EPSON device ensure to have the device connected in debug mode via USB and run

    $ phonegap run android

To create an apk which can then be installed via `adb -d install` onto the device or via browser download afterwards, run
   
    $ phonegap build android


Sidenotes: 

- The screen of the glasses is generally quite small. Make sure to have your CSS prepared for resolutions similar to very small smartphones. Also keep in mind that black is usually transparent on glasses hardware and that contrast and readability is very important on this kind of device. 
- The Google Glass SDK and the Mirror API provide features like voice commands and “Live Cards”, which are not part of the Wikitude Plugin, as they would require some manual project set-up changes.
- Make sure to initialize your application as part of a [device ready event handler](http://docs.phonegap.com/en/edge/cordova_events_events.md.html#deviceready), which fires once device APIs become available.


##Try it out now
There’s certainly no denying that wearable technology, particularly smart glasses are here to stay and are an emerging platform that shouldn’t be missed.  With the award winning Wikitude SDK, you as a developer can get a jump start on the competition, and create your own incredible experiences for these devices starting today!

The Wikitude SDK is available for:

[Wikitude for Google Glass](http://www.wikitude.com/products/eyewear/google-glass-augmented-reality-sdk/)
[Wikitude for the Epson Moverio BT-200](http://www.wikitude.com/products/eyewear/epson-augmented-reality-sdk/)
[Wikitude for the Vuzix M100](http://www.wikitude.com/products/eyewear/vuzix-augmented-reality-sdk/)

