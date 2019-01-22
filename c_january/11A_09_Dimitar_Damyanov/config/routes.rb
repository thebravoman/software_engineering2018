Rails.application.routes.draw do
  devise_for :users
  resources :documents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  delete 'documents/:id' => 'documents#destroy'
  root 'documents#index'
end
