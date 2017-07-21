class AdminController < ApplicationController
  def index
    @cohort = Cohort.find(Cohort.current_cohort.id)
  end
end
