require 'rails_helper'

RSpec.describe "routing for pages", :type => :routing do
  it "routes / to pages#welcome" do
    expect(:get => "/").to route_to('pages#welcome')
  end
end
