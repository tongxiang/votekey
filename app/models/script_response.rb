class ScriptResponse < ActiveRecord::Base
  
  belongs_to :script
  
  has_many :person_contacts
  
end
