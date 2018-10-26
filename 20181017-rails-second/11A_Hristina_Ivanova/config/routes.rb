Rails.application.routes.draw do
    get '/calculations/new', to: "calculations#new"
    post '/calculations', to: "calculations#calculate"
end
