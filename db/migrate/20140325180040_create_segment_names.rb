class CreateSegmentNames < ActiveRecord::Migration
  def change
    create_table :segment_names do |t|
      t.string :name
      t.references :segment_type

      t.timestamps
    end
    
  end
end
