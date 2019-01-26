Rails.application.routes.draw do
#	post 'attendances/create', to: 'attendances#create'
#  delete 'attendances/delete', to: 'attendances#delete'

  resources :attendances
  resources :people
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
