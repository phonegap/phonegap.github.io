---
tags:
- PhoneGap Build
author: Michael Brooks
title: PhoneGap Build API for Node.js
date: Tue Jan 15 11:39:27 -0800 2013
permalink: /blog/build/phonegap-build-api-for-node/
---

[Adobe PhoneGap Build](http://build.phonegap.com/) has a powerful [RESTful API](http://build.phonegap.com/docs/api) that you can use to tap into PhoneGap Build's functionality. With the API, you can authenticate as a user and create, build, update, and download PhoneGap applications.

<!-- end-slug -->

RESTful APIs are great but not without annoyances. All of the popular programming languages _(and not so popular ones)_ have HTTP libraries for RESTful access. The downside is that you still need to implement the HTTP request and response communication logic. It's not complicated, except with some authentication types. But it is more code to manage and grows as you encounter API quirks.

This is why we use libraries.

[phonegap-build-api-js](https://github.com/mwbrooks/phonegap-build-api-js) is a [published NPM module](https://npmjs.org/package/phonegap-build-api) for accessing the PhoneGap Build API with node.js. It abstracts the HTTP communication, deals with the API quirks, and leaves the rest untouched. In other words, it simplifies accessing the PhoneGap Build API, so that you can focus on integrating it with your product.

- [Source code](https://github.com/mwbrooks/phonegap-build-api-js)
- [Issue tracker](https://github.com/mwbrooks/phonegap-build-api-js/issues)
- [Interface documentation](https://github.com/mwbrooks/phonegap-build-api-js#api)
- [Usage examples](https://github.com/mwbrooks/phonegap-build-api-js#usage)
- [PhoneGap Build API Documentation](http://build.phonegap.com/docs/api)

For your coding pleasure, here is an exhaustive list of usage examples:

### Authentication

    var client = require('phonegap-build-api');

    client.auth({ username: 'zelda', password: 'tr1f0rce' }, function(e, api) {
        // use `api` to make requests
    });

### GET https://build.phonegap.com/api/v1/me

    api.get('/me', function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### GET https://build.phonegap.com/api/v1/apps

    api.get('/apps', function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### GET https://build.phonegap.com/api/v1/apps/:id

    api.get('/apps/199692', function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### GET https://build.phonegap.com/api/v1/apps/:id/icon

    api.get('/apps/199692/icon').pipe(fs.createWriteStream('icon.png'));

### GET https://build.phonegap.com/api/v1/apps/:id/:platform

    api.get('/apps/199692/android').pipe(fs.createWriteStream('app.apk'));

### GET https://build.phonegap.com/api/v1/keys

    api.get('/keys', function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### GET https://build.phonegap.com/api/v1/keys/:platform

    api.get('/keys/ios', function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### GET https://build.phonegap.com/api/v1/keys/:platform/:id

    api.get('/keys/ios/917', function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### POST https://build.phonegap.com/api/v1/apps

    var options = {
        form: {
            data: {
                title: 'My App',
                create_method: 'file'
            },
            file: '/path/to/app.zip'
        }
    };

    api.post('/apps', options, function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### PUT https://build.phonegap.com/api/v1/apps/:id

    var options = {
        form: {
            data: {
                debug: false
            },
            file: '/path/to/app.zip'
        }
    };

    api.put('/apps/197196', options, function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### POST https://build.phonegap.com/api/v1/apps/:id/icon

    var options = {
        form: {
            icon: 'my-icon.png'
        }
    };

    api.post('/apps/232741/icon', options, function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### POST https://build.phonegap.com/api/v1/apps/:id/build

Build all platforms:

    api.post('/apps/232741/build', function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });
 
Build specific platforms:

    var options = {
        form: {
            data: {
                platforms: [ 'android', 'blackberry', 'ios', 'winphone', 'webos' ]
            }
        }
    };

    api.post('/apps/232741/build', options, function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### POST https://build.phonegap.com/api/v1/apps/:id/build/:platform

    api.post('/apps/232741/build/android', function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### POST https://build.phonegap.com/api/v1/apps/:id/collaborators

    var options = {
        form: {
            data: {
                email: 'michael@michaelbrooks.ca',
                role: 'dev'
            }
        }
    };

    api.post('/apps/232741/collaborators', options, function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### PUT https://build.phonegap.com/api/v1/apps/:id/collaborators/:id

    var options = {
        form: {
            data: {
                role: 'tester'
            }
        }
    };

    api.put('/apps/232741/collaborators/263955', options, function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### POST https://build.phonegap.com/api/v1/keys/:platform

    var options = {
        form: {
            data: {
                title: 'My BlackBerry Signing Key',
                password: 'my-password'
            },
            db: '/path/to/sigtool.db',
            csk: '/path/to/sigtool.csk'
        }
    };

    api.post('/keys/blackberry', options, function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### PUT https://build.phonegap.com/api/v1/keys/:platform/:id

    var options = {
        form: {
            data: {
                password: 'my-updated-password'
            }
        }
    };

    api.put('/keys/blackberry/1505', options, function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### DELETE https://build.phonegap.com/api/v1/apps/:id

    api.del('/apps/14450', function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### DELETE https://build.phonegap.com/api/v1/apps/:id/collaborators/:id

    api.del('/apps/232741/collaborators/263955', function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

### DELETE https://build.phonegap.com/api/v1/keys/:platform/:id

    api.del('/keys/ios/2729', function(e, data) {
        console.log('error:', e);
        console.log('data:', data);
    });

Enjoy!

*Originally posted on [http://log.michaelbrooks.ca/](http://log.michaelbrooks.ca/post/phonegap-build-api-for-node.js)*

