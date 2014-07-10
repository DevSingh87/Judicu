class Academic < ActiveRecord::Base
  belongs_to :user
  attr_accessible :edu_level, :course_type, :course_name, :specialization, :duration_from, :duration_to, :institute
end
