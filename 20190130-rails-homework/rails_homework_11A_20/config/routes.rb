Rails.application.routes.draw do
	get 'people/' => 'people#index'
	get 'people/new' => 'people#new'
	post 'people/new' => 'people#create'
	get 'people/show/:id' => 'people#show'
	get 'people/:person_id/events/delete/:event_id' => 'people#destroy_event'
	post 'people/show/:id' => 'people#add_event'

	get 'events/' => 'events_controller#index'
	get 'events/new' => 'events_controller#new'
	get 'events/edit/:id' => 'events_controller#edit'
	get 'events/show/:id' => 'events_controller#show'
	post 'events/new' => 'events_controller#create'
	post 'events/edit/:id' => 'events_controller#update'
	get 'events/delete/:id' => 'events_contoller#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
