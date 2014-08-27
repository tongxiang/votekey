class PersonContactsController < ApplicationController
  
  before_filter :require_user
  
  def new
    @person = @current_user.pull_person
    @script = @current_user.campaign.active_script
  end
  
  def create
    
  end
end