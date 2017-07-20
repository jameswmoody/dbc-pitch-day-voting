class VotesController < ApplicationController
	def index
		@pitches = Pitch.all
	end
end