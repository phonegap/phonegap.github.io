---
date: 2013-11-19 10:40:03
author: Philipp Nagele
title: "Putting the power of AR in your projects"
tags:
- Guest Post
---

If we take a look back at the state of progress of technology, there’s a clear trajectory. We’ve moved from the desktop to the laptop to the handheld, and next, the wearable. Since the beginning of computing, we as humans have strived to remove the unnatural input mechanism, primarily, the keyboard. This problem isn’t exactly solved through wearable technology but we’re getting closer by the day.

A primary driver in the wearable technology field is augmented reality. We’ll save you the [wikipedia entry definition](http://www.google.com/url?q=http%3A%2F%2Fen.wikipedia.org%2Fwiki%2FAugmented_reality%26sa=D%26sntz=1%26usg=AFQjCNHtG46kIzLM9zpWQMZCFz3chyivnw), as most of you have already had some form of contact with augmented reality. Currently, the main display factor for augmented reality is a mobile device, but as noted above, all that is poised to change with the coming wave of wearable display technology.

Since launching the first augmented reality plugin available to PhoneGap developers just over a year ago, we’ve seen some quite innovative applications created using PhoneGap’s core technology. As both PhoneGap and the Wikitude SDK rely on the same essential building blocks, JavaScript, HTML, and CSS, it’s simply the case of putting the pieces together and creating memorable user experiences. 

The Wikitude SDK core technology is a JavaScript API for creating augmented reality experiences on top of the camera image. The camera image is overlaid with an 3D ARView accessible through a JavaScript API. On top of that runs a regular WebView, which can be used for any nonaugmented reality content. 

100 percent compatible with PhoneGap 3.0 and the Plugman tool, the Wikitude PhoneGap Plugin covers all augmented reality options: location based services, image recognition and tracking, and 3D model rendering. Our newly updated SDK 3.2 also now includes the ability to add video augmentations, and this functionality is of course 100 percent compatible with PhoneGap.One popular usage of the Wikitude core technology offering is a location based services approach to augmented reality. In addition to the obvious PointsofInterest around a user, we’ve seen a number of brands use the geoAR approach to present users with store locations. Tapping into navigational data, brands may drive users to their front door. Likewise, with a geofencing approach, offers and specials may be pushed to a user once they reach a predefined location.

![](/uploads/blog/2013-11/131018_WT_SDK_FeatureImage_Geo_01_01.jpg)

A few apps that were build using the PhoneGap and Wikitude solution include [Westlegate Tower](https://play.google.com/store/apps/details?id=com.PaintingPixels.Westlegate), the [Fohrenburger Beer finder](https://play.google.com/store/apps/details?id=at.popup.fohrenburg), [Rio Mare Tuna](https://play.google.com/store/apps/details?id=it.riomare.iTuna), and [MyPlagePornic](https://play.google.com/store/apps/details?id=com.gmteditions.myplage). 

A second popular usage of the Wikitude core technology is our image recognition features. This approach is particularly engaging when used with image triggers. Often used in conjunction with print media (newspapers, magazines, billboards, etc.), our image recognition feature allows creators to digitally augment analogue media. As a realworld example of this technology, we created a [Scan Your Money](http://www.google.com/url?q=http%3A%2F%2Fwww.wikitude.com%2Fworld-week-scan-money%2F%26sa=D%26sntz=1%26usg=AFQjCNHVhjp564g-VcOrhfkz84h8djRtJg) app that recognizes various forms of currencies and provides detailed information about each bank note. Drawing from different data providers and selecting your target images, the possibilities are endless.

![](/uploads/blog/2013-11/131018_WT_SDK_FeatureImage_3D_01_01.jpg)

Naturally, any number of these components may be combined. To help demonstrate what’s possible with the Wikitude SDK, we include a sample app coded as PhoneGap project. The app features a number of combinations of our technology. This app was developed based on a number of frequently asked questions and a large amount of user feedback.

The most accessed section of this sample app is our 3D model of the solar system that is triggered through image recognition. This example has a number of useful and practical applications when it comes to the current state of augmented reality usage, particularly in relation to print media. By working your way through this example code, you can easily replicate the sequence and modify the source images and associated 3D model(s) to create some truly unique end user experiences. Recently updated, the sample app also features our latest advancements in augmented reality technology, video augmentations, as well as a fun snapshot tool designed to be used in conjunction with social sharing.

The sample app is available as a [separate project on GitHub](https://www.google.com/url?q=https%3A%2F%2Fgithub.com%2FWikitude%2Fwikitude-phonegap-samples%26sa=D%26sntz=1%26usg=AFQjCNGB80e8M1UHgJ_32iDZoEHN5seUnA) for your convenience.

Thanks to contributions from a number of PhoneGap developers, we’ve fully documented the Wikitude plugin experience, and have active discussions and tutorials happening in our developer forums. Should you run into any trouble that’s not specifically covered in our forums or documentation, we’re always happy to help at [phonegap@wikitude.com](mailto:phonegap@wikitude.com). 

The Wikitude PhoneGap Plugin is hosted on [GitHub](https://www.google.com/url?q=https%3A%2F%2Fgithub.com%2FWikitude%2Fwikitude-phonegap%26sa=D%26sntz=1%26usg=AFQjCNGzNgZwsOI2HvnScqPHS4QPbqFfDQ) and can be easily pulled using plugman.

Happy augmenting!

*Guest Post by Philipp Nagele, managing Wikitude's partner and developer relations putting augmented reality into the hands of web developers.*