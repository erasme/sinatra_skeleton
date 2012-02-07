require 'spec_helper'

set :environment, :test

describe 'The dummy App' do
  include Rack::Test::Methods

  def app
    Dummy::App
  end

  it "is ok" do
    get '/'
    last_response.should be_ok 	
	end

  it "says hello" do
    get '/'
    last_response.should be_ok
    last_response.body.should == 'Hello, world!'
  end

  it "has stupid methods" do
    Dummy::App.just_a_standard_method(42).should eq(42)
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
