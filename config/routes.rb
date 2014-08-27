Votekey::Application.routes.draw do
  resources :users
  resource :user_session
  root :controller => "user_sessions", :action => "new"
end
