class PeopleController < ApplicationController
	def new
		@person = Person.new
	end
 
	def index
    	@people = Person.all
  	end

  	def create
		person = Person.new(person_params)
		if person.save
			redirect_to person_path(person)
	    else
	      redirect_to new_person_path
	    end
	end

  	def show
    	@person = Person.find(params[:id])
    	@attend = Array.new()
    	@not_attend = Array.new()
    	@events = Event.all
    	@events.each do |event|
    		if event.people.ids.include? @person.id
    			@attend.push(event)
    		else
    			@not_attend.push(event)
    		end
    	end
  	end

	def update
		person = Person.find(params[:id])
		if person.update(person_params)
			redirect_to person_path(person)
		else
			redirect_to edit_person_path(person)
		end
	end

	def destroy
    	person = Person.find(params[:id])
    	person.destroy
    	redirect_to people_path
	end

	private
	  def person_params
	    params.require(:person).permit(:name)
	  end
end
