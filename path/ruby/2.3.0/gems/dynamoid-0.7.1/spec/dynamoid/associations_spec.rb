require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Dynamoid::Associations" do
  
  before do
    @magazine = Magazine.create
  end
  
  it 'defines a getter' do
    @magazine.should respond_to :subscriptions
  end
  
  it 'defines a setter' do
    @magazine.should respond_to :subscriptions=
  end
end
