Rails.application.routes.draw do
  get 'articles/index'

  resources :articles

  root 'articles#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
