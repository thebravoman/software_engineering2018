Rails.application.routes.draw do
	post "attendances/add", to: "attendance#create" 
	get "attendances/delete", to: "attendance#destroy"

	resources :events
	resources :people


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
