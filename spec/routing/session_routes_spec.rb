require 'rails_helper'

RSpec.describe "routing for Sessions", :type => :routing do
  it "routes /auth/:provider/callback to sessions#create" do
    expect(:get => "/auth/github/callback").to route_to(
        :controller => "sessions",
        :action => "create"
      )
  end
  it "routes /logout to sessions#delete" do
    expect(:delete => "/logout").to route_to(
        :controller => "sessions",
        :action => "delete"
      )
  end
end
