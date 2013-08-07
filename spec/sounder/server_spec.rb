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
end
