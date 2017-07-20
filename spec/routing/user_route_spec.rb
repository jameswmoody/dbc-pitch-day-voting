require 'rails_helper'

RSpec.describe "routing for users", :type => :routing do
  it "routes /auth/:provider/callback to users#token" do
    expect(:get => "/auth/github/callback").to route_to(
        :controller => "users",
        :action => "create"
      )
  end
end
