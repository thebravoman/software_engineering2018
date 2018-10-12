# Starting rails

	rails new calc

This creates a new rails project named calc

	cd calc/

Enters into the new project

````
app     config.ru  Gemfile.lock  package.json  README.md  tmp
bin     db         lib           public        storage    vendor
config  Gemfile    log           Rakefile      test
````

This is the structure of the project

	Gemfile

Description of the gemfile and its structure

```
	rails s
````

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

````
	cd app/controllers

	nano calculations_controller.rb	
````

````
class CalculationsController < ApplicationController

        def new
        end
end

````


````
	nano config/routes.rb
````

````
Rails.application.routes.draw do
        get '/calculations/new', to: 'calculations#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails$
end

````

Add the hello world to the calculations controller

````
	def new
                render plain: "Hello world"
        end

````
# Implementing rails calculator for 1+1

# Implementing quadratic equations with RAILS
 - homework - friday
