Spree Resale
=========

Spree extension for Resale users. Adds fields resale_price and resale_min_quantity. Tested on Spree 2.4.

Installation
------------

Add spree, spree_auth and spree_resale to your Gemfile:

```ruby
gem 'spree', :git => 'https://github.com/spree/spree.git', :branch => '2-4-stable'
gem 'spree_gateway', :git => 'https://github.com/spree/spree_gateway.git', :branch => '2-4-stable'
gem 'spree_auth_devise', :git => 'https://github.com/spree/spree_auth_devise.git', :branch => '2-4-stable'
gem 'spree_resale', github: 'williamweckl/spree_resale', branch: 'master'
```

Bundle your dependencies and run the spree and spree_resale installation generator:

```shell
bundle
bundle exec rails g spree:install
bundle exec rails g spree_resale:install
```

Usage
------------

There is a new user role called `resale`. Edit a user and set it to resale to resale prices and minimum amount be applied.

Copyright (c) 2014 spree_resale, released under the New BSD License
