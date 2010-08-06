ActionController::Routing::Routes.draw do |map|
  map.root :controller => "user_sessions", :action => "new" # optional, this just sets the root route
  
  map.resource :account, :controller => "users"
  
  map.resource :user_sessions

  map.resources :results

  map.resources :contacts

  map.resources :voters

  map.resources :clients

  map.resources :users
  
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
