Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "calculator#new"
  post '/calculator/result', to: 'calculator#result', as: "calculator"
  resources :calculator
end
