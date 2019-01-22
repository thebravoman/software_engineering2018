Rails.application.routes.draw do
	devise_for :users
	# resource :documents
	get '/' => 'home#index', as: 'home'
	get '/documents/new' => 'documents#new', as: 'new_document'
	get '/documents/:id' => 'documents#show', as: 'document'
	get '/documents' => 'documents#index', as: 'documents'
	post '/documents' => 'documents#create'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
