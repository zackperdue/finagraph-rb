require 'rest-client'

require "finagraph/request"
require "finagraph/version"
require "finagraph/client"


module Finagraph

  class << self
    attr_accessor :api_key, :base_url
  end

  self.api_key = '7a0a0b79-9b53-409b-be27-fb74b18711f7'
  self.base_url = 'https://app.finagraph.com'

  def self.api_key
    @api_key || ENV['FINAGRAPH_API_KEY']
  end

  def self.base_url
    @base_url ||= ENV['FINAGRAPH_BASE_URL']
  end

end
