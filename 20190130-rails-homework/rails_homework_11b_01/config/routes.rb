Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'events#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  resources :events
  resources :persons

end
