require 'rails_helper'

RSpec.describe Vote, type: :model do
  before(:all) do
    user = User.create(nickname: "tom", name: "tom tom", email: "tom@tom.com", uid: "123456", provider: "github", token: "654321")
    pitch = Pitch.create(title: "Some pitch", description: "This shit is perfect", pitchers: "#{user.name}")
    vote = Vote.create(value: 6, voter: user, pitch:, pitch)
  end
  after(:all) do
    User.destroy_all
    Pitch.destroy_all
    Vote.destroy_all
  end

  let(:vote) { Vote.last }
  describe "has attribute" do
    it "value" do
      expect(vote.value).to eq 6
    end

  end
end
