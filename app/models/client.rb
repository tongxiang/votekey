class Client < ActiveRecord::Base
  has_many :users
  has_many :voters
  has_many :results
  has_many :contacts
  
  named_scope :subdomain_finder, lambda {|subdomain| {:conditions => {:subdomain => subdomain}}}
  
  def total_contacts
    return Contact.count(:conditions => {:client_id => self.id})
  end
  
  def result_aggregates
    Result.all.each do |result|
      result_aggregates << {:result => result, :sum => result.sum}
    end
    return result_aggregates
  end
  
  def to_s
    return self.name
  end
end