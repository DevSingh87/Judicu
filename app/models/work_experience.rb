class WorkExperience < ActiveRecord::Base
  belongs_to :user
  attr_accessible :duration_from_month, :duration_from_year, :duration_to_month, :duration_to_year, :company_name, :location, :designation, :level,                :role_responsibilities, :additional
end
