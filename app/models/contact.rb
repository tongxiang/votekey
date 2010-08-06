class Contact < ActiveRecord::Base
  belongs_to :user
  belongs_to :voter
  belongs_to :result
  belongs_to :client
end
