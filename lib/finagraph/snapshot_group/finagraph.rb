module Finagraph
  class SnapshotGroup
    class Finagraph < API

      def self.yearly(gid=nil)
        get "/api/v2/snapshotgroup/#{gid}/finagraph/year"
      end

      def self.quarterly(gid=nil)
        get "/api/v2/snapshotgroup/#{gid}/finagraph/quarter"
      end

      def self.monthly(gid=nil)
        get "/api/v2/snapshotgroup/#{gid}/finagraph/month"
      end

    end
  end
end