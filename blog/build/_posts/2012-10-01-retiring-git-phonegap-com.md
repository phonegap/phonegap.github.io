---
tags:
- PhoneGap Build
author: Andrew Lunny
title: Retiring git.phonegap.com
date: Mon Oct 01 10:00:00 -0700 2012
permalink: /blog/build/retiring-git-phonegap-com/
---
tags:
- PhoneGap Build
We're announcing today that our git hosting service, available at 
`git.phonegap.com`, will be shut-down on December 1 this year, in two months. We
will be disabling support for creating new apps linked to `git.phonegap.com` in
the next couple of weeks - we had removed support from the web interface, but
we will also be removing support from our API.

If you're building private apps, please use either upload a zip file or link
your [GitHub](https://github.com) account. If you have an existing app on
`git.phonegap.com` that is not backed up locally, please clone the repository
before December 1. Please [get in touch](http://community.phonegap.com) if you
need help with this.

<!-- end-slug -->

When PhoneGap Build launched in late 2010, we knew that we wanted support for
integrating our service with developers' own version control systems. We
initially supported any public subversion or git repository URL.

Of course, if you're developing an app, you probably don't want the source
repository to be completely public. Our next priority was to allow users to
push privately to PhoneGap Build. Inspired by [Heroku's deployment
approach][hk], we wanted our users to `git push` straight to us, where we would
build their apps.

Getting a git server up and running is pretty easy. Unfortunately, getting a
fault-tolerant, fast, secure, and highly available git server up and running is
not so easy, particularly when you're trying to automate adding users and
repositories to said git server. Anyone familiar with our [community forums][gs]
will have seen the threads when our git server has gone down, and users have
been unable to update their apps at all. This is not a good enough experience
for our users.

Rather than spend more time on this flawed approach, we now support linking
your PhoneGap Build account directly to [GitHub][gh] and connecting your
private repos through their API. GitHub are a fantastic company and the best
in the world at hosting source code repositories. Your code will be in great
hands there.

As `git` is a distributed version control system, just cloning the repo should
be sufficient to get all your data out of the server; but please get in touch
if you have any concerns.

Cheers,

The PhoneGap Build team

[hk]: http://www.heroku.com
[gs]: http://community.phonegap.com
[gh]: https://github.com
