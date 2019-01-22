Rails.application.routes.draw do
  devise_for :users
  get '/', to: 'home#index', as: 'home'
  get '/documents', to: 'documents#index', as: 'documents'
  get '/documents/new', to: 'documents#new', as: 'new_document'
  get '/documents/:id', to: 'documents#show', as: 'document'
  post '/documents', to: 'documents#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
