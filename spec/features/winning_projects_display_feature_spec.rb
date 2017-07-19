require 'rails_helper'

feature 'displaying past winning projects' do
  context 'when a user is logged in' do
    scenario 'sees past winning projects on the index' do
      pitch_one = {
        title: Faker::Lovecraft.sentence,
        description: Faker::Lovecraft.paragraphs(3).join(" "),
        pitchers: Faker::Lovecraft.deity
      }
      pitch_two = {
        title: Faker::Lovecraft.sentence,
        description: Faker::Lovecraft.paragraphs(3).join(" "),
        pitchers: [Faker::Lovecraft.deity, Faker::Lovecraft.deity]
      }
      pitch_obj_one = Pitch.create(pitch_one)
      pitch_obj_two = Pitch.create(pitch_two)

      visit '/'

      expect(page).to have_content pitch_obj_one.title
      expect(page).to have_content pitch_obj_one.pitcher
      expect(page).to have_content pitch_obj_two.description
      expect(page).to have_content pitch_obj_two.pitcher.join(', ')
    end
  end
end
