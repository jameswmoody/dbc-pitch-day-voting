require 'rails_helper'

describe PagesController do
	describe "GET #welcome" do 
		it 'responds with status 200' do
			get :welcome
			expect(response).to have_http_status(200)
		end
	end
end