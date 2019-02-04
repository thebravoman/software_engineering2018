Rails.application.routes.draw do
  post "people/add_event", to: "people#add_event"
  get "people/delete_event", to: "people#delete_event"
  post "organizations/add_event", to: "organizations#add_event"
  get "organizations/delete_event", to: "organizations#delete_event"
  get "people/add_organization", to: "people#add_organization"
  get "people/leave_organization", to: "people#leave_organization"

  resources :events
  resources :people
  resources :organizations
end
