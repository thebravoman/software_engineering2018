class PeopleController < ApplicationController
	def index

	end

	def new

	end

	def create
		Person.create person_params
	end

	def show
		puts "HER"
		puts params[:events]

		@person = Person.find params[:id]
	end

	def destroy_event
		event = Event.find params[:event_id]

		person = Person.find params[:person_id]

		person.events.delete event

		redirect_to '/people/show/' + String(person.id)
	end

	def add_event
		person = Person.find params[:id]

		person.events.append Event.find(params[:event][:event_id])

		redirect_to '/people/show/' + String(person.id)
	end

	def person_params
		return params.require(:person).permit(:name)
	end
end
