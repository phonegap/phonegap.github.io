---
tags:
- PhoneGap Build
date: 2014-06-17 13:00:05
author: Ryan Willoughby
title: "Building Your App from a Git Branch or Tag"
category: build
---

After numerous requests, handwritten letters, two faxes, and a telegraph asking for support for building from app tags and branches, we listened -- its now supported on PhoneGap Build. You'll find the new field in the New App form -- simply enter the branch or tag name in the field next to _repo_. If you're using the [Developer API](http://docs.build.phonegap.com/en_US/developer_api_api.md.html), add a _tag_ field in addition to the _repo url_:

    curl -d 'data={"title":"Amanda Hugnkiss","repo":"https://github.com/wildabeast/PhoneGapBuildTester.git","create_method":"remote_repo", "tag":"branchtester" }' https://build.phonegap.com/api/v1/apps?access_token=999999999999

Its optional, and if you leave it out we'll pull from the master branch of your repo. You can update the branch/tag on the Settings page for your app -- and doing so will trigger a code update and rebuild.

If you have any questions or problems, [don't hesitate to ask](http://community.phonegap.com/nitobi).