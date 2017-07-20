require 'rails_helper'

RSpec.describe "routing for users", :type => :routing do
  # moving login from Users Controller to Sessions Controller, because restful
  xit "routes /auth/:provider/callback to users#create" do
    expect(:get => "/auth/github/callback").to route_to(
        :controller => "users",
        :action => "create",
        :provider => "github"
      )
  end
end
