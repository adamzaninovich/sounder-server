require 'rspec'
require 'rack/test'
require 'sounder/server'

ENV['RACK_ENV'] = 'test'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end
