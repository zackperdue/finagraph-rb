module Finagraph
  class API
    include HTTParty

    def self.api_key
      @api_key ||= Finagraph.api_key
    end

    def self.base_url
      @base_url || Finagraph.base_url
    end

    base_uri self.base_url
    base_uri @base_url
    base_uri Finagraph.base_url

    headers 'Authorization' => "apikey #{self.api_key}"
    format :json

  end
end