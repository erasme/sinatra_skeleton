if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start
end

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'sinatra'
require 'rack/test'
#require 'rspec'


# Setup test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

#SimpleCov.start

#class Test::Unit::TestCase
#  def app 
#    @app ||= Rack::Server.new.app
#  end 
#end
#
#


RSpec.configure do |config|
    config.include Rack::Test::Methods
end

