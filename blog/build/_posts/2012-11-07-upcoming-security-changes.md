---
tags:
- PhoneGap Build
author: Andrew Lunny
title: Upcoming Security Changes
date: Wed Nov 07 11:49:46 -0700 2012
permalink: /blog/build/upcoming-security-changes/
---
tags:
- PhoneGap Build
Hi everyone,

We're making some small changes to how we handle signing keys on PhoneGap Build,
in order to better protect your user credentials. These changes will go live on
_December 12_ (formerly scheduled for November 15).

These changes are not in response to any attacks on PhoneGap Build - to
our knowledge, we have never had a breach of user data on PhoneGap Build. These
changes will help us keep it that way.

Here's what you need to know:

* We will no longer permanently store passwords for any signing keys.
* For iOS Developer certificates, we will retain your passwords for one month.
* For your iOS distribution certificates (Ad Hoc or App Store), Android release
keys, or BlackBerry signing keys, we will retain your passwords for one hour at
a time. This hour timeout period will be renewed every time you use the keys
for a build.
* Because of this, you will no longer be able to set a default signing key for
Android or BlackBerry builds, or set an iOS distribution certificate as your
default certificate.
* Once the password has expired (after a month or an hour), you will need to
unlock your key by providing the password(s) (for Android, both the key password
_and_ the keystore password).

Please remember to __always have a local copy of your signing keys__ and
__always keep your signing keys password(s) at hand__.

If you're just using PhoneGap Build through the web interface at
[build.phonegap.com](https://build.phonegap.com), you will be able to handle all
this easily. The site will be updated on December 12.

If you're using the [PhoneGap Build API](https://build.phonegap.com/docs/api)
there are a couple of other related changes you need to take into account.

<!-- end-slug -->

## Creating a new app

When creating a new app, if you wish to build immediately with a release or
distribution key, you will need to provide the unlocking credentials along with
the key ID:

<pre><strong>$ curl -F file=@/Users/alunny/index.html
-u alunny@adobe.com -F 'data={"title":"API V1 App",
"package":"com.alunny.apiv1","version":"0.1.0",
"create_method":"file",
"keys"{"android":{"id":567,
"key_pw":"asdfasdf", "keystore_pw":"hjklhjkl"}}'
https://build.phonegap.com/api/v1/apps</strong></pre>

If you just provide the key id and the key is locked, you will receive a `401`
(unauthorized) response status, along with an error message instructing you to
unlock the key. You can then either repeat the create request (with the
password(s) in place), or unlock the key through a separate API call.

## Updating an app

The same applies to switching the key for an existing app - you will need to
provide the unlocking credentials as part of the update request, or make a
separate unlock request beforehand.

## Creating a signing key

Whenever you read or write to a signing key, the response will include a new
boolean field called `"locked"`, which indicates whether the key is locked or
not. If you provide the password(s) when creating the key, it will be unlocked
immediately (for the next hour).

In addition, iOS keys will include a `"role"` field, that indicates whether the
certificate is recognized as a distribution certificate or a development
certificate. As mentioned above, development certificates will be unlocked for a
month at a time, while distribution certificates will be unlocked for an hour.

BlackBerry and Android keys will be unlocked for an hour.

<pre><strong>$ curl -u alunny@adobe.com
-F cert=@AdHoc.p12
-F profile=@MyDevices.mobileprovision
-F 'data={"title":"Distribution Cert",
"password":"12345678"}'
https://build.phonegap.com/api/v1/keys/ios</strong></pre>
     {
        "title":"Distribution Cert",
        "default":false,
        "id":11,
        "link":"/api/v1/keys/ios/11",
        "provision":"meandmyteam.mobileprovision",
        "cert_name":"My_Certificate.p12",
        "locked":false,
        "role":"distribution"
     }

## Unlocking a key

To unlock a key, you will need to make a `PUT` request. Here is a request to
unlock the key that we locked in the previous example:

<pre><strong>$ curl -u alunny@adobe.com
-X PUT -d 'data={"password":"12345678"}'
https://build.phonegap.com/api/v1/keys/ios/11</strong></pre>
     {
        "title":"Distribution Cert",
        "default":false,
        "id":11,
        "link":"/api/v1/keys/ios/11",
        "provision":"meandmyteam.mobileprovision",
        "cert_name":"My_Certificate.p12",
        "locked":false,
        "role":"distribution"
     }

Not that unlocking a key __does not verify the password__ of a key. We do not
verify your signing key passwords before build times, and we only try to access
your certificate data at build times.
