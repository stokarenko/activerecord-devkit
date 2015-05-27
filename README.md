Activerecord Devkit
===================
[![Version](https://badge.fury.io/rb/activerecord-devkit.svg)](http://badge.fury.io/rb/activerecord-devkit)
[![Build](https://travis-ci.org/stokarenko/activerecord-devkit.svg?branch=master)](https://travis-ci.org/stokarenko/activerecord-devkit)
[![Climate](https://codeclimate.com/github/stokarenko/activerecord-devkit/badges/gpa.svg)](https://codeclimate.com/github/stokarenko/activerecord-devkit)
[![Coverage](https://codeclimate.com/github/stokarenko/activerecord-devkit/badges/coverage.svg)](https://codeclimate.com/github/stokarenko/activerecord-devkit/coverage)

ActiveRecord DevKit is a package of utility Ruby Features for ActiveRecord.

## requirements
* Ruby >= 1.9.3
* [ruby-features](https://github.com/stokarenko/ruby-features) >= 1.1.1
* ActiveRecord >= 3.2.13

## Getting started
Add to your Gemfile:

```ruby
gem 'activerecord-devkit'
```

Run the bundle command to install it.

For Rails projects, gun generator:
```console
rails generate ruby_features:install
```

and apply required features in `config/initializers/ruby-features.rb`:
```ruby
RubyFeatures.apply('activerecord_devkit/association_soft_build')
```

For no-Rails usage, apply required features just like:
```ruby
require 'activerecord-devkit'

RubyFeatures.apply('activerecord_devkit/association_soft_build')
```

## Features
### activerecord_devkit/association_soft_build
Makes possible to build associated object without affecting to parent object's association scope:
```ruby
user = User.first

## Regular build, user.roles.size going to be incremented
new_role = user.roles.build

## Soft build, user.roles.size will stay as is
new_role = user.roles.soft_build
# or
new_role = user.association(:roles).soft_build
# or
new_role = user.roles.where(name: 'admin').soft_build
```

## License
MIT License. Copyright (c) 2015 Sergey Tokarenko
