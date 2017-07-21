class Cohort < ApplicationRecord
  has_many :validusers
  has_many :users

  def active?
    Date.today.between?(self.start, self.end)
  end
end
