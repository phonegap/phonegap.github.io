---
date: 2015-07-27 09:00:02
author: "Michael Brooks"
title: "The Metrics that Matter at PhoneGap"
tags:
- App
---

At PhoneGap, we make decisions from user feedback. We're known for getting out, attending conferences, hosting events, and talking to developers. This is because we care deeply for our users and work hard to hear their questions, issues, and needs. Until now, we've gathered this information from direct, casual conversations - sometimes virtually, but usually in-person with a coffee or beer in our hand.

## The PhoneGap Desktop Hypothesis

[PhoneGap Desktop](http://github.com/phonegap/phonegap-app-desktop) started as a hypothesis. For years, we'd talked to PhoneGap developers who didn't enjoy the command-line environment. Some had taken the time to setup and learn it, but some hadn't. Our suspicion was that the command-line was a barrier-to-entry for many developers who wanted to use PhoneGap.

We'd always talked about an IDE plugin that would add PhoneGap support to a developer's environment. But what was that environment? [Sublime](http://www.sublimetext.com/)? [Atom](https://atom.io/)? [Visual Studio Code](https://code.visualstudio.com/)? After running a survey and talking to developers, we were surprised to learn that a standalone app was more appealing than a plugin. Fair enough, we thought. With a direction from our community, we started work on a MVP that we called the PhoneGap Desktop Beta.

## Making Informed Decisions

In the past, PhoneGap's main metrics were visitors, downloads, installs, etc. While these numbers help gauge growth, they can be vanity metrics. They are not detailed enough to answer the harder questions, such as how often PhoneGap is used and what features are unpopular. With the PhoneGap Desktop, we wanted to make informed decisions from the beginning.

Informed decisions need meaningful data. For PhoneGap Desktop, the meaningful data was usage information. We wanted to know how often the PhoneGap Desktop app was opened, how long it was used, and how many apps were created, opened, and deleted. This information would help us understand the important MVP questions - is PhoneGap Desktop actively used and adding value to our developers.

## Choosing an Analytics API

This is a no-brainer, but we needed an analytics API to collect, store, and query the data. We quickly tossed out the idea of creating our own, researched the options available, and chose [Keen IO](http://keen.io). We were drawn to Keen IO for two reasons: philosophy and API. Keen IO shares PhoneGap's cross-platform philosophy by supporting JavaScript, Node.js, Objective-C, Java, and .NET. This was perfect, since the [PhoneGap Desktop](http://docs.phonegap.com/getting-started/1-install-phonegap/desktop/) is JavaScript-based, [PhoneGap CLI](http://docs.phonegap.com/getting-started/1-install-phonegap/cli/) is Node.js, and [PhoneGap Developer app](http://docs.phonegap.com/getting-started/2-install-mobile-app/) is all of the above. After signing up for Keen IO, we were reporting events in a matter of minutes. It was that easy.

## Using the Analytics

Too much information can be overwhelming. To deal with this, we chose [one metric that matters-the-most](http://leananalyticsbook.com/one-metric-that-matters/). This is the golden number that we watch, discuss, and use to guide the upcoming release. This number can change from release-to-release and be supported by other data, but everything should come back to this one golden number.

Today, our golden number is the `projectsLoaded` event. Before we extend the PhoneGap Desktop to match the PhoneGap CLI, we want to ensure that it's refined to its bare essentials. This means identifying and avoiding feature creep. Our current hypothesis is that supporting multiple apps is a low-usage feature that adds unnecessary complexity. Currently, we know that __67%__ of our users only use one app. If that number remains high, you can expect a simpler version of the PhoneGap Desktop to be released soon! Thanks Keen IO!

![](/uploads/blog/2015-07/keen-io-projects-loaded.png)

## Privacy

Analytics are a valuable resource, until users leave from privacy concerns! Thankfully, this hasn't happened to us. Anyone can opt-out of the analytics from the options tab. They can also [inspect the source code](github.com/phonegap/phonegap-app-desktop) to see exactly what is reported!

Just remember, we make PhoneGap for you. &lt;3

## Using Analytics Yourself

In the next article, we'll talk about how to add analytics to your PhoneGap app using Keen IO. Similar to the PhoneGap team, Keen IO is fantastic at listening to their customer needs and wants.
