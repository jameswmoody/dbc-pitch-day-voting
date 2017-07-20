class CreatePitches < ActiveRecord::Migration[5.1]
  def change
    create_table :pitches do |t|
      t.string :title
      t.text :description
      t.string :pitchers

      t.timestamps
    end
  end
end
