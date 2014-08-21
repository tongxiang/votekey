class Person < ActiveRecord::Base
  
  belongs_to :campaign
  
  has_many :person_contacts
  
end
