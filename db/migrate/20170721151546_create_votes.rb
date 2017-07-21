class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :value
      t.references :voter, foreign_key: true
      t.references :pitch, foreign_key: true

      t.timestamps
    end
  end
end
