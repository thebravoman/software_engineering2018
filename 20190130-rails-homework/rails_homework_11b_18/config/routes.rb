Rails.application.routes.draw do
  post 'attendances/create/:id', :to => 'attendances#create'
  delete 'attendances/delete', :to => 'attendances#destroy'
  root :to => 'events#index'
  resources :people
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
