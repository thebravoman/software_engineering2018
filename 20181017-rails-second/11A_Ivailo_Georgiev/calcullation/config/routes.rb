Rails.application.routes.draw do
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 post "/calc/output", to: "calc#output"
 resources :calc
end
