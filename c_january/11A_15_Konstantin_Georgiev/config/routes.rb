Rails.application.routes.draw do
  get 'documents/index'
  get 'documents/new'
  get 'documents/create'
  get 'documents/destroy'
  get 'documents/:id', to: 'documents#show'
  devise_for :users
  resources :documents, only: [:index, :new, :create, :destroy]
  as :user do
  get 'login', to: 'devise/sessions#new'
end
   root "documents#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
