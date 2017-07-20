require 'rails_helper'

describe UsersController do
  describe "GET #create" do
    xit "responds successfully with an HTTP 302 status code" do
      get :create
      expect(response).to have_http_status(302)
    end
  end
end
