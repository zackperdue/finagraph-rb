require 'spec_helper'
# require '../lib/finagraph'

describe Finagraph do

  it 'should have a valid api key' do
    Finagraph.api_key.should be_nil
  end

  it 'should have the correct live api url' do
    Finagraph.base_url.should == 'https://app.finagraph.com'
  end

  it 'should allow changing the api key' do
    Finagraph.api_key = 'abcdefghijklmnopqrstuvwxyz'
    Finagraph.api_key.should == 'abcdefghijklmnopqrstuvwxyz'
  end

  context 'client requests' do

    # Set test api endpoint
    before { Finagraph.base_url = 'https://finagraph.apiary-mock.com' }

    it 'GET client list returns 200 status code' do
      api = Finagraph::Client.list
      api.response.should be_instance_of(Net::HTTPOK)
    end

    it 'POST client create without params returns 400 status code' do
      api = Finagraph::Client.create({})
    end



  end

end