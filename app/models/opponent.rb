class Opponent < CasePeople
  attr_accessible :type, :name, :father_or_husband_name, :age, :contact_no, :email, :address, :note
  
  validates :name,
             :presence => true
end
