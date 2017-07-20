class CreateCohorts < ActiveRecord::Migration[5.1]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.date :start
      t.date :end
    end
  end
end
