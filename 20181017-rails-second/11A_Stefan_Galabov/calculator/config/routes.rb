Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.$

  	get '/calculations/new', to: "calculations#new"
  
  	resources :calculations
	
end

