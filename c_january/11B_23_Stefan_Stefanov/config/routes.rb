Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main#index'
  # get '/patients/:id', to: 'patients#show', as: 'patient'
  resources :documents
end
