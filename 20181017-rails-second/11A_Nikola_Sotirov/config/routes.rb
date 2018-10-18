Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/calculations/new" => 'calculations#new'

  post "/calculations/new" => "calculations#create"

end
