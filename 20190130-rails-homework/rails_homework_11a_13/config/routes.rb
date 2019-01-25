Rails.application.routes.draw do
  root to: 'pages#home'
  resources :organisations, :people, :events
  resources :attendances, only: [:new, :create, :destroy]
  resources :organisation_attendances

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
