Rails.application.routes.draw do

	get 'events/' => 'events#index'
	get 'events/new' => 'events#new'
	get 'events/edit/:id' => 'events#edit'
	get 'events/show/:id' => 'events#show'
	post 'events/new' => 'events#create'
	post 'events/edit/:id' => 'events#update'
	get 'events/delete/:id' => 'events#destroy'
	root 'events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
