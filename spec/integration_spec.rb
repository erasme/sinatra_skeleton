require 'spec_helper'

set :environment, :test

def app
  Rack::Builder.new {
    map "/dummy" do
      run Dummy::App.new
    end
  }.to_app
end

describe 'The dummy App' do
  include Rack::Test::Methods

  it "is ok" do
    get '/dummy'
    last_response.should be_ok 	
	end

  it "says hello" do
    get '/dummy'
    last_response.should be_ok
    last_response.body.should == 'Hello, world!'
  end
end

describe 'Tests showcase' do
	it 'is stupid' do
		0.should eq(0)
	end

	it 'matches regexps' do
		"azerty".should match(/[a-z]+/)
	end

	it 'checks identity' do
    String.should be(String)
    a = String.new
  end
end
