require 'rails_helper'

RSpec.describe "Routing", type: :routing do

  context 'index' do
    it "routes '/' to application#index" do
      expect(get: '/').to route_to('pitches#index')
    end
  end

  context 'pitches' do
    it "routes '/pitches/new' to pitches#new" do
      expect(get: '/pitches/new').to route_to('pitches#new')
    end
  end
end
