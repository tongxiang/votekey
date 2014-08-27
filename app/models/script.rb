class Script < ActiveRecord::Base
  
  belongs_to :campaign
  
  has_many :script_responses
end
