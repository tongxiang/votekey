ActionController::Routing::Routes.draw do |map|
  map.root :controller => "user_sessions", :action => "new" # optional, this just sets the root route
  
  map.completed "/complete", :controller => "contacts", :action => "completed"
  
  map.called "/called", :controller => "contacts", :action => "create"
  
  map.unlock "/unlock", :controller => "contacts", :action => "unlock"
  
  map.resources :user_sessions
  
  map.resources :users
  
  map.resource :account, :controller => "users"
 
  map.call "/call", :controller => "contacts", :action => "new"
  
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
