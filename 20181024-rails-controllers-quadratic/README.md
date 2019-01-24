# Controllers

Hello world

class CalculationsController < ApplicationController
	def new
		render plain: "Hello world"
	end
end


# Controller Equation

````
	/calculations/new -> form
	
	a
	b
	c
	->submit
	
	x1,x2
````

## Create view

````
	mkdir app/views/calculations
	nano app/views/calculations/new.html.erb
````

This is the content of the html file
````
	<p>This is the view. The <strong>special file</strong></p>

````

Remove the 
````
	render plain: "Hello world" 
````
from the controller

