---
tags:
- PhoneGap Build
date: 2015-11-19 18:00:00
author: brettrudd
title: "config.xml gets an update - part 2 !!!!!! "
category: build
---

## PLEASE NOTE NEW INFO BELOW ABOUT THE PLUGIN AND CONFIG-FILE ELEMENTS !!!

## The plugin changes will be deployed November, 20th 2015 at 1:00 PM PST.

Hey folks, starting today some of you found out config.xml on PhoneGap Build got an update. For most users this will have no change. But for some users who use the Cordova cli you will find your workflow just got easier.

Basically we have allowed Cordova cli config.xml to be used on build.  As those familiar with the newer versions of the the Cordova cli will know config.xml now supports platform specific preferences, splash screens and icons.  So now PhoneGap Build does to!

### Plugin tag

The Cordova cli has started saving and allowing users to specify plugins in their config.xml.  As part of supporting the Cordova cli config.xml we are now making the gap namespace optional (with a few **caveats**).  For **most** users this will cause no change in functionality and your current config.xml will require no updates or changes.

In supporting the Cordova cli config.xml there are two differences with how the the `plugin` tag differs from how PhoneGap Build handles the `gap:plugin` tag:

* instead of a `version` attribute the Cordova cli uses `spec`. `spec` is used both as a way to specify version (for `npm`) and also to specify the source repository of the plugin (eg. `github:mygithubuser/myproject`). Basically it allows anything that `npm` allows as part of it's [install command](https://docs.npmjs.com/cli/install).
* the Cordova cli defaults to **npm** as a plugin repository.

This leads to the following backwards-compatible compromise for `<gap:plugin />`:

* `<gap:plugin />` will act as it does now.  **No changes at all to the functionality**.
* it will still default to the PhoneGap Build repository.
* `spec` and `version` can be used interchangeably. `spec` is recommended for maximum compatibility , `version` is **not** compatible with the Cordova cli.

For advanced users moving forward with the `plugin` element the following rules will be used:

* `source` attribute, if present, will always be obeyed, **but default to the [npmjs.org](https://www.npmjs.org) repository**.  This attribute is ignored in the Cordova cli and npm will always be the default.
* `spec` and `version` can be used interchangeably. `spec` is recommended for maximum compatibility , `version` is **not** compatible with the Cordova cli.

To summarise the changes here's some examples:

```xml
// install plugin from the PhoneGap Build repo (all lines result in identical functionality)
<gap:plugin name="com.phonegap.plugin.statusbar" version="~1.1.0" />
<plugin name="com.phonegap.plugin.statusbar" source="pgb" version="~1.1.0" />
<plugin name="com.phonegap.plugin.statusbar" source="pgb" spec="~1.1.0" />

// install plugin from npm (all lines result in identical functionality)
<gap:plugin name="cordova-plugin-whitelist" source="npm" version="~1" />
<plugin name="cordova-plugin-whitelist" version="~1" />
<plugin name="cordova-plugin-whitelist" spec="~1" />
```

### Config-file tag

In making the `gap` namespace optional it means the `config-file` element can also be used with or
without the namespace. There is no other change in the functionality or usage of this element other than the optional namespace.

### Platform tag

The platform tag, note the missing xml **optional** namespace, is now obeyed on Build.  This tag is **identical** to `gap:platform` and they can be used interchangeably.

```xml
<platform name="ios|winphone|wp8|android" />
```

The `platform` tag has the same powers as `gap:platform` in that if a platform is missing **it will not be built**. If your config has no `gap:platform` or `platform` tags then all platforms will be built.

Also `winphone` and `wp8` can be used interchangeably so as to be consistent with the naming from Cordova.

### Platform Specific Preferences

Some people will be rejoicing.  You can now use platform-specific preferences.  eg.

```xml
<platform name="ios">
  <preference name="phonegap-version" value="3.9.1" />
  <preference name="orientation" value="portrait" />
</platform>

<platform name="android">
  <preference name="phonegap-version" value="4.0.2" />
  <preference name="orientation" value="landscape" />
</platform>
```

### Splashscreens and Icons

Splashscreen and icons can now be used without the `gap` namespace as well. This is in addition to the fact that they can now be placed within a `platform` tag. Placing them inside a platform tag is the same as adding a `platform="XXXX"` attribute to the element outside a `platform` tag.

```xml
<platform name="ios">
  <icon src="ios/icons/100.png" width="100" height="100" />
  <splash src="ios/splash/default.png" width="320" height="480" />
</platform>

<platform name="android">
  <icon src="android/ldpi.png" gap:platform="android" gap:density="ldpi" />
  <splash src="android/ldpi.png" gap:platform="android" gap:qualifier="lhdpi" />
</platform>
```

As usual, if you have any questions, <a href="https://community.phonegap.com">don't hesitate to post to the community forum</a> or yell at me on twitter at @brettrudd.
