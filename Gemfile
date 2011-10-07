source :gemcutter

gem "redis", "~> 2.2.1"

group :development, :test do
  gem "rake"
  gem "rack-cache"
  gem "rspec", "1.3.0"

  if RUBY_VERSION < '1.9'
    gem "ruby-debug" # linecache isn't compatible with 1.9.2 yet.
  end
end

group :test do
  gem "rack", "~> 1.1.0"
  gem "activesupport", "2.3.11"
  gem "actionpack", "2.3.11"
end
