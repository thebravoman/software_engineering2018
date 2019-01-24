Rails.application.routes.draw do
  resources :people
  resources :events
  post 'people/:id' => 'people#add_event'
  delete 'people/:id/event/:event_id' => 'people#delete_event'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
