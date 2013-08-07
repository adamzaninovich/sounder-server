require 'spec_helper'

describe Sounder::Server do

  def app
    Sounder::Server
  end

  it "says hello" do
    get '/'
    last_response.should be_ok
    last_response.body.should == 'This will eventually list all the sounds'
  end

  describe "Soundpack Registration" do
    before do
      Sounder::Server.register_soundpack :archer
    end

    it 'adds the soundpack to Sounder::Server.soundpacks' do
      Sounder::Server.soundpacks.should have_key :archer
    end

    it 'actually adds the sound'
  end
end
