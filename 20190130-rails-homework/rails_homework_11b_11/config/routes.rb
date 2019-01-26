Rails.application.routes.draw do
  resources :events
  resources :people
  delete 'people/:id/unsubscribe/:event_id', to: 'people#unsubscribe'
  post 'people/:id/subscribe/', to: 'people#subscribe'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
