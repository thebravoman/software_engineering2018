Rails.application.routes.draw do
  resources :people
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'people#index'
  post "/people/:id/add_event" => 'people#subscribe_event'
  delete "/people/:id/unsubscribe/:event_id" => 'people#unsubscribe_event'
end
