---
author: Ryan Willoughby 
title: "PhoneGap Build config.xml Now Required, and Other Updates"
category: build
date: 2016-02-24 12:08:00
tags:
- PhoneGap Build
---

We're introducing two changes to PhoneGap Build: 

- config.xml files are now a required part of your application, and
- deprecation of the already mostly obsolete `<feature>` tag. 

Not the most exciting changes, we admit. Nonetheless, we'll be deploying these changes on March 7, 2016.

## Config.xml Files Now Required

If you're building apps on PhoneGap Build, you're probably already including a <a href="http://docs.build.phonegap.com/en_US/configuring_basics.md.html#The%20Basics">config.xml file</a>. If not, now you have to. But hey, you should be anyways. In other words: a config.xml file is now a required part of your PhoneGap Build application package.

### Why?

We're doing this for a number of reasons, one of which is our ongoing effort to make builds from PGB as similar to local <a href="http://docs.phonegap.com/getting-started/1-install-phonegap/cli/">PhoneGap CLI</a> builds as possible. CLI builds require a config.xml, and now Build does too. Additionally we like deleting code almost as much as we like writing it. So this will allow us to do some of that. This also means we'll be deleting the Configuration section from the app details view in the Build UI.

### What do you need to do?

If you don't already include a config.xml file in your app, please do so. Here's a bare bones example:

	<?xml version='1.0' encoding='utf-8'?>
	<widget id="com.pgb.brewapp" version="1.0.0" xmlns="http://www.w3.org/ns/widgets" xmlns:gap="http://phonegap.com/ns/1.0">
		<name>PhoneGap Build App</name>
		<description>
			This app brews beer.
		</description>

		<author email="seymourbutts@phonegap.com" href="http://phonegap.com">
		   PhoneGap Team
		</author>

		<preference name="phonegap-version" value="cli-6.0.0" />
	</widget>

Additionally, if you're using the <a href="http://docs.build.phonegap.com/en_US/developer_api_write.md.html">Developer API</a>, the following app settings will no longer be configurable via API parameters (in brackets is the config.xml equivalent setting):

```
 - title (name)
 - package (widget id)
 - version (widget version)
 - description (description)
 - phonegap_version (preference: phonegap-version)
```

So make sure you're declaring those fields in your config.xml file. These parameters will continue to be supported through API parameters:

```
- create_method
- tag
- debug
- private
- share
- hydrates
- keys
```

## Deprecation of the feature tag

Until now PhoneGap Build has accepted the `<feature>` tag, which would translate into permissions in the various platform manifest files. However now that core PhoneGap functionality has been moved to plugins (some time ago) which individually manage required permissions, these feature tags have been made obsolete. Thus we'll be removing support for the tag.

### Why?

It's obsolete.

### What do you need to do?

Probably nothing, other than delete any `<feature>` elements from your config.xml files. One exception may be if you are using a custom debug server like this:

	<feature name="debug-server" required="true">
	   <param name="domain" value="http://debug.custom.com"/>
	   <param name="key" value="some_unique_key"/>
	</feature>

All this does is inject a custom debug script tag into your html files. You'll now have to do this yourself, which would look like this (in your html, not your config.xml):

	<script type="text/javascript" src="http://debug.custom.com/target/target-script-min.js#some_unique_key"></script>

These changes will hopefully reduce confusion on your side, and reduce complexity on ours. If these changes affect you, make sure you complete your transition by March 7, 2016 when we push them out. If you have any feedback, don't hesitate to ping us on <a href="http://twitter.com/PhoneGapBuild">twitter</a>, our <a href="http://forums.adobe.com/community/phonegap/build">support forum</a>, or the comments section below.
