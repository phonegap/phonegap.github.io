# PhoneGap.com Next [![Travis CI Build Status](https://api.travis-ci.org/phonegap/phonegap.github.io.svg)](https://travis-ci.org/phonegap/phonegap.github.io)

PhoneGap's future website.

This is a fairly vanilla [Jekyll](http://jekyllrb.com)/[GitHub Pages](https://pages.github.com/) site. It has been optimized for improved page loading speed; see [this article](http://garthdb.com/writings/i-am-a-jekyll-god/) for a full description.

## Setup

```bash
$ brew install ruby
$ bundle install
```

_Ensure that you are using Ruby 2.x._

## Build and Serve Locally

Run this command:

```bash
$ rake
```

Open a browser to `http://localhost:4000`

## Test Locally

The site is using [Travis CI](https://travis-ci.org/phonegap/phonegap.github.io) and [HTML Proofer](https://github.com/gjtorikian/html-proofer) to check the html and referenced urls. Before you make a pull request it's a good idea to run the tests locally first.

Just run the command:

```bash
$ rake test
```

The output should be something like:

```bash
Running ["ScriptCheck", "LinkCheck", "ImageCheck"] checks on ./_site on *.html...


Checking 7 external links...
Ran on 3 files!


HTML-Proofer finished successfully.
```

If it finds any errors be sure to fix them before making the pull-request.
