require 'rails_helper'

describe ValidUsers do
  context ".load" do
    let(:user) { User.create(nickname: 'Ham') }
    let(:cohort) { Cohort.create(name: "Sock Buns") }

  end
end
