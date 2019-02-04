Rails.application.routes.draw do
  resources :events
  resources :people, except: [:edit, :update, :destroy]
  post 'visitor/:visitor_type/:visitor_id/confirm-attendance/:event_id', 
        to: 'attendances#create', as: 'confirm_attendance'
  delete 'visitor/:visitor_id/remove-attendance/:event_id', 
         to: 'attendances#destroy', as: 'delete_attendance'
  resources :organizations
end

