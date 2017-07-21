require 'rails_helper'

RSpec.describe Vote, type: :model do
  before(:all) do
    user = User.create(nickname: "dhnaranjo", name: "tom tom", email: "tom@tom.com", uid: "123456", provider: "github", token: "654321", cohort: Cohort.find_by(name: 'Rock Doves'))
    pitch = Pitch.create(title: "Some pitch", description: "This shit is perfect", pitchers: "#{user.name}")
    vote = Vote.create(voter: user, pitch: pitch)
  end
  after(:all) do
    User.destroy_all
    Pitch.destroy_all
    Vote.destroy_all
  end
  let(:user) { User.last }
  let(:vote) { Vote.last }
  let(:pitch) { Pitch.last }
  describe "has attribute" do
    it "belongs to a voter" do
      expect(vote.voter).to eq user
    end
    it "belogs to a pitch" do
      expect(vote.pitch).to eq pitch
    end
  end
end
