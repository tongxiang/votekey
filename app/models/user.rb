class User < ActiveRecord::Base
  belongs_to :client
  has_many :contacts
  
  acts_as_authentic
  
  validates_uniqueness_of :email
  
  def new_contact
    voter = self.client.voters.pull_unlocked
    if !voter.nil?
      voter.lock
      return Contact.create(:voter => voter, :user => self, :client => self.client)
    end
    return false
  end
  
  def total_contacts
    return Contact.count(:conditions => {:user_id => self.id})
  end
end
