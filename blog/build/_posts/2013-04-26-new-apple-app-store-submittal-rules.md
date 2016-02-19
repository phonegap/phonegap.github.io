---
author: Brett Rudd
title: New Apple App Store Submittal Rules
date: Fri Apr 26 15:11:22 -0700 2013
permalink: /blog/build/new-apple-app-store-submittal-rules/
---

Beginning on May 1, all PhoneGap Build iOS apps submitted to the Apple App store must be built with PhoneGap __2.5.0 or above__.

Apple recently released news that there are two new requirements for submittal to their app store. Both requirements have been best practices 
for a while but these will become enforced on May 1st:

- [Apps must be built for retina displays and for iPhone5](https://developer.apple.com/news/index.php?id=3212013b) - new splash screen and icon support has been added
to the [config.xml](/docs/config-xml) to bring your apps up to date with this requirement.  These changes are supported in PhoneGap 2.5.0+ only.
- [Apps must not access or use device UDIDs](https://developer.apple.com/news/index.php?id=3212013a) - no work required for apps built with PhoneGap 1.7.0+.

Keep reading below on how to make your apps compliant.

<!-- end-slug -->

## Retina Support and iPhone5 (PhoneGap 2.5+ Only)

For compliance please ensure you have the required splash screens and icons inside your www directory and that they are correctly added to 
your the config.xml.

If a splash screen is not found in your package the PhoneGap default image will be used, so be sure to include your splash screen in all the
required dimensions for your device. Apple has a handy guide to these dimensions [here](http://developer.apple.com/library/ios/#documentation/userexperience/conceptual/mobilehig/IconsImages/IconsImages.html).

### iPhone

Here is a config.xml snippet for an iPhone app. The last splash screen and the last icon are the new requirements.

    <gap:splash src="splash/ios/Default.png" width="320" height="480" />
    <gap:splash src="splash/ios/Default_at_2x.png" width="640" height="960" />
    <gap:splash src="splash/ios/Default_iphone5.png" width="640" height="1136" />

    <icon src="icons/ios/classic.png" gap:platform="ios" width="57" height="57" />
    <icon src="icons/ios/retina.png" gap:platform="ios" width="114" height="114" />


### iPad

Here is a config.xml snippet for an iPad app. The last two splash screens and the last icon are the new requirements.

    <gap:splash src="splash/ios/Default-Landscape.png" width="1024" height="768" />
    <gap:splash src="splash/ios/Default-Portrait.png" width="768" height="1024" />
    <gap:splash src="splash/ios/Default-Landscape_at_2x.png" width="2048" height="1496" />
    <gap:splash src="splash/ios/Default-Portrait_at_2x.png" width="1536" height="2008" />

    <icon src="icons/ios/ipad.png" gap:platform="ios" width="72" height="72" />
    <icon src="icons/ios/retina_ipad.png" gap:platform="ios" width="144" height="144" />

### Universal

Here is a full config.xml snippet for an universal application:

    <gap:splash src="splash/ios/Default.png" width="320" height="480" />
    <gap:splash src="splash/ios/Default_at_2x.png" width="640" height="960" />
    <gap:splash src="splash/ios/Default_iphone5.png" width="640" height="1136" />
    <gap:splash src="splash/ios/Default-Landscape.png" width="1024" height="768" />
    <gap:splash src="splash/ios/Default-Portrait.png" width="768" height="1024" />
    <gap:splash src="splash/ios/Default-Landscape_at_2x.png" width="2048" height="1496" />
    <gap:splash src="splash/ios/Default-Portrait_at_2x.png" width="1536" height="2008" />

    <icon src="icons/ios/classic.png" gap:platform="ios" width="57" height="57" />
    <icon src="icons/ios/ipad.png" gap:platform="ios" width="72" height="72" />
    <icon src="icons/ios/retina.png" gap:platform="ios" width="114" height="114" />
    <icon src="icons/ios/retina_ipad.png" gap:platform="ios" width="144" height="144" />

## UDID's

No work required! yay. 

