Rails.application.routes.draw do
  root 'documents#list'
  
  devise_for :users
  
  resources :users
  resources :documents
    

  
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
