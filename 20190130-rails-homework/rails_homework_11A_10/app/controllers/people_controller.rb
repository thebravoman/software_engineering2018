class PeopleController < ApplicationController
	def new 
	end

	def create
		person = Person.new(person_params)
		puts person
	  	if person.save
	  		redirect_to person_path(person)
	  	else
	  		redirect_to new_person_path(person)
	  	end
	end

	def show
		@person = Person.find(params[:id])
		@notattended = Event.all - @person.events
		if @person.organisation != nil
			@notattended = @notattended - @person.organisation.events
		end	
	end

	private
	def person_params
		params.require(:person).permit(:name)
	end
end
