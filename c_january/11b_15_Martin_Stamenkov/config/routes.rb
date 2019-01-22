Rails.application.routes.draw do
  devise_for :users
  root 'documents#last'
  get 'documents/new'
  #get '/' ,to: 'documents#list'
  post 'documents/new'
  post '/documents/' ,to: 'documents#create'
  get '/documents/' ,to: 'documents#list'
  get 'users/login'
  get '/documents/:id', to: 'documents#show', as: 'id'
  get '/documents.:id', to: 'documents#show'
  delete '/documents/:id', to: 'documents#list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
