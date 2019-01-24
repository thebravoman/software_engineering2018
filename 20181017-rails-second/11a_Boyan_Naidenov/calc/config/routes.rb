Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  post '/calculations/create', to: 'calculations#create', as: "calculations"
  resources :calculations
end
