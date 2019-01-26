Rails.application.routes.draw do
  post "people/attend_event", to: "people#attend_event"
  post "people/cancel_attend", to: "people#cancel_attend"
  post "organizations/attend_event", to: "organizations#attend_event"
  post "organizations/cancel_attend", to: "organizations#cancel_attend"

  resources :events
  resources :people
  resources :attendances  
  resources :organizations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
