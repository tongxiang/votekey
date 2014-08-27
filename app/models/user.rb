class User < ActiveRecord::Base
  
  belongs_to :campaign
  
  has_many :person_contacts
  has_many :people, foreign_key: :locked_by_id
  
  acts_as_authentic
  
  # Pulls a list of people to contact within the campaign
  #
  # Checks to make sure that the list exists and then locks
  # the list to prevent double contacting.
  # 
  # Accepts the size of the list 
  #
  # Returns a list of People 
  def pull_list size = 5
    people_list = self.campaign.people.available.limit(size)
    unless people_list.count == 0
      Person.lock_list(people_list, self)
    end
    return people_list
  end
  
  # Pulls a person to contact from the active list
  #
  # Checks to make sure that an active list exists,
  # if not, pulls a new list of default size 5
  #
  # Returns a Person
  def pull_person
    return person = self.active_list.try(:first) ? person : self.pull_list.try(:first)
  end
  
  # Returns all people locked by the current user
  # who have not been contacted
  def active_list
    self.people.uncontacted
  end
  
  # Creates an entry with the result of a contact
  #
  # Accepts a Person and a ScriptResponse
  #
  # Returns the result of person.contact!
  def contact_person person, script_response
    PersonContact.create(person: person, script_response: script_response)
    person.contact!
  end
end
