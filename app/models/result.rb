class Result < ActiveRecord::Base
  belongs_to :client
  has_many :contacts
  has_many :voters, :through => :contacts
  
  def sum
    return Contact.count(:conditions => {:result_id => self.id})
  end
end
