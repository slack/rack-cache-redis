# Namespaced Rack::Session, Rack::Cache, I18n and cache Redis stores for Ruby web frameworks

## Overview

Simple redis-backed store for Rack::Cache. All credit to [Luca Guidi](https://github.com/jodosha) for [redis-store](https://github.com/jodosha/redis-store).

## Installation

### Redis, Option 1: Homebrew

MacOS X users should use [Homebrew](https://github.com/mxcl/homebrew) to install Redis:

    brew install redis

### Redis, Option 2: From Source

Download and install Redis from [http://code.google.com/p/redis/](http://code.google.com/p/redis/)

    wget http://redis.googlecode.com/files/redis-2.0.0.tar.gz
    tar -zxf redis-2.0.0.tar.gz
    mv redis-2.0.0 redis
    cd redis
    make

### Install the Gem

    gem install rack-cache-redis

## Options
By default the gem will attempt to connect to `localhost` port `6379` and the db `0`.

### Set by URI

For example

    "redis://:secret@192.168.1.100:23682/13/theplaylist"

Made up of the following:

    host: 192.168.1.100
    port: 23682
    db: 13
    namespace: theplaylist
    password: secret

If you want to specify the `namespace` option, you have to pass the `db` param too.

### Set by Hash

    { :host => 192.168.1.100, :port => 23682, :db => 13, :namespace => "theplaylist", :password => "secret" }

## Rack::Cache

Provides a Redis store for HTTP caching. See [http://github.com/rtomayko/rack-cache](http://github.com/rtomayko/rack-cache)

    require "rack"
    require "rack/cache"
    require "redis-store"
    require "application"
    use Rack::Cache,
      :metastore   => 'redis://localhost:6379/0/metastore',
      :entitystore => 'redis://localhost:6380/0/entitystore'
    run Application.new

## Running specs

    gem install bundler
    git clone git://github.com/slack/rack-cache-redis.git
    cd rack-cache-redis
    bundle install
    rake dtach:install
    rake redis:install
    rake

If you are on **Snow Leopard** you have to run `env ARCHFLAGS="-arch x86_64" bundle install`

## Copyright

(c) 2009 - 2010 Luca Guidi - [http://lucaguidi.com](http://lucaguidi.com), released under the MIT license
