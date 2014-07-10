class CreateSegmentTypes < ActiveRecord::Migration
  def change
    create_table :segment_types do |t|
      t.string :type_name
      t.text :description

      t.timestamps
    end
  end
end
