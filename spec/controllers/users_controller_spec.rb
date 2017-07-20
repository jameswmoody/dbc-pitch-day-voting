require 'rails_helper'

describe UsersController do
  describe "GET #create" do
    it "responds successfully with an HTTP 200 status code" do
      get :create
      expect(response).to have_http_status(302)
    end
  end
end
