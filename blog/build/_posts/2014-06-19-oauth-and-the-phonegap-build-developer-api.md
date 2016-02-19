---
date: 2014-06-19 15:00:06
author: Ryan Willoughby
title: "OAuth and the PhoneGap Build Developer API"
category: build
---

Some news for you devs using the PhoneGap Build Developer API\: we've added support for the OAuth authentication protocol. Up to now, API developers wishing to authenticate against the API would use basic authentication to obtain an auth token, and use that token to access the API. However, this meant that client applications had to ask for the user's PhoneGap Build username and password, which from a security perspective isn't ideal. With OAuth, client applications will now send their users to PhoneGap Build to authenticate their credentials, and authorize the client to access PhoneGap Build on their behalf.

Why are we adding this? Well, here's a few reasons:
- PhoneGap Build [is deprecating basic authentication for the API](http://phonegap.com/blog/2014/04/16/removing-legacy-logins/)
- Client Applications will no longer see their user's PhoneGap Build username and password
- Users can always know which client applications have access to their Build account -- and revoke an individual client's access at any time
- Client applications' access scope can be limited (not yet implemented, so just one universal scope at the moment) 
- Its just more secure.

To register an application and obtain a client ID and secret, go to [your Build account settings](https://build.phonegap.com/people/edit) and click the Client Applications tab. Then [check out the docs](http://docs.build.phonegap.com/en_US/developer_api_oauth.md.html) for more info on how to authenticate your users.

This authentication flow is clearly designed for web applications, as a web server is required for PhoneGap Build to redirect to after authorization. However, command line utilities and other clients that won't have a web server can still utilize OAuth. In this scenario, users will go to Build and manually obtain an auth token which they'll give to the client application. More info on this in the [docs](http://docs.build.phonegap.com/en_US/developer_api_oauth.md.html).

A little demo app showing how to utilize the Oauth flow [is available here](https://github.com/wildabeast/pgb-oauth-client-demo). We highly encourage developers to utilize this new flow (and recommend it, [here's the docs](http://docs.build.phonegap.com/en_US/developer_api_oauth.md.html)) - but note that its a new feature and we look to you guys to help us work out any kinks. So branch your client application and try out the Oauth flow, and if you have trouble, [don't hesitate to ask](http://community.phonegap.com/nitobi).
