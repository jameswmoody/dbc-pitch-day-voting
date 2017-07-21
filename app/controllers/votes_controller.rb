class VotesController < ApplicationController
	def index
		@pitches = Pitch.all
	end
  def create

  end
end
