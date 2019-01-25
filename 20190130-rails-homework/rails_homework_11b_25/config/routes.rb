Rails.application.routes.draw do
  root "events#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/people/attendance', to: "people#attendance"
  resources :people
  resources :events

end
