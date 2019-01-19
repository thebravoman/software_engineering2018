Rails.application.routes.draw do
  resources :people
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/people/:person_id/add_event" => 'people#add_event'

end
