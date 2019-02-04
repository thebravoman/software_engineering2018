Rails.application.routes.draw do
  resources :events
  resources :people
  resources :attendances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
