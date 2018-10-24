Rails.application.routes.draw do
	resources :calcullation
	post "/calcullation/create", to: "calcullation#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
