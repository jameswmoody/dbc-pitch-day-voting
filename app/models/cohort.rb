class Cohort < ApplicationRecord
  has_many :validusers
  has_many :users

  def active
    Date.today.between?(self.start + 9.weeks, self.end)
  end

  def phase_3?
    Date.today.between?(self.start + 15.weeks, self.end)
  end

  def self.current_cohort
    Cohort.all.each do |cohort|
      if cohort.phase_3? && cohort.name != 'Staff'
        return cohort
      end
    end
  end

  def pitch_day?
    cohort = Cohort.current_cohort

    if !cohort.pitch_start
      return false
    elsif cohort.pitch_start && !cohort.pitch_end
      return true
    else
      return false
    end
  end

  def pitch_day_past?
    cohort = Cohort.current_cohort

    if cohort.pitch_start && cohort.pitch_end
      return true
    else
      return false
    end
  end

  def voting_round_one?
    cohort = Cohort.current_cohort

    if !cohort.round_one_voting_start
      return false
    elsif cohort.round_one_voting_start && !cohort.round_one_voting_end
      return true
    else
      return false
    end
  end

  def voting_round_two?
    cohort = Cohort.current_cohort

    if !cohort.round_two_voting_start
      return false
    elsif cohort.round_two_voting_start && !cohort.round_two_voting_end
      return true
    else
      return false
    end
  end
end
