Rails.application.routes.draw do
  resources :users
  resources :documents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'documents#index'
end
