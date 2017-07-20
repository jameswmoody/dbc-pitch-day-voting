require 'rails_helper'

describe SessionsController do
  describe "GET #create" do
    # dunno how to stub the request to Github to test this shit
    xit "responds successfully with an HTTP 302 status code" do
      get :create
      expect(response).to have_http_status(302)
    end
  end

  describe "DELETE #delete" do
    it "responds successfully with an HTTP 302 status code" do
      delete :delete
      expect(response).to have_http_status(302)
    end
    xit "logs out the current user" do
      expect{ delete :delete }.to change(session[:user_id]).to(nil)
    end
  end
end
