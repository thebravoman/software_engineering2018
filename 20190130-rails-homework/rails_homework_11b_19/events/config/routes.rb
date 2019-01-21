Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events

  resources :person, only: [:show, :new, :create]
  #get '/person/:id', to: 'person#show'
  #get '/person/new', to: 'person#new'
  post "/person/:id/subscribe", to: "person#subscribe"
  delete "/person/:id/unsubscribe/:event_id", to: "person#unsubscribe"
end
