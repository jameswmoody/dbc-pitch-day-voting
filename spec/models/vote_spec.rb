require 'rails_helper'

RSpec.describe Vote, type: :model do
  before(:all) do
    user = User.create(nickname: "tom", name: "tom tom", email: "tom@tom.com", uid: "123456", provider: "github", token: "654321")
    pitch = Pitch.create()
    vote = Vote.create(value: 6)
    vote.user = user
    vote.pitch = pitch
  end
end
