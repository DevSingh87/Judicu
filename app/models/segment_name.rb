class SegmentName < ActiveRecord::Base
  belongs_to :segment_type
  attr_accessible :name, :segment_type_id
  
  validates :name,
            :presence => true
end
