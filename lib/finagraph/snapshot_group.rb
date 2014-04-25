module Finagraph
  class SnapshotGroup < API

    def self.list(gid=nil)
      get "/api/v2/snapshotgroup/#{gid}"
    end

  end
end