Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    post "attendances/add_event", to: "attendance#create" 
	get "attendances/delete_event", to: "attendance#destroy"

	resources :events
    resources :people
end
