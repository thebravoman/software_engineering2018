Rails.application.routes.draw do
  resources :organizations
  resources :people
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'people#index'
  
  post "/person/:id/add_event" => 'people#subscribe_event'
  post "/organizations/:id/add_member" => 'organization#add_member'
  
  delete "/organizations/:id/expell_member/member_id" => 'organization#expell_member'
  delete "/person/:id/unsubscribe/:event_id" => 'people#unsubscribe_event'
end
