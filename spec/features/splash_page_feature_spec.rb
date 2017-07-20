require 'rails_helper'

feature 'splash page content display' do 
	context 'when a user visits the main page' do 
		scenario 'see the splash page content' do 
			visit '/'

			expect(page).to have_current_path root_path
		end
	end
end