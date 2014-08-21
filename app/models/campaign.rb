class Campaign < ActiveRecord::Base
  
  has_many :users, :persons, :scripts
  
end
