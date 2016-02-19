---
author: Hardeep Shoker
title: Improving Build One Step at a Time
date: Fri May 31 10:01:47 -0700 2013
permalink: /blog/build/improving-build-one-step-at-a-time/
---

Hey friends,

We wanted to address many questions related to the PhoneGap Build service and provide a status update on our team's progress for the last week and upcoming plans.

<!-- end-slug -->

## Service Reliability:

As you may have noticed, our service stability has slowly degraded over the last month. Why has this been happening? Why haven't we done anything about it? Those are just some of the questions we want to address.

First of all, let's address why this has been happening: The main reason is that the service has more than doubled in the volume of builds being compiled by our servers. This means that we're constantly facing scaling issues, and until recently this has been quite a tedious and time consuming task.

Our ability to scale has been sub-par and we've already been working hard to address that over the last few weeks. We still have a ways to go, but over the next few weeks you'll notice large improvements in build times during peak hours.

Our work so far has been focused around the following tasks:

  - Improving internal tooling for recovering the system and monitoring it.
  - Assembling a team to ensure the service stays running around the clock.

We’ve made great strides toward our tooling and providing a great foundation to help automate tasks, restart build components, update components, and monitor our components.

We’ve also been able to find a team to help monitor and correct issues that may occur while our team is out of office and/or asleep. 

Now that we’re able to keep the service online for more than twenty-four hours, we need to focus on scaling the service to meet demand during peak hours. This is what we’re focusing on now.

## Customer Support

As Build has been growing we’ve been struggling to keep up with the volume of questions coming in via community.phonegap.com.

Together with our support team, we’ve started formalizing a strategy for addressing and closing issues, questions, and suggestions with a faster turn around time.

For example, you may have noticed that when we receive an issue on our community forum we open a corresponding issue on our Github tracker (https://github.com/phonegap/build/issues). This is great for the engineering team, however it doesn’t give you, our users, a sense of when we’ll resolve it.

To address this we now provide a response on the type of problem it is (bug, feature request) and the priority our development team has given it (low, medium, high).

We’ll continue to streamline our support process to provide a more transparent service.

We have also begun exploring the options of adding paid support plans for users who want more attention. Stay tuned for more on that.

## Communication

It’s hard to know when Build is having issues isn’t it?.

We currently have monitors that are used by our internal team, however it’s exposing them in a meaningful way to the community that has not been addressed. We’re working on it :)

For the interim, we’ll post any service issues on the following:

Community Support Channel: http://community.phonegap.com/nitobi/updates/recent
Twitter: https://twitter.com/PhoneGapBuild

We understand your frustration and we're working hard to address these issues as quickly as we can.

## Status Update

This part of the blog post is the not so regular but regular information we provide on what we’ve been working on for the last week, what we’ve got on our plate for this week, and what we plan on working on in the following weeks to come.

### Last Week

- Removed support for PhoneGap 1.x.x
- Update GAPlugin to use GA SDK version 2+
- Add build servers for Android, WebOS, Hydration, Symbian, Winphone, and BB
- Internal tooling

### This Week

- Various bug patches
- BUG #130 Open external page in InAppBrowser android 2.3 doesn't work
- BUG #66: \[Android\] Not whitelisted link still open in webview - PhoneGap 2.1.0
- BUG #71: \[iOS\] Custom URL Scheme within CONFIG.XML
- Integrating Pushwoosh with 2.7.0 before release
- Updating Facebook plugin to support plugin.xml 
- Adding additional IOS servers
- Working on a public service status panel
- Working on auto-scaling our build servers to handle peak times
- Working on internal tooling to help automate team processes
- Merging changes contributed by the Build team from pluginstall to plugman. This will allow for us to align ourselves with the Cordova plugin architecture.
- Working with the Cordova team on a plugin distribution channel architecture that will be supported by Build.
- Working on integrating Medic to provide a continuous integration system to validate PhoneGap distributions and plugin distributions.

### Next Week (rough estimate)

- Release Pushwoosh plugin for public consumption
- Continue working on our service status panel
- Continue working on auto-scaling of our build servers
- Continue working on internal tooling to help automate team processes
- Continue working on our plugin distribution channel architecture

That concludes our status update for this week. Please note that plans scheduled for the future may change and we may shuffle them according to necessity or demand.

We continue to welcome your feedback on Get Satisfaction.
