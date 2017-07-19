require 'rails_helper'

describe User do
  describe "has attribute" do
  let(:user) { User.create(nickname: "tom", name: "tom tom", email: "tom@tom.com", uid: "123456", provider: "github", token: "654321")  }
    it "nickname" do
      expect(user.nickname).to eq "tom"
    end

    it "uid" do
      expect(user.uid).to eq "123456"
    end

    it "name" do
      expect(user.name).to eq "tom tom"
    end

    it "provider" do
      expect(user.provider).to eq "github"
    end

    it "token" do
      expect(user.token).to eq "654321"
    end

    it "email" do
      expect(user.email).to eq "tom@tom.com"
    end
  end
end
