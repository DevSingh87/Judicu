class CreateCasePeople < ActiveRecord::Migration
  def change
    create_table :case_people do |t|
      t.string :type
	  t.string :name
	  t.string :father_or_husband_name
	  t.integer :age
	  t.string :email
	  t.string :contact_no
	  t.text :address
	  t.text :note
	  t.references :case
      t.timestamps
    end
  end
end
