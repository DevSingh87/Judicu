class Case < ActiveRecord::Base
  attr_accessible :acts, :additional_details, :case_running_since, :case_taken_as, :case_title, :case_type, :colony_or_village, :district, :state, :police_station, :tehsil
  
  attr_accessible :clients_attributes
  has_many :clients
  accepts_nested_attributes_for :clients,
                                :reject_if => :all_blank,
								:allow_destroy => true
								
  validates_associated :case_persons
  
  attr_accessible :opponents_attributes
  has_many :opponents
  accepts_nested_attributes_for :opponents,
                                :reject_if => :all_blank,
								:allow_destroy => true
								
  validates_associated :opponents
  
end
