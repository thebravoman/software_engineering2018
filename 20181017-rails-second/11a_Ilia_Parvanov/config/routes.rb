Rails.application.routes.draw do
    get '/calculations/new', to: 'calculations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'calculations/solve'
    get 'calculations/solved' => 'calculations#solved'
    root 'calculations#solve'
end
