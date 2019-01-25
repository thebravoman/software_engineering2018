Rails.application.routes.draw do
  resources :events
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "people#index"

  get "people/:person_id/unsubscribe/:event_id", to: "people#unsubscribe"

  post "people/:person_id/subscribe/", to: "people#subscribe"
  #post "people/"
end
