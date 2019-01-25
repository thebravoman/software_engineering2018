Rails.application.routes.draw do
  resources :organisations
  resources :events
  resources :people
  #revert attendances from being a resource
  resources :attendances

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
