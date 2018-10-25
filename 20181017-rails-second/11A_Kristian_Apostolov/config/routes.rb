Rails.application.routes.draw do
    root "calculations#hello"
    get '/quadratic', to: "calculations#new"
    post '/quadratic', to: "calculations#calculate"
end
