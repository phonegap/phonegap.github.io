---
date: 2015-10-27 09:00:03
author: Martin Poschenrieder
title: "Automated Testing of PhoneGap & Cordova Apps"
tags:
- Guest Post
---

As a company that automates mobile application testing, we see our fair share of different technologies. Today, we want to highlight apps developed using the Phonegap/Cordova framework. We will demonstrate a few examples of how to automate functional testing for this framework. These so-called “hybrid” apps use html, css, and/or javascript as part of a general native wrapper. Testmunk is the perfect platform for testing such apps, because our testing technology leverages [“Cross Platform Testing.”](http://blog.testmunk.com/cross-platform-mobile-testing-page-object/) Cross Platform Testing means that test cases that were scripted for one platform (for example iOS) can easily be executed on another (e.g. Android) platform as well, saving resources and time.

In the paragraphs below, we’ll show you a couple of examples of how we set up some sample test cases to interact with webviews. Our testing framework can query all elements in these hybrid Phonegap / Cordova apps and thus interact with them. Testmunk can perform various gestures such as scroll, swipe, touch and, of course, assert the UI view for the correct elements, which allows for automated testing for hybrid Phonegap/Cordova apps.

![](/uploads/blog/2015-10/phonegap-cordova-logos.png)

##What is a "Hybrid" app?##

A hybrid app is a native application containing a hidden browser called a webview. The webview presents all the views of an app that were built with web technologies like HTML5, CSS, and JavaScript. Using frameworks like Cordova and PhoneGap, you can run the web app as a native application, which will allow you to take advantage of system features like camera, geolocation, sound, etc.

##PhoneGap/Cordova App Testing Challenges##

In our efforts to improve the testing experience of various companies, we have noticed that development of hybrid apps requires developers and QA to pay particular attention to the following testing challenges:

- Layout and rendering issues across various devices
- Test performance can vary greatly based on processor and device specifics (particularly load time)
- Crashes on specific Android and iOS devices, and OS versions

#PhoneGap app: Clients-Guide™#

![](/uploads/blog/2015-10/clients-guide-logo.png)

##Company behind the app:##

[Flyacts](http://www.flyacts.com/) is a development company based in Germany focused on multi-channel application development.
Clients-Guide™ is a mobile CRM (Customer Relationship Management) system to manage client activities and information. It offers a free version allowing address and customer management for your smartphone/tablet, or you can take advantage of data synchronization to the master data by purchasing their Five Star Server Edition.

#Example Teststep:##

    Touching a button:
    And I press add new customer button

##The underlying implementation:##

    When(/^I press customers icon$/) do
       touch "* index:3 css:'*' {class CONTAINS 'icon-new'}"
    end

##The actual execution on the Testmunk dashboard:##

![](/uploads/blog/2015-10/clients-guide-dashboard-execution.png)Testmunk Dashboard Execution

##Example Teststep:##

    Entering text into a textfield

##The underlying implementation:##

    And(/^I enter "([^"]*)" as the title$/) do |arg|
      enter_text "css:'INPUT' index:0", arg
    end

##The actual execution on the Testmunk dashboard:##

![](/uploads/blog/2015-10/clients-guide-dashboard-execution-enter-mobile-testing-ios.png)iOS Testmunk Dashboard Execution: Entering Text

![](/uploads/blog/2015-10/clients-guide-dashboard-execution-enter-mobile-testing-android.png)Android Testmunk Dashboard Execution: Entering Text

The full execution of the test run can be seen here:

- [iOS](https://testmunk.com/testrun/560d8e14e4b04605e211b65b/testcase/560d8e16744ea39dae69f617)
- [Android](https://testmunk.com/testrun/560d7ebee4b0bba21c244487/testcase/560d7ebe3004f592f94de3a6)

#PhoneGap app: RemindZapp#

![](/uploads/blog/2015-10/remindzapp-screenshots.png)RemindZapp UI

##Company behind the app:##

[Ouzelsystems](http://ouzelsystems.com/) is a app development company based in Pakistan, founded with “the goal of bridging the gap between information technology and today’s business requirements.”

[RemindZapp](http://remindzapp.com/) is an app that lets you remind your friends about specific events or meetings they shouldn’t forget. This app is truly cross-platform covering iOS, Android, Windows Phone as well as web.

##Example Teststep:##

    Asserting the User Interface
    Then I should see Add People "1"

##The underlying implementation of the automated testcase##

    Then(/^I should see Add People "([^"]*)"$/) do |arg|
    wait_for_element_exists “SystemWebView css:'.white-lists-title' {textContent CONTAINS 'Add People #{i}'}" end

##The actual execution on the Testmunk dashboard:##

![](/uploads/blog/2015-10/remindzapp-testmunk-dashboard-execution.png)Android Testmunk Dashboard Execution: Asserting User Interface

The full execution of the test run can be seen here:

- [RemindZapp: 2 automated android testcases](https://testmunk.com/testrun/55f9861ce4b00e92161e5a5e)

#How can I get started?#

The above examples provide a basic overview of how [Testmunk](https://testmunk.com/) performs testing for some of the basic technical implementations around touches, entering text and assertions. These are some of the most basic steps around mobile test automation using the [Calabash testframework](http://docs.testmunk.com/en/latest/steps.html). At Testmunk, our expertise in automated functional testing has allowed each of our clients to improve their automation coverage, sometimes up to 70%. If you are using Phonegap / Cordova in your development process, we’d love to hear from you and show you a personalized testmunk demo based on your app.

*About the author:*
*Martin Poschenrieder has been working in the mobile industry for most of the past decade. He began his career as an intern for one of the few German handset manufacturers, years before Android and iPhone were launched. After involvement with several app projects, he soon realized that one of the biggest pain-points in development was mobile app testing. In order to ease this pain, he started Testmunk. Testmunk is based in Silicon Valley, and provides automated app testing over the cloud.*
*[Follow Martin on twitter](https://twitter.com/mposchenrieder)*