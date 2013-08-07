require "sinatra"
require "sounder"
require "sounder/server/version"

module Sounder
  class Server < Sinatra::Base
    get '/' do
      'This will eventually list all the sounds'
    end
  end
end
