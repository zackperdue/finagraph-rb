module Finagraph
  class API
    include HTTParty

    def self.api_key
      @api_key ||= Finagraph.api_key
    end

    def base_url
      @base_url || Finagraph.base_url
    end

  end

end

Finagraph::API.base_uri Finagraph.base_url
Finagraph::API.headers 'Authorization' => "apikey #{Finagraph.api_key}"
Finagraph::API.format :json