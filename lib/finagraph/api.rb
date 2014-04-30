module Finagraph
  class API
    include HTTParty

    def self.api_key
      @api_key ||= Finagraph.api_key
    end

    base_uri 'https://finagraph.apiary-mock.com'
    headers 'Authorization' => "apikey #{@api_key}"
    format :json

  end
end