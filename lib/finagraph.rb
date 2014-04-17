require "finagraph/version"

module Finagraph

  class << self
    attr_accessor :api_key
  end

  self.api_key = nil

  def self.api_key
    @api_key || ENV['FINAGRAPH_API_KEY']
  end

end
