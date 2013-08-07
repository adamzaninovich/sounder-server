require "sinatra"
require "sounder"
require "sounder/server/version"

module Sounder
  class Server < Sinatra::Base
    @@soundpacks = {}
    def self.soundpacks
      @@soundpacks
    end
    def self.register_soundpack name
      @@soundpacks[name] = 'something'
    end

    get '/' do
      'This will eventually list all the sounds'
    end

    get '/system/volume/:level' do |level|
      Sounder::System.set_volume(level)
      "Set volume to #{level}"
    end

    get '/soundpack/:name' do |name|
      "#{name}: #{@@soundpacks[name.to_sym]}"
    end

    get '/sound/:name' do |name|
      "#{name}: #{get_sound(name)}"
    end

    get '/sound/:name/play' do |name|
      self.get_sound(name).play
    end
  end
end
