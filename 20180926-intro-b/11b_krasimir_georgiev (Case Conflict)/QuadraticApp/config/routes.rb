Rails.application.routes.draw do
  get 'quadratic/index'
  get 'equations/new'
  get 'equations/delete'

  get 'equations/display:id', to: 'equations#display'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :equations

  root 'quadratic#index'
end
