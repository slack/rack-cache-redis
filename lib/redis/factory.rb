class Redis
  class Factory
    def self.create(*redis_client_options)
      redis_client_options = redis_client_options.flatten.compact.inject([]) do |result, address|
        result << convert_to_redis_client_options(address)
      end
      if redis_client_options.size > 1
        ::Redis::DistributedStore.new redis_client_options
      else
        ::Redis::Store.new redis_client_options.first || {}
      end
    end

    def self.convert_to_redis_client_options(address_or_options)
      if address_or_options.is_a?(Hash)
        address_or_options.dup
      else
        require 'uri'
        uri = URI.parse address_or_options
        _, db, namespace = if uri.path
          uri.path.split /\//
        end

        options = {}
        options[:host]      = uri.host
        options[:port]      = uri.port
        options[:db]        = db.to_i if db
        options[:namespace] = namespace if namespace
        options[:password]  = uri.password
        options
      end
    end
  end
end
