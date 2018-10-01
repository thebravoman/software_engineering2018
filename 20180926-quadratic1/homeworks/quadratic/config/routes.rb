Rails.application.routes.draw do

  get "/page", to: "quadratic#page"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "quadratic#index"
end
