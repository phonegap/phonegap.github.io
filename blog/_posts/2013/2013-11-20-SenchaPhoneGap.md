---
date: 2013-11-20 12:40:04
author: Ross Gerbasi
title: "Leveraging PhoneGap within Sencha Touch"
tags:
- Guest Post
---


##Introduction##

With the release of [Sencha Touch 2.3](http://www.sencha.com/products/touch/) and [Sencha CMD 4](http://www.sencha.com/products/sencha-cmd/download) creating your cross platform hybrid applications has never been easier. [PhoneGap](http://phonegap.com/) is now a first class citizen in the Sencha Touch mobile workflow integrating seamlessly into the newly released, [NodeJS](http://nodejs.org/) based, PhoneGap command line interface. For a in-depth look at creating an application with Sencha Touch and PhoneGap, or Cordova, check out the [Sencha & PhoneGap Video Tutorial](https://vimeo.com/76568053).

![](/uploads/blog/2013-11/SenchaAndPhoneGap.png)


##Creating Your Application##

Once you have downloaded the Sencha Touch 2.3 framework and installed Sencha CMD you can quickly generate an application with the following command.

	//sencha generate app [path/to/app] [AppName]
	$ sencha generate app ~/Desktop/MyApp MyApp

You will then want to make sure to follow the [PhoneGap CLI Getting Started Guide](http://docs.phonegap.com/en/3.1.0/guide_cli_index.md.html#The%20Command-line%20Interface) to get your system up and running with PhoneGap and any dependencies for the native platforms you wish to deploy to. **Remember** if you are planning on building with [PhoneGap Build](http://build.phonegap.com), you simply need to install NodeJS and the PhoneGap CLI, and not worry about native SDK's.

To add PhoneGap support to any application, that is Sencha CMD 4 ready, you run the following command with the optional *APP_ID* and *APP_NAME* arguments.

	//sencha phonegap init [APP_ID] [APP_NAME]
	$ sencha phonegap init com.mycompany.MyApp MyApp


##Folder Structure##

Your application is now ready to take advantage of the power of the Sencha Touch Framework with the ease of native development provided by PhoneGap. If you are a Sencha developer already you will notice your normal application build workflow is the same as always and we have only modified the normal folder structure slightly by adding in a nested PhoneGap project.

<div style="text-align:center">
	<img src="/uploads/blog/2013-11/SenchaAndPhoneGapFolders.png"/>  <br />
	<i>Sencha &amp; PhoneGap Folder Structure</i>
</div>

##Custom Configuration##

You can configure your PhoneGap application using the standard config.xml as you would normally do. Sencha CMD provides a **'phonegap.local.properties'** file to configure the build process. Not only can you use PhoneGap locally to create your own custom native projects but Sencha CMD is also integrated into [PhoneGap Build](http://build.phonegap.com) allowing you to build your application easily without having the native development tools locally. Below is a sample of the properties file you can configure.

	# The following are supported platforms for local building (blackberry is version 10)
	# android, blackberry, ios, wp7, wp8
	#
	# The following are supported platforms for remote building (blackberry is version 6)
	# android, blackberry, ios, symbian, webos, wp7

	# This property can be a single platform or a space delimited list
	phonegap.platform=ios

	# This determines if build is remote (phonegap build) or local
	phonegap.build.remote=false

	# Username for PhoneGap Build
	phonegap.build.remote.username={username}

	# Password for PhoneGap Build
	phonegap.build.remote.password={password}


##Development##

The great benefit of this integration is that your development workflow need not change at all. If you are a PhoneGap user you will want to familiarize yourself with the syntax and structure of a Sencha Touch application but building your PhoneGap application is business as usual. Since you have a full PhoneGap project inside your Sencha Touch project, adding plugins and using the PhoneGap CLI tool will also work just fine. If you are a Sencha Touch user you will want to go through the [PhoneGap Docs](http://docs.phonegap.com) but the syntax is very simple to pick up. You will quickly be able to access Native features and hardware within your Sencha Touch application and using **'Ext.browser.is.PhoneGap'** you can detect when you are inside your natively wrapped application or running in the browser.


##Building and Testing##

Building your application for testing in the native emulator or on a device is also as easy as a single command. The *-run* flag is optional and allows you to decide if you would like run your application after it is built or simply build the native binaries you will then take to a device.

	$ sencha app build -run native



##Beyond the Command Line##

If the command line is not your style and you find yourself using more 'industrial strength' IDE's with ANT support you will be pleased to see that the Sencha CMD 4 generate application comes with human readable ANT targets for running common commands from right inside your IDE. For those who love [Sublime Text](http://www.sublimetext.com/) there is also a handy plugin called [SuperAnt](https://github.com/aphex/SuperAnt) that will let you get in on all the ANT goodness.

<div style="text-align:center">
	<img src="/uploads/blog/2013-11/SenchaCMDBuildTargets.png"/>  <br />
	<i>Sencha CMD 4 Targets</i>
</div>

##Apache Cordova Support##

Sencha CMD 4 not only supports PhoneGap but also [Apache Cordova](http://cordova.apache.org/) for developers that don't want/need the extras provided by PhoneGap. The commands are identical except instead of initializing PhoneGap you simply use cordova instead.

	//sencha cordova init [APP_ID] [APP_NAME]
	$ sencha cordova init com.mycompant.MyApp MyApp

For more information watch the [Sencha &amp; PhoneGap Video Tutorial](https://vimeo.com/76568053) as it goes into detail on both processes.



##A Quick Camera Demo App##


Adding PhoneGap or Cordova APIs to your application is very simple. If you already have a good understanding of the Sencha framework, learning the Cordova API should not be a problem. In this demo we will look at a small code snippet to add native photo library support to your Sencha Touch application.

<div style="text-align:center">
	<img src="/uploads/blog/2013-11/SenchaDemoApp.png"/>  <br />
	<i>Sencha Demo App</i>
</div>

	Ext.define('SenchaPhoneGapCameraDemo.view.Main', {
	    extend: 'Ext.Panel',
	    xtype: 'main',
	    requires: [
	        'Ext.Button',
	        'Ext.Img'
	    ],
	    config: {
	        layout: {
	            type:"vbox",
	            pack:"center",
	            align:"center"
	        },
	        items: [
	            {
	                xtype: "image",
	                src: "http://placehold.it/200x200",
	                width: 200,
	                height: 200
	            },
	            {
	                xtype: "button",
	                text: "Photo",
	                handler: function() {
	                    function success(image_uri) {
	                        var img = Ext.ComponentQuery.query("image")[0];
	                        img.setSrc(image_uri);
	                    }

	                    function fail(message) {
	                        alert("Failed: " + message);
	                    }

	                    navigator.camera.getPicture(success, fail,
	                        {
	                            quality: 50,
	                            destinationType: navigator.camera.DestinationType.FILE_URI,
	                            sourceType: navigator.camera.PictureSourceType.PHOTOLIBRARY
	                        }
	                    );
	                }
	            }
	        ]
	    }
	});

In this view we create a simple image component with a placeholder 200 by 200 image. **A quick note here you** will need to add placehold.it to your config.xml as an allowed origin.

	<access origin="http://placehold.it*" />

We then add a button handler and call the Cordova Camera API. If you are a current PhoneGap user you will notice that you use the normal APIs that you are used to in other other application framework.

Lastly before you build this application you will need to add the camera plugin to our PhoneGap application. As of PhoneGap 3.0 all extra libraries are added as plugins (Geolocation, Camera, File, etc). This is done by running the following command from your **'{application}/phonegap'** folder.

	phonegap local plugin add https://git-wip-us.apache.org/repos/asf/cordova-plugin-camera.git

Finally you can build and run your application in the simulator by running:

	sencha app build -run native

For those that like to see a while project I have prepared this [ready to go demo](/uploads/2013/11/SenchaPhoneGapCameraDemo.zip), simply download and extract on your system. Then from inside the folder you will run

	sencha app build -run native

Don't forget to download some images to your iOS simulator. You can search google images for anything and long press on any image that will give you the option to save it to the photo library.


##Conclusion##

Here at Sencha, we're really excited about these features and hope you are also. We feel that PhoneGap has the community and the leadership to perfectly complement our strong belief that HTML5 apps can compete in the mobile market. Stay updated by checking out our [Sencha Blog](http://www.sencha.com/blog/) and stop by the [Sencha Vimeo](https://vimeo.com/sencha) page for updated tutorials, tips and tricks!

*Guest blog post by Ross Gerbasi from Sencha*
