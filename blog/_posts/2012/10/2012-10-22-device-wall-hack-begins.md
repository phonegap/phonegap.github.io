---
title: "Device Wall – The Hack Begins!"
author: Yohei Shimomae
date: 2012-10-22 15:00:00
tags:
- News
---

We've started brain storming for some projects that utilize our [device
wall](/2012/03/29/phonegaps-new-device-wall/) here in the Adobe Vancouver
office. We have lots of cool ideas, but before we can get on those, we
have to start with some basic stuff.

Our first project is a device inventory system, which keeps track of all
the devices that we have in the office. It needs to be able to detect and
register any new devices that are connected to the wall using their serial
number and return a list of connected and missing devices. It might
sound a little dry and boring, but this comes in handy as we can
easily track the number of devices that we have by manufacturer, OS, version,
etc. and a lot of work around this will be fundamental for our future
projects around the device wall.

![](http://www.phonegap.com/uploads/2012/10/device-wall-2.jpg)

So where do we start? The device wall is essentially a massive USB hub powered
by a Mac Mini, so we can use a handy command in OSX called `system_profiler
SPUSBDataType` (in Linux, `lsusb`) which returns a list of devices
connected to the host. This data includes useful information such as serial
number, device name, manufacture name etc. With a little script to exclude
non-smartphone devices, such as keyboard, we store the list data into a
Redis database and we use Sinatra to render that data into views. With
about a day of work, we got most of this running as you can see below.

![](http://www.phonegap.com/uploads/2012/10/device-wall-1.jpg)

The script for this is open source and you can view the progress
[here](https://github.com/yoheishimomae/device-wall-discovery). This is just the
beginning! Stay tuned for more fun and awesome future projects!