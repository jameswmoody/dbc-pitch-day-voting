require 'rails_helper'

feature 'voting on pitches' do 
	before(:all) do 
		pitch_one = {
		    title: Faker::Lovecraft.sentence,
		    description: Faker::Lovecraft.paragraphs(3).join(" "),
		    pitchers: Faker::Lovecraft.deity
		}
		pitch_two = {
		    title: Faker::Lovecraft.sentence,
		    description: Faker::Lovecraft.paragraphs(3).join(" "),
		    pitchers: "#{Faker::Lovecraft.deity}, #{Faker::Lovecraft.deity}"
		}
		Pitch.create(pitch_one)
		Pitch.create(pitch_two)
	end

	after(:all) do 
		Pitch.destroy_all
	end

	let(:pitch_obj_one) { Pitch.first } 
	let(:pitch_obj_two)	{ Pitch.last }

	context 'when a user visits the voting page' do 
		scenario 'visit the page that has all of the pitches' do 
			visit '/votes'

			expect(page).to have_current_path votes_path
		end
		scenario 'view all of the available pitches' do
		
			visit '/votes'

			expect(page).to have_content pitch_obj_one.title
			expect(page).to have_content pitch_obj_one.pitchers
			expect(page).to have_content pitch_obj_two.description
			expect(page).to have_content pitch_obj_two.pitchers
		end
		scenario 'the user can rank pitches' do 
			visit '/votes'

			expect(page).
			within("#rank-buttons-container") do
				click_button("#up")
			end
			expect()
		end
		scenario 'the user can hide pitches they do not like' do
			visit '/votes'
			my_box = ""
			
			within("#pitch#{pitch_obj_one.id}") do 
				check 'Hide'
				my_box = find("#hide")
			end
			expect(my_box).to be_checked
		end
		scenario 'the user can submit their final pitch ranking'
		scenario 'the user can edit their pitch ranking'
	end
end