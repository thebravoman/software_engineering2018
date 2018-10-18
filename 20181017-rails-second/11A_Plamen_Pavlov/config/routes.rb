Rails.application.routes.draw do
	resources :calculations	
	get '/calculations/create', to: 'calculations#create'
		
	

	
  # For details on the DSL available within this file, see http://guides.rubyonrails$
end
