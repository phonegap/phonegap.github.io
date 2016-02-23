---
tags:
- PhoneGap Build
date: 2014-01-23 21:00:05
author: hardeep
title: "Recent Service Outages"
category: build
---
tags:
- PhoneGap Build

What a week for PhoneGap Build! We've been having issues with our servers and experienced two days of extremely sluggish performance on our iOS servers, as well as on Hydration and Android servers. In the last couple days, we suffered a set of DB locks during out of office hours and even more sluggish performance on iOS.

Needless to say, this is not how we wanted to start the new year! We understand this is very frustrating for our users and have been working hard to fix these issues. 

So how are we going to resolve this?

Our first order of business was to fire all of our interns! Next we purchased IVs and enclosed ourselves in a dark room with a wall full of monitors. Only kidding! Thought we finally went off the deep end, didn't you?

Before we talk about our future plans, we want to explain what happened so we can be fully transparent about where things went wrong and how our team has resolved the issues.
<!-- end-slug -->

## Monday January 13th

Builds were still compiling however as the night progressed build times crept up and eventually came to a grinding halt.

Sometime after midnight PST, our automated recovery measures kicked and our team that manages our service during out of office hours was notified.

Initially, they received messages that our queues were getting overloaded and they initiated our queue service recovery protocols.

Unfortunately, every few hours the alarms kept going off that our iOS queues were overloaded.

During this time Hydration and Android were unsuccessfully restarted, due to a recovery error.

## Tuesday January 14th

Further recovery measures were put in place. Here is how we usually operate:

1. Restore the service to an acceptable level by resolving any impeding issues.
2. Run diagnostics to figure our the root cause of the issue.
3. Resolve the issue, deploy any fixes, and make plans for similar issues that may occur in the future.

This is usual protocol for most services, however after working feverishly throughout the day and evening we were unable to get our iOS service back into an acceptable state.

We decided to put in an order for remote hands to inspect our machines and a plan for acquiring additional build servers to help mitigate the load.

Unfortunately our remote hands team came back with bad news -- acquiring additional machines could take up to two weeks!

We put in a plan late that evening to provision spare slave devices.

Part of our team moved onto step two of our plan while a couple others were sent to find spare hardware we could turn into slaves to hold the service together.

## Wed January 15th

Our team was finally able to get the service to an operable state by 11 am PST.

## Find, Resolve, Deploy

### Resolving iOS Server Issues

Half of our fleet of OSX boxes were reporting compilation times of up to seven minutes while the maximum time that an app with plugins should take to compile is just over one minute.

After observing various logs, inspecting recent code changes, monotonously looking at system configurations, and using analytics tools such as dtrace, we thought our problem was related to hardware.

However, this week after analyzing our new machines starting to degrade in a similar fashion we were finally able to pinpoint it to caching issues on the Build service.

After flushing the caching systems compilation times dropped back to normal thresholds.

### Resolving DB Locking Issues

The only indicator that this was an issue was when we received messages related to not being able to build applications.

After being able to reproduce the complaints we started prodding the system's pipeline for potential causes.

We finally were able to pinpoint it to the queuing mechanism. When restarting the service, we found DB timeouts related to locks.

Usually the DB will rollback any transactions that fail to acquire a lock within a given amount of time. However, we were getting constant locks when using `SHOW ENGINE INNODB STATUS;` and `SHOW PROCESSLIST;`.

We now had to find which resource was putting our system into a deadlock state.

After disabling all resources related to the latest locks found by `SHOW ENGINE INNODB STATUS;` we found that there was a run away queuing process. This was competing with other processes during queue initialization phases.

Once the process was terminated we were able to restore the queuing service.

## Android and Hydration

This is currently an ongoing battle for us. It seems to occur infrequently and only during system restoration. This is why it's been causing some issues this last week.

We've got it in a manageable state, however we're now looking for the root cause.

## Plans For the Future

We're currently going through all of the recent failures and finding ways we can better monitor our system.

Our goal is to become more proactive in determining when a failure is going to occur.

Part of the solution is going to be through better metrics, and the other part is going to be reassessing our current recovery infrastructure.

## Conclusion and Feedback

We're fully committed to making sure that PhoneGap Build has a respectable quality of service. We know we haven't met that goal yet.

We've heard some great feedback from users during our downtime; most of it related to communication.

One of the suggestions was communicating our progress better, we'll try and get better at this. The first step we're taking is updating [@phonegapbuild](https://twitter.com/phonegapbuild) in a more timely fashion when there is a service outage.

Another comment was related to our status page. It's slow in determining issues and sometimes things slip past it. We're currently reassessing its validity and finding ways to improve it or redesign it from the ground up.

We'd also like to take this opportunity to thank everyone for being so patient. Please shoot us an email at build@phonegap.com with any comments, suggestions, or other feedback. We really appreciate your support!

The PhoneGap Build Team
