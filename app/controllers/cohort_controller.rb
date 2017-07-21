class CohortController < ApplicationController
  def update
    if params[:cohort][:admin_action] == 'pitch_start'
      cohort = Cohort.find(params[:cohort][:id])
      cohort.pitch_start = Time.new
    elsif params[:cohort][:admin_action] == 'pitch_end'
      cohort = Cohort.find(params[:cohort][:id])
      cohort.pitch_end = Time.new
    end
    cohort.save
    redirect_to admin_path
  end
end
