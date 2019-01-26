Rails.application.routes.draw do
  resources :organizations
  resources :people
  resources :events
  post 'people/:id/event' => 'people#add_event'
  delete 'people/:id/event/:event_id' => 'people#delete_event'
  post 'people/:id/organization' => 'people#add_organization'

  post 'organizations/:id' => 'organizations#add_event'
  delete 'organizations/:id/event/:event_id' => 'organizations#delete_event'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
