Rails.application.routes.draw do
  devise_for :models
  resources :documents
  get '/' => 'documents#last_3'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
