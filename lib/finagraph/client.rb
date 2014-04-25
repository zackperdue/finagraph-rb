module Finagraph
  class Client < API

    def self.list
      get '/api/v2/client'
    end

    def self.create(options={})
      post '/api/v2/client', options
    end

    def self.show(cid=nil)
      get "/api/v2/client/#{cid}"
    end

    def self.update(cid=nil, options={})
      put "/api/v2/client/#{cid}", options
    end

  end
end