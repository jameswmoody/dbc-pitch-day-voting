class AddVoteRoundToVotes < ActiveRecord::Migration[5.1]
  def change
    add_column :votes, :vote_round, :integer
  end
end
