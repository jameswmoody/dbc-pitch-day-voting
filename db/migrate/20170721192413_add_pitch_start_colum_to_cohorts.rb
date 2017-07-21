class AddPitchStartColumToCohorts < ActiveRecord::Migration[5.1]
  def change
    add_column :cohorts, :pitch_start, :date
    add_column :cohorts, :pitch_end, :date
  end
end
