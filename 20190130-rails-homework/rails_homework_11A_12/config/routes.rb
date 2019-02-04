Rails.application.routes.draw do
	post "attendances/add", to: "attendances#create" 
	get "attendances/delete", to: "attendances#destroy"
	resources :people
	resources :events
end
