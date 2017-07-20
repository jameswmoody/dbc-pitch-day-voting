class PitchesController < ApplicationController
  def index
    @pitches = Pitch.all
  end

  def new
    @pitch = Pitch.new
  end

  def create
    @pitch = Pitch.new(pitch_params)
  end

  private
  def pitch_params
    params.require(:pitch).permit(:title, :description, :pitchers)
  end
end
