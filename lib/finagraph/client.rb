module Finagraph
  class Client

    def self.list
      url = Finagraph.base_url+'/api/v2/client'
      RestClient.get url, {'Authorization' => "apikey #{Finagraph.api_key}"}
    end

    def self.create

    end

    def self.show

    end

    def self.update

    end

    private

    def self.request
      @request ||= Finagraph::Request
    end

  end
end