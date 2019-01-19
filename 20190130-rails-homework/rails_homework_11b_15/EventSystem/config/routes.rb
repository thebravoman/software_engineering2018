Rails.application.routes.draw do
  resources :people
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "people#index"
  get 'people/:id/add_event/:event_id' => 'people#add_event'
end
