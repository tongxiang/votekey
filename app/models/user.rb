class User < ActiveRecord::Base
  
  acts_as_authentic
  
  belongs_to :campaign
  
  has_many :person_contacts
  
end
