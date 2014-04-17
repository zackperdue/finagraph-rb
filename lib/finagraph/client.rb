module Finagraph
  class Client

    def self.list
        Net::HTTP::get(URI('https://finagraph.apiary-mock.com/api/v2/client'))
    end

    def self.create

    end

    def self.show

    end

    def self.update

    end

  end
end