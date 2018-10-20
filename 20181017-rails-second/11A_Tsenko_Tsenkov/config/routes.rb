Rails.application.routes.draw do
  get '/calculations/new', to: "calculations#new"
  resources :calculations
end
