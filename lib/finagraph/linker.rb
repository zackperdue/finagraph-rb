module Finagraph
  class Linker < API

    def self.prepare(cid=nil)
      post '/'
    end

    def self.status(cid=nil)
      get '/'
    end

  end
end