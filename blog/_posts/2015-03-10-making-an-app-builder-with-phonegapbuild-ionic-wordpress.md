---
date: 2015-03-10 11:00:02
author: Scott Bolinger
title: "Making an app builder with PhoneGap Build + Ionic + WordPress"
tags:
- Guest Post
---

For the past several months I’ve been working on creating an app builder for WordPress called [Reactor](http://reactor.apppresser.com/).

Reactor is a hosted app building environment that utilizes the Phonegap Build developer API to compile hybrid mobile apps.  

The apps are built using the [Ionic Framework](http://ionicframework.com/), and integrated with WordPress website content using the [WP JSON API](http://wp-api.org/). The app builder itself is also built with WordPress, and we use Amazon SNS for push notifications.  

In this article I’ll describe the ins and outs of using the Phonegap Build Developer API for your own application.  

## Using the Phonegap Build Developer API ##

In Reactor, we allow our customers to setup and customize their apps, then they can compile the apps with a couple of clicks. We send a .zip to Phonegap Build through the API, and pull back the QR code so people can download the app directly to their device from within our system.  

![](/uploads/blog/2015-03/phonegap-build-api-article.jpg)

You can choose a signing key to use before building your app, and enter a key password. You can also create new keys, this is all possible through the API.  

The developer API has a lot of great features, and you can do almost anything with it. The documentation is good, as long as you are proficient at curl. I’m not, so I struggled a bit at first, but found some great sample code [here](https://github.com/avtehnik/phonegap-build-php-api/blob/master/phonagap.php) that helped.

It shows you how to make basic requests using PHP. Using this code as a starting point, we extended it to do everything we needed, including creating signing keys, and creating apps with a key/password.  

Here are a few areas where we got hung up, hopefully it helps you.  

## Authentication ##  

To make requests you will need to use authentication. You can either use the account username/password, or an authentication token. We use an auth token because it's easier, and if it were ever compromised it can be easily changed.  

Making a request with an auth token in php looks like this:  

    public function getApps() {
        $this->ch = curl_init();
        curl_setopt($this->ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($this->ch, CURLOPT_SSL_VERIFYPEER, false);
        $auth_token = ‘YOURTOKEN’;
        $url = "https://build.phonegap.com/api/v1/apps?auth_token=" . $auth_token;
        curl_setopt($this->ch, CURLOPT_URL, $url);
        $output = curl_exec($this->ch);
        $obj = json_decode($output);
        return $obj->apps;
    }

You can see how to send the auth token along with other requests in the examples below.

## Using Signing Keys ##  

It didn't take long to do simple tasks like getting app information, or creating an app. It gets more complex when you start dealing with signing keys. To create an iOS app, you have to use a key or else it fails.  

I couldn't find any good code examples of building apps using signing keys in PHP. Here's a few samples of what we use.  

Create an app from a .zip file with no key:  

    public function createApp() {
        $this->ch = curl_init();
        curl_setopt($this->ch, CURLOPT_RETURNTRANSFER, true);
        $url = "https://build.phonegap.com/api/v1/apps?create_method=file";
        $pg_post = array(
            "data" => json_encode( array(
                'create_method' => $createMethod,
                'title' => $title,
                "share" => true
            )),
            "file" => "@" . $file,
            'auth_token' => $auth_token
        );
        curl_setopt($this->ch, CURLOPT_POSTFIELDS, $pg_post);
        curl_setopt($this->ch, CURLOPT_POST, 1);
        curl_setopt($this->ch, CURLOPT_URL, $url);
        $output = curl_exec($this->ch);
    }

The code above uses the file create method, and sends along our zip file with an auth token for authentication.  

Here's how to create an app from a .zip file with an iOS key and password. The only thing that changes is adding a 'keys' array to the data we are sending.  

    $pg_post = array(
        "data" => json_encode( array(
            'create_method' => $createMethod,
            'title' => $title,
            "share" => true,
            'keys' => array(
                'ios' => array(
                  'id' => $ioskeyid,
                  'password' => $ioskeypw
                )
            )
        )),
        "file" => "@" . $file,
        'auth_token' => $auth_token
    );

You'll notice that we added a 'keys' array that contains an existing iOS key ID and password. This would be a key that has already been uploaded to PhoneGap Build.  

In Reactor, we pre-populate a select menu with existing keys, and then show a password field. That way you can use any key/password combination, such as a developer key or a release key.  

## Making your own QR code ##  

After an app is created, you want to see information about it and display a download link.

We need the app title, build status, QR code, etc. All of this is in the return object you get after creating an app through the API, except for the QR code. There's not an endpoint for the QR code itself (that I know of), so we used a bit of a workaround.  

PhoneGap Build uses Google charts to create the QR code, so all we need is the install url to make our own. The url looks like this: `http://build.phonegap.com/apps/XXXXXXX/install/`.

All I did was add the install url to the end of the Google Charts api url. If we put it in an image tag, you get a working app installation QR code.

    <img src="https://chart.googleapis.com/chart?chs=200x200&amp;cht=qr&amp;chl=http://build.phonegap.com/apps/XXXXXXX/install/">

## Adding Signing Keys ##

iOS apps require signing keys, or else PhoneGap Build will not compile them.  

To add a signing key to your PhoneGap Build account with the API, our POST will go a different url, with slightly different data.  

    $pg_post = array(
        "data" => json_encode(array('title' => $title, 'password' => $ioskeypassword)),
        "cert" => "@" . $p12filepath,
        "profile" => "@" . $provisionfilepath,
        'auth_token' => self::$auth_token
    );
    curl_setopt($this->ch, CURLOPT_POSTFIELDS, $pg_post);

You will need to upload a .p12 and .mobileprovision file for iOS, and give the key a title and password.

## Conclusion ##  

As you can see the PhoneGap Build developer API is very robust and can allow you to compile mobile apps from your own application.  

To get started head over to the developer docs [here](http://docs.build.phonegap.com/
en_US/developer_api_api.md.html#PhoneGap%20Build%20Developer%20API).

*Scott Bolinger is the co-creator of Reactor, a mobile app builder for WordPress based businesses. Find him on Twitter @scottbolinger
