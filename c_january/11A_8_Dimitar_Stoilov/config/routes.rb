Rails.application.routes.draw do
  get 'documents/index'
  get 'documents/new'
  get 'documents/show'
  devise_for :users
  get 'welcome/index'
  root 'documents#main'
  resources 'documents'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
