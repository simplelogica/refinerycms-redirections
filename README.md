This a RefineryCMS plugin for managing redirections from the backend.

Installing
==========

In Gemfile `gem "refinerycms-redirections", "~> 2.0.10.0"`

Run `bundle install`

And then run `rails g refinery:redirections` to install migrations and a configuration initializer.

Current status
==============

The plugin includes a back section for managing the redirections where you can set the original URL, the URL we want to redirect to and the HTTP status code we want to return.

It also includes a set of url params which should be avoided when comparing urls (cause we don't want any campaign params to ruin our redirections, right?).

Redirections are performed with a mix of rack-rewrite rules and a plain old controller. Each option had its drawbacks so we thought it would be great to have both and being able to disable each of them from the config file.

Wishlist
========

* Redirections are quite regular data and they could be managed through a CSV or XLS file. It would be great *to import such a file with redirections*

* *Priority*

* Support Regexp redirections: Right now, regexp are supported (I think) via rack rewrite, but if we want regexp supported in the controller version we should research about database regexp support
