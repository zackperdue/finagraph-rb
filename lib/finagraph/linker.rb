module Finagraph
  class Linker < API

    def self.prepare(cid=nil)
      post "/api/v2/linker/#{cid}"
    end

    def self.status(cid=nil)
      get "/api/v2/linker/#{cid}"
    end

  end
end