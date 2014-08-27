class Campaign < ActiveRecord::Base
  
  has_many :users, :people, :scripts
  
  # Sets contacted to false for all people within a campaign
  #
  # Returns result of update_attribute 
  def reset_contacted
    self.people.contacted.update_attribute(contacted: false)
  end
  
  # Sets contacted to true for all people within a campaign
  #
  # Returns result of update_attribute
  def freeze_contacts
    self.people.available.update_attribute(contacted: true)
  end
end
