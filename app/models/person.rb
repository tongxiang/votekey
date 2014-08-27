class Person < ActiveRecord::Base
  
  belongs_to :campaign
  
  has_many :person_contacts
  
  scope :by_campaign, lambda { |campaign| { conditions: { campaign_id: campaign.id } } }
  scope :available, conditions: { locked_by_id: nil, contacted: false }
  scope :locked, where("locked_by_id <> ''") 
  scope :unlocked, conditions: { locked_by_id: nil }
  scope :contacted, conditions: { contacted: true }
  scope :uncontacted, conditions: { contacted: false }
  
  # Locks a list of people to a given user
  # 
  # Accepts a list of People and a User
  #
  # Returns result of update_all
  def self.lock_list people_list, user
    people_list.update_all(locked_by_id: user.id)
  end
  
  # Marks a person as contacted
  #
  # Returns result of update_attribute
  def contact!
    self.update_attributes(contacted: true, locked_by_id: nil)
  end
end
