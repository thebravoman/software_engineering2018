Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  resources :documents
  get "/", to: "documents#startpage"
end
