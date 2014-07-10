class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :case_title
      t.string :case_type
      t.string :case_taken_as
      t.string :case_running_since
      t.string :colony_or_village
      t.string :police_station
      t.string :tehsil
      t.string :district
	  t.string :state
      t.string :acts
      t.text :additional_details

      t.timestamps
    end
  end
end
