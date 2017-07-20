require 'rails_helper'

describe PitchesController do


  describe "GET #index" do
    it "responds with status 200" do
      get :index
      expect(response).to have_http_status(200)
    end
    it "renders the :index template" do
      get :index
      expect(response).to render_template("index")
    end
    it "loads all pitches into @pitches" do
      get :index
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

      Pitch.create(pitch_one)
      Pitch.create(pitch_two)
      expect(Pitch.all.count).to eq 2
      expect(assigns(:pitches)).to eq Pitch.all
    end
  end
end

