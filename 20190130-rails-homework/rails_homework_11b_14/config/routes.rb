Rails.application.routes.draw do
  resources :people
  root 'events#index'
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
