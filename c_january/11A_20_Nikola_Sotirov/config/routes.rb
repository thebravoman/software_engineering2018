Rails.application.routes.draw do
	root 'documents#root'
	get 'documents/' => 'documents#index'
	get 'documents/new' => 'documents#new'
	post 'documents/new' => 'documents#create'
	get 'documents/edit/:id' => 'documents#edit'
	get 'documents/show/:id' => 'documents#show'
	
	get 'users/login' => 'users#index'
	post 'users/login' => 'users#login'
	get 'users/register' => 'users#new'
	post 'users/register' => 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
