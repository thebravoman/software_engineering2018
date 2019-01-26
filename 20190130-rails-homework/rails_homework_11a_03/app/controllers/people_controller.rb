class PeopleController < ApplicationController

	def index
		@people = Person.all
	end

	def create
		person = Person.new(person_params)
	  	if person.save
	  		redirect_to person_path(person)
	  	else
	  		redirect_to people_path
	  	end
	end

	def show
		@person = Person.find(params[:id])
		if @person.organisation != nil
			@notattended = Event.all - @person.events - @person.organisation.events
		else
			@notattended = Event.all - @person.events
		end
	end

	private
	def person_params
		params.require(:person).permit(:name)
	end

end