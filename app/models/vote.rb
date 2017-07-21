class Vote < ApplicationRecord
  belongs_to :voter, class_name: :User
  belongs_to :pitch

  def rank_up
    if self != Vote.first
      higher_vote = Vote.find(self.id - 1)
      self.pitch, higher_vote.pitch = higher_vote.pitch, self.pitch
      self.save
      higher_vote.save
    end
    self
  end

  def rank_down
    if self != Vote.last
      higher_vote = Vote.find(self.id + 1)
      self.pitch, higher_vote.pitch = higher_vote.pitch, self.pitch
      self.save
      higher_vote.save
    end
    self
  end
end
