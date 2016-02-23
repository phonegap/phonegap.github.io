---
date: 2016-02-16 17:00:04
author: brettrudd
title: "Plugins From Git Repositories Are Now Available on PhoneGap Build!"
category: build
tags:
- PhoneGap Build
---

Hey folks, we are happy to announce you can now use git-backed **public** plugins on PhoneGap Build.

This enables you to iterate and test plugins for your apps without the need to upload them to PhoneGap Build or the npm repository.

Adding git-backed plugins to your application is easy and is compatible with the Cordova-CLI config.xml format. All you have to do is add your repository to the `spec` attribute of the `<plugin />` element in your config.xml. It's pretty straight forward so we'll just give some examples:

    // install plugin from a git repository (name is optional)
    <plugin spec="https://github.com/example/cordova-plugin.git" source="git" />

    // it doesn't have to be GitHub, it can be any git server
    <plugin spec="https://bitbucket.org/example/cordova-plugin.git" source="git" />

    // if it's a full URI the source attribute is optional, as it'll be assumed
    // it's git-backed. This also means it's compatible with the Cordova CLI
    <plugin spec="https://github.com/example/cordova-plugin.git" />

    // if you want to reference a tag, branch or single commit or
    // any commit-ish, add it at the end. Recommended, otherwise it'll
    // just grab the head of master!!!
    <plugin spec="https://bitbucket.org/example/cordova-plugin.git#v1.0.1" />
    <plugin spec="https://github.com/example/cordova-plugin.git#exp-branch" />
    <plugin spec="https://bitbucket.org/example/cordova-plugin.git#61523d1" />

Full documentation can be found [here](http://docs.build.phonegap.com/en_US/configuring_plugins.md.html#Plugins).

As usual, if you have any questions, <a href="https://community.phonegap.com">don't hesitate to post to the community forum</a> or yell at me on twitter at @brettrudd.
