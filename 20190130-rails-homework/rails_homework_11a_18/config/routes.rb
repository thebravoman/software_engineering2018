Rails.application.routes.draw do
  
  root to: 'events#index'

  post "/organization/:id/add_person", to: "organizations#add_person", as: "add_person_to_organization" 
  post "/organization/:id/remove_person/:person_id", to: "organizations#remove_person", as: "remove_person_from_organization" 

  resources :organizations

  post "/attendance/create", to: "attendance#create", as: "create_attendance"
  post "/attendance/:id/destroy", to: "attendance#destroy", as: "destroy_attendance"
  # post "/organization/:id/destroy", to: "organization#destroy", as: "destroy_organization"

  resources :people
  resources :events
end
