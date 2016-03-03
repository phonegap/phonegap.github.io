---
author: Tim Kim
title: Working With The Cordova BlackBerry Repo
tags:
- Blackberry
- Guide
- Tutorial
---


## Intro

This guide will walk you through working with the [Apache Cordova BlackBerry repository](https://git-wip-us.apache.org/repos/asf/cordova-blackberry.git).
It will describe the repository's structure
and the purpose of each file and directory. In addition, it will describe how to 
deploy an application using the command line tools. 

If you haven't deployed to a BlackBerry device before, you should first read the [BlackBerry Getting Started Guide](http://docs.phonegap.com/en/2.3.0/guide_getting-started_blackberry_index.md.html#Getting%20Started%20with%20BlackBerry) in order to 
have everything ready to go.

Note: The devices this guide will be able to deploy to
include BlackBerry 5-7, PlayBook, and the new BlackBerry 10.

## How does Cordova work on the BlackBerry platforms?

Cordova's infrastructure is essentially the same
on most platforms in that a chromeless web browser is
launched and pointed to a directory that holds all of
the app assets. In addition, this chromeless browser has a bridge
between the native code and the JavaScript executing in your app to allow calls
to the native APIs (e.g. geolocation, file apis, etc). 
This chromeless browser is then packaged as a native app that can be launched on your device.

However, on the BlackBerry platform, there exists a framework called
[WebWorks](https://developer.blackberry.com/html5/). Instead of Cordova setting up the infrastructure
for the chromeless browser and packaging, WebWorks handles this. 

Furthermore, WebWorks exposes [a lot of the native BlackBerry APIs](https://developer.blackberry.com/html5/api/) through JS calls.
A way to think about WebWorks is to consider it as Cordova, but created by BlackBerry and for the BlackBerry platform.

So how does Cordova work with WebWorks? Cordova
sits on top of WebWorks and allows WebWorks to handle most of the infrastructure.
If you look at the Cordova BlackBerry repo, it's basically a WebWorks project
that launches with a Cordova JavaScript file.

## Do I need Cordova?

It depends. Developers who are only interested in deploying to the BlackBerry platform
might just want to use WebWorks. However, if a developer wants to deploy to multiple
platforms, then using Cordova makes a lot of sense. This is because the JS APIs
that Cordova offers are unified across the platforms. Therefore, the changes required
when porting your app to other mobile platforms can be reduced by a fair amount. 

## Understanding the repo

Our first step is to clone the repo from the [Apache hosted Git repository](https://git-wip-us.apache.org/repos/asf/cordova-blackberry.git).

Here's what the structure of the repo looks like:

    |   #
    |   # License file for Apache
    |   #
    ├── LICENSE
    |   #
    |   # Notice file for Apache
    |   #
    ├── NOTICE
    |   #
    |   # The readme file :)
    |   #
    ├── README.md
    |   #
    |   # What version of Cordova this repo is on
    |   #
    ├── VERSION
    |   #
    |   # Contains the project template files as well as the project create scripts
    |   #
    ├── bin
    │   ├── create
    │   ├── create.bat
    │   ├── create.js
    │   └── templates
    |   #
    |   # ant file used to do various level tasks. Previously this was the defacto project
    |   # create scripts until the Cordova team decided to use a platform agnostic approach. 
    |   # This still works and commands for them are in the README file
    |   #
    ├── build.xml
    |   #
    |   # Contains the native code for the various BlackBerry platforms we deploy to
    |   #
    ├── framework
    |   # BlackBerry OS 5-7 native code
    │   ├── ext
    |   # Playbook
    │   ├── ext-air
    |   # BlackBerry 10
    │   └── ext-qnx
    |   #
    |   # Contains the javascript file for Cordova.js
    |   #
    └── javascript
        └── cordova.blackberry.js

Now open up your terminal and cd into the repo's directory. Using the Cordova scripts will allow you 
to build a new project. For example, `./bin/cordova/create [path_of_project]` will create a new 
basic project at the path specified, otherwise it will create a new example project from where you call it. 

To note, if you create a new example project and run the script again, it will throw an error
telling you that the existing example project already exists. 

This is what the output of the `bin/create` scripts looks like:

    ├── example
    |    # 
    |    # ant file for building BlackBerry OS 5-7 
    |    #
    |    ├── blackberry.xml
    |    #
    |    # The top level ant file for building BlackBerry projects (ie, calls the 
    |    # sub-ant files for the specific platform you're building on)
    |    #
    |    ├── build.xml
    |    #
    |    # Contains the Cordova scripts for running and building BlackBerry projects. 
    |    # These are aligned with the other Cordova platforms and rely on the ant files 
    |    # to build a BlackBerry project.
    |    #
    |    ├── cordova
    |    │   ├── build
    |    │   └── run
    |    #
    |    # Contains an ant library and the native code for BlackBerry (gets copied in from 
    |    # the root)
    |    #
    |    ├── lib
    |    │   ├── ant-contrib
    |    │   └── cordova.2.3.0
    |    #
    |    # ant file for building Playbook
    |    #
    |    ├── playbook.xml
    |    #
    |    # Config file for specifying where your BlackBerry Webworks SDK files are, 
    |    # signing passwords, device ips, etc
    |    #
    |    ├── project.properties
    |    #
    |    # ant file for building BlackBerry 10
    |    #
    |    ├── qnx.xml
    |    #
    |    # the app folder
    |    #
    |    └── www
     
Let's cd into the `www/` folder. This folder should contain all of your app's assets. When you build 
an app, it'll launch with the "Hello World" app so there's a fair amount of stuff in there that you
actually don't need to worry about. I'll just make points on the things you should worry about: 

    ├── www
    |   ├── LICENSE
    |   ├── NOTICE
    |   ├── README.md
    |   ├── VERSION
    |   #
    |   # This is where all of the configuration settings go for your BlackBerry app. 
    |   # For example, the name of the app, version, permissions, and whitelisting goes. 
    |   # See this page for a complete listing of what elements you can use: 
    |   # https://developer.blackberry.com/html5/documentation/config_doc_elements.html
    |   #
    |   ├── config.xml
    |   #
    |   # The cordova JS file
    |   #
    |   ├── cordova-2.3.0.js
    |   ├── css
    |   │   └── index.css
    |   #
    |   # These ext folders are copied in from one level above
    |   #
    |   ├── ext
    |   │   └── cordova.2.3.0.jar
    |   ├── ext-air
    |   │   └── Cordova_Network
    |   ├── ext-qnx
    |   │   └── readme.md
    |   ├── img
    |   │   └── logo.png
    |   #
    |   # This is the initial start page of your app
    |   #
    |   ├── index.html
    |   ├── js
    |   │   └── index.js
    |   ├── json2.js
    |   ├── plugins.xml
    |   ├── res
    |   │   ├── icon
    |   │   ├── resourceBundles
    |   │   └── screen
    |   ├── spec
    |   └── spec.html
 
## Deploying and debugging

If this is your first time deploying a BlackBerry app, I highly recommend reading the [BlackBerry Getting Started Guides](http://docs.phonegap.com/en/2.3.0/guide_getting-started_blackberry_index.md.html#Getting%20Started%20with%20BlackBerry)
After following that guide, you should have all the necessary pieces to start developing your app.

The basic flow I usually go through in deploying an app is to cd into the BlackBerry repo and
create a new project using `./bin/create`. Then I'll cd into the project folder I just made and update the project properties 
so it points to the right SDK and has the correct signing key passwords. Typically I like to copy & paste a saved version of the `project.properties` with 
all of the correct information, but you can actually
deploy a new project with the correct `project.properties` file every time if you just update 
that in the `repo_root_folder/bin/templates/project/project.properties`. Of course, the problem
with this is that if you decide to pull from the repo in the future, Git will say you 
unstaged commits or may accidentally commit this file to a Git repo with your valuable signing passwords.

In any case, after updating the `project.properties` file, cd into the `www/` folder and change the `config.xml`.
In that file, update your app name otherwise it'll default to `cordovaExample`. You may also wish to 
update your whitelisting URLs. You may notice that it says this within the `config.xml`:

    <!-- Expose access to all URIs, including the file and http protocols -->
    <access subdomains="true" uri="*" />
  
I find that in most cases, you'll actually need to specify the specific url to get that whitelisting 
to work. So don't rely on the wildcard and actually put in the urls your app will be accessing.

Once that's done, connect your BlackBerry device to your computer or turn on your simulator. It's
important to note that you need to turn on development mode otherwise your build will fail to install
onto the device.  Then type `./cordova/run [platform]` where platform can by `blackberry`, `playbook`, or `qnx`. 

This will go through the install process and perform the various tasks that a BlackBerry app needs 
to install on your device. You will need an internet connection since your apps will need to be signed with
the BlackBerry server. Once that's done, it should install on your device. 
To note, the basic `./cordova/run` command will also instantiate debug mode so you can use the 
remote web inspector to debug your application. You will find this to be immensely useful
in figuring out errors on your device. The default url should be at `169.0.0.1:1337`. So if you
type that into your computer's address while it's hooked up to your device over USB, it
should launch the remote web inspector.

I hope this guide helps you in your BlackBerry developing endeavors! 