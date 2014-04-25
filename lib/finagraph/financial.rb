module Finagraph
  class Financial < Finagraph::API

    def self.show(cid=nil, type='', sid=nil)
      get "/api/v2/financial/#{cid}/#{type}/#{sid}"
    end

  end
end