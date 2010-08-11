class Contact < ActiveRecord::Base
  belongs_to :user
  belongs_to :voter
  belongs_to :result
  belongs_to :client
  
  before_create :save_formatted_date
  
  named_scope :today_finder, :conditions => {:date => Date.new(Time.now.year, Time.now.month, Time.now.day)}
  
  def save_formatted_date
    self.date = Date.new(Time.now.year, Time.now.month, Time.now.day)
  end
  
  def set_result(result)
    self.result = result
    return self
  end
end

