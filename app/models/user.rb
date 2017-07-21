class User < ApplicationRecord
  belongs_to :cohort
  has_many :pitches
  has_many :votes, foreign_key: 'voter_id'

  def self.find_or_create_from_auth(auth)
    nickname = auth['info']['nickname']
    valid_user = ValidUser.find_by(nickname: nickname)
    if valid_user
      user = User.find_or_create_by(provider: auth['provider'], uid: auth['uid'])

      user.nickname = nickname
      user.name = auth['info']['name']
      user.email = auth['info']['email']
      user.token = auth['credentials']['token']
      user.cohort = valid_user.cohort

      user.save
      user
    else
      false
    end
  end

  def make_any_new_votes
    # MUST BE MODIFIED FOR PITCHES IN CURRENT COHORT
    if self.votes.count < Pitch.count
      Pitch.all.each do |pitch|
        Vote.find_or_create_by(voter: self, pitch: pitch)
      end
    end
    self.votes
  end
end
