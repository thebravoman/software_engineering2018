Rails.application.routes.draw do
  resources :events
  resources :people
  root 'main#index'
  get "/people/:id/attend", to: 'people#attend'
  get "/people/:id/cancel", to: 'people#cancel'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
