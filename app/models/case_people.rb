class CasePeople < ActiveRecord::Base
  belongs_to :case
  validates :name,
             :presence => true, if: :client_name?

  def client_name?
    self.class.name == 'Client'
  end  
end
