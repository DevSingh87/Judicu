class SegmentType < ActiveRecord::Base
  attr_accessible :description, :type_name
  attr_accessible :segment_names_attributes
  has_many :segment_names
  accepts_nested_attributes_for :segment_names,
                                :reject_if => :all_blank,
								:allow_destroy => true
								
  validates_associated :segment_names
								
  validates :type_name,
            :presence => true,
			:uniqueness => { :case_sensitive => false }
end
