class Voter < ActiveRecord::Base
  belongs_to :client
  has_many :contacts
  has_many :results, :through => :contacts
  
  named_scope :unlocked_finder, :conditions => {:locked => false}
  named_scope :locked_finder, :conditions => {:locked => true}
  named_scope :locked_id_finder, lambda {|id| {:conditions => {:locked => true, :id => id}}}
  named_scope :result_finder, lambda {|result_id| {:joins => :contacts, :conditions => {:contacts => {:result_id => result_id}}}}
  
  def lock
    self.locked = true
    self.save
    return self
  end
end
