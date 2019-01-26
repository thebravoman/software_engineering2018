Rails.application.routes.draw do
  get 'attendances/new'
  get 'attendances/show'
  get 'attendances/destroy'
  resources :people
  root 'events#index'
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
