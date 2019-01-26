Rails.application.routes.draw do
  resources :events
  resources :people
  root 'people#index'
end
