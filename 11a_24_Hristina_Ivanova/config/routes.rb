Rails.application.routes.draw do
  devise_for :users
  resources :documents
  #resources :users
  resources :documents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'documents#index'
  #get '/users/:id/confirm' => 'users#confirm'
end
