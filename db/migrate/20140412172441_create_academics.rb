class CreateAcademics < ActiveRecord::Migration
  def self.up
    create_table :academics do |t|
	  t.references :user
	  t.string :edu_level
	  t.string :course_type
	  t.string :course_name
	  t.string :specialization
      t.string :duration_from
	  t.string :duration_to
	  t.string :institute
      
    end
  end
 
end
