---
date: 2015-08-18 08:00:02
author: Alex Kleissner
title: "How to Add Analytics to your PhoneGap App"
tags:
- Guest Post
- Guide
---
When you're building apps it's important to have an understanding of how your users are behaving. This will help you identify areas of friction and come up with ideas and tests for improvement. It's a good idea to answer questions like:

- Which features of your app do people use most?
- When are your users most active?
- What does the conversion funnel look like from signup to paying customer?
- Where are people dropping off?

These questions and metrics will vary depending on your app and your goals. At PhoneGap, there is [one key metric](http://phonegap.com/blog/2015/07/27/metrics-that-matter-at-phonegap/) that they track and they use [Keen IO](http://keen.io), an analytics API to define and visualize this metric.

## Adding analytics to your PhoneGap app

In this post, I'll explain how you can track what your users are doing in your PhoneGap Application using Keen IO.

I'll walk you through the steps I took to track button clicks and display the results in a chart within my [example Hello World PhoneGap app](https://github.com/hex337/phonegap-keen).

<img src="https://github.com/hex337/phonegap-keen/blob/master/imgs/button_screen.PNG?raw=true" style="margin-right:2px; max-width:350px;">
<img src="https://github.com/hex337/phonegap-keen/blob/master/imgs/stats_screen.PNG?raw=true" style="max-width:350px;">

**Things you'll need:**

- A [free Keen IO account](https://keen.io/signup?source=phonegap)
- A working PhoneGap app - follow the [tutorial](http://docs.phonegap.com/getting-started/1-install-phonegap/desktop/) to set one up

## Set up

1. [Download](https://d26b395fwzu5fz.cloudfront.net/3.2.6/keen.min.js) the latest version of the Keen IO JavaScript library and move it into the `www/js` folder of your PhoneGap project folder.

2. Include the Keen IO library as part of the project. Open up `www/index.html` and add the following line just after the `index.js` file gets loaded:

```xml
<script type="text/javascript" src="cordova.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/keen.min.js"></script>
```

## Tracking your events

**1. Create an instance of the Keen Client object within your HTML file by adding the following:**

```javascript
initialize: function() {
  this.bindEvents();
  this.client = new Keen({
    projectId: "Your_ProjectID",
    readKey: "Your_ReadKey",
    writeKey: "Your_WriteKey"
  });
  self = this;
}
```

You can grab your Keen API keys from your Keen IO project page after you create an account. After adding in your keys, you should have a fancy new client object ready to send and read data from Keen IO.

You'll also notice that we’ve set a `self` variable to the current `this` context. The way this sample app is set up, when the event fires on the button, we won't have access to the current "app" context where the `this.client` variable lives. What this does is let us access the `client` from other callbacks via `self.client`. The declaration of the `self` variable is right up [here](https://github.com/hex337/phonegap-keen/blob/master/www/js/index.js#L20).

**2. Collecting your important events**

For my example Hello World application, I wanted to track the number of button clicks. Here’s how I did it:

```javascript
onButtonClick: function() {
  document.getElementById("button").setAttribute("style", "display:none");
  document.getElementById("pushed-text").setAttribute("style", "display:block");

  var eventData = {
    color: "red",
    device: device
  };
  self.client.addEvent("button clicks", eventData, function(err, res) {
    if (err) {
      console.log("Error: " + err);
    }
    else {
      console.log("Event sent.");
    }

    document.getElementById("button").setAttribute("style", "display:block");
    document.getElementById("pushed-text").setAttribute("style", "display:none");
  });
},
```

Now I am collecting all the clicks on my PhoneGap button. Whenever I click the button, I will see the new event appear in the "button clicks" collection inside my Keen IO project along with it's associated properties.

Right now, we are just logging the button color and the device information on every click event. The event data looks something like this:

```javascript
{
  "color": "red",
  "device": {
    "available": true,
    "uuid": "99195ABC-C79B-4DF3-9620-C38CD087617A",
    "platform": "iOS",
    "version": "8.4",
    "model": "iPhone7,2",
    "cordova": "3.6.3"
  },
  "keen": {
    "timestamp": "2015-08-07T00:15:43.023Z",
    "created_at": "2015-08-07T00:15:43.023Z",
    "id": "55c3f8af6f31a205660b5172"
  }
}
```

With Keen, we can track any property on any event. Let's say we want to know information on our signup events. We can add properties to every signup event to collect information on the [referral source](https://keen.io/docs/api/#referrer-parser), user id, [device information](https://keen.io/docs/api/#user-agent-parser), [IP address and geo information](https://keen.io/docs/api/#ip-to-geo-parser), or any other information we might want to know.

The one thing this example doesn't demonstrate is storing events if the device isn't currently able to make a connection. To accomplish this, you can wrap the `addEvent` call inside a block to check for a connection.

## Analyzing and Displaying Your Data

Now for the fun part -  analyzing all of the data you're sending. In this example, we can display the number of clicks per hour and the total number of clicks ever by running a few simple queries.

I wanted to display a chart within my Hello World app that shows the number of button clicks over the last 24 hours. I used Keen's JavaScript library to query the data and render a chart right in the app.

The HTML for the charts is [here](https://github.com/hex337/phonegap-keen/blob/master/www/index.html#L56), but what we really care about is the JavaScript to fetch our desired data:

```javascript
onStatsLinkClick: function() {
   document.getElementById("button-page").setAttribute("style", "display:none");
   document.getElementById("stats-page").setAttribute("style", "display:block");

   var count = new Keen.Query("count", {
       eventCollection: "button clicks",
       timeframe: "this_24_hours",
       interval: "hourly"
   });

   var countChart = new Keen.Dataviz()
       .el(document.getElementById("chart2"))
       .chartType("linechart")
       .height(200)
       .width(250)
       .prepare();

   self.client.run(count, function(err, res) {
       if (err) {
           countChart.error(err.message);
       }
       else {
           countChart
               .parseRequest(this)
               .title("Clicks per Hour")
               .render();
       }
   });
},
```

![](https://github.com/hex337/phonegap-keen/blob/master/imgs/stats_screen.PNG?raw=true)

That's it! This was a very simple example of how you can use Keen's JavaScript library to easily gather data on how your users are interacting with your PhoneGap app and gain some great insights on where you can improve. Once you’re collecting your own important events, you can analyze all of it via [Keen IO's data explorer](https://keen.io/blog/114588771746/introducing-data-explorer) or you can programmatically run queries and embed the results and charts anywhere using [Keen's JavaScript library](https://keen.io/docs/api/?javascript#events). Feel free to fork the sample [Hello World PhoneGap app](https://github.com/hex337/phonegap-keen) to play around with Keen on your own.

It's free to [get started with Keen IO](http://keen.io) and we're giving away 1 month of our startup plan to PhoneGap developers. Just [email us](mailto:team@keen.io) if you hit the Startup tier and we'll apply the discount.

Questions? Feel free to [Slack with us](http://slack.keen.io) about your project or ask us for technical help with your integration!
