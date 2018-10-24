Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :calculations
  get '/calculations/new', to: "calculations#new"
 
end
