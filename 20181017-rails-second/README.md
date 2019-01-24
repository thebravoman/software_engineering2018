# Rails 

````
	rails new calc
````

## Project structure

````
app     config.ru  Gemfile.lock  package.json  README.md  tmp
bin     db         lib           public        storage    vendor
config  Gemfile    log           Rakefile      test

````

## Gemfile

````

### Groups

````
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

## Starting rails 
````
 rails s
=> Booting Puma
=> Rails 5.2.1 application starting in development 
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.12.0 (ruby 2.3.1-p112), codename: Llamas in Pajamas
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://0.0.0.0:3000
Use Ctrl-C to stop
````

## Go to browser

````
http://localhost:3000/
````

## Add Controller

````
	nano app/controllers/calculations_controller.rb
````

In the file 
````
class CalculationsController < ApplicationController

        def new
        end

end

````


## Routes


````
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.$

  get '/calculations/new', to: "calculations#new"

end

````

## Respond with hello world

````
class CalculationsController < ApplicationController

        def new
                render plain: "Hello world"
        end

end
````

