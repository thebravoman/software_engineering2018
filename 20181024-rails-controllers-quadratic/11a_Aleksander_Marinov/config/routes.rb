Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/quadratic/new/', to: "quadratic#new"
  post '/quadratic', to: "quadratic#create"
end
