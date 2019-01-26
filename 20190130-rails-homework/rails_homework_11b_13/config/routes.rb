Rails.application.routes.draw do
  get 'landing_page/index'

  post 'attendances/add/:attendant_type/:attendant_id/', to: "attendances#add"
  get 'attendances/remove/:attendant_type/:attendant_id/:event_id/', to: "attendances#remove"

  post 'people/join_organization/:id/', to: "people#join_organization"
  get 'people/leave_organization/:id/', to: "people#leave_organization"

  resources :events
  resources :organizations
  resources :people

  root to: redirect("landing_page/index")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
