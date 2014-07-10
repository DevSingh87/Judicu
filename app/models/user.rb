class User < ActiveRecord::Base
  #association with role model
  has_and_belongs_to_many :roles
  #association with work experience
  has_many :work_experiences
  #association with academics
  has_many :academics
  #nested attributes for work experience
  accepts_nested_attributes_for :work_experiences,
                                :reject_if => :all_blank,
								:allow_destroy => true
 #nested attributes for academics
  accepts_nested_attributes_for :academics,
                                :reject_if => :all_blank,
								:allow_destroy => true
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids
  attr_accessible :work_experiences_attributes
  attr_accessible :academics
  
  # The role names are stored as CamelCase in the database. 
  # To access them role names in ruby way we access them with underscore
  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end
  
  # As admin create users, they don't create passwords
  # This generate passowrds automatically when a user is created.
  before_validation :generate_password, :on => :create
  def generate_password
    o =  [('a'..'z'), ('A'..'Z'), (0..9)].map{|i| i.to_a}.flatten
    self.password = self.password_confirmation = (0..16).map{ o[rand(o.length)] }.join if self.password.blank? || self.password.nil?
  end
  
  #after_create :send_welcome_email 
  private

    def send_welcome_email
      UserMailer.signup_confirmation(self).deliver
    end 
	
end
