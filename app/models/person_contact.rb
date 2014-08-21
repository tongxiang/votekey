class PersonContact < ActiveRecord::Base
  
  belongs_to :person, :user, :script_response
  
end
