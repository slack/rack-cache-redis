# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rack-cache-redis}
  s.version = "1.0.0.rc1"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Luca Guidi}, %q{Jason Hansen}]
  s.description = %q{Namespaced Rack::Cache Redis store for Ruby web frameworks.}
  s.email = %q{jason@slack.io}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "CHANGELOG",
    "Gemfile",
    "Gemfile.lock",
    "MIT-LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/rack/cache/redis_entitystore.rb",
    "lib/rack/cache/redis_metastore.rb",
    "lib/redis-store.rb",
    "lib/redis/distributed_store.rb",
    "lib/redis/factory.rb",
    "lib/redis/store.rb",
    "lib/redis/store/interface.rb",
    "lib/redis/store/marshalling.rb",
    "lib/redis/store/namespace.rb",
    "lib/redis/store/ttl.rb",
    "lib/redis/store/version.rb",
    "rack-cache-redis.gemspec",
    "spec/config/node-one.conf",
    "spec/config/node-two.conf",
    "spec/config/redis.conf",
    "spec/rack/cache/entitystore/pony.jpg",
    "spec/rack/cache/entitystore/redis_spec.rb",
    "spec/rack/cache/metastore/redis_spec.rb",
    "spec/redis/factory_spec.rb",
    "spec/redis/store/interface_spec.rb",
    "spec/redis/store/marshalling_spec.rb",
    "spec/redis/store/namespace_spec.rb",
    "spec/redis/store/version_spec.rb",
    "spec/redis/store_spec.rb",
    "spec/spec_helper.rb",
    "tasks/redis.tasks.rb"
  ]
  s.homepage = %q{http://github.com/slack/rack-cache-redis}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.5}
  s.summary = %q{Namespaced Rack::Cache Redis store for Ruby web frameworks.}
  s.test_files = [
    "spec/rack/cache/entitystore/redis_spec.rb",
    "spec/rack/cache/metastore/redis_spec.rb",
    "spec/redis/distributed_store_spec.rb",
    "spec/redis/factory_spec.rb",
    "spec/redis/store/interface_spec.rb",
    "spec/redis/store/marshalling_spec.rb",
    "spec/redis/store/namespace_spec.rb",
    "spec/redis/store/version_spec.rb",
    "spec/redis/store_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<redis>, ["~> 2.2.0"])
      s.add_development_dependency(%q<git>, [">= 0"])
      s.add_development_dependency(%q<rack-cache>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["= 1.3.0"])
      s.add_development_dependency(%q<ruby-debug>, [">= 0"])
    else
      s.add_dependency(%q<redis>, ["~> 2.2.0"])
      s.add_dependency(%q<git>, [">= 0"])
      s.add_dependency(%q<rack-cache>, [">= 0"])
      s.add_dependency(%q<merb>, ["= 1.1.0"])
      s.add_dependency(%q<rspec>, ["= 1.3.0"])
      s.add_dependency(%q<ruby-debug>, [">= 0"])
    end
  else
    s.add_dependency(%q<redis>, ["~> 2.2.0"])
    s.add_dependency(%q<git>, [">= 0"])
    s.add_dependency(%q<rack-cache>, [">= 0"])
    s.add_dependency(%q<rspec>, ["= 1.3.0"])
    s.add_dependency(%q<ruby-debug>, [">= 0"])
  end
end
