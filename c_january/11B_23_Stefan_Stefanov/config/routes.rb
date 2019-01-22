Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'login#login'
  # get '/patients/:id', to: 'patients#show', as: 'patient'
  post '/login/login.html', to: 'login#logIn', as: 'logPage'
  resources :documents
end
