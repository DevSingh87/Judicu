class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
		t.references :user
		t.string  :duration_from_month
		t.integer :duration_from_year
		t.string  :duration_to_month
		t.integer :duration_to_year
		t.string  :company_name
		t.string  :location
		t.string  :designation
		t.string  :level
		t.text    :role_responsibilities
		t.text    :additional
    end
  end
end
