module Finagraph
  class API
    include HTTParty

    def self.api_key
      Finagraph.api_key
    end

    def self.base_url
      Finagraph.base_url
    end

    def initialize
      self.class.base_uri base_url
      self.class.headers 'Application' => "apikey #{api_key}"
      self.class.format :json
    end

  end

end