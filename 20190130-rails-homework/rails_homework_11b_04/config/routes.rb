Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :people
	resources :events
	
	root to: 'people#index'
	resources :attendances
end
