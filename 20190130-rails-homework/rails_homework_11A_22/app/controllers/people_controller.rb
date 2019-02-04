class PeopleController < ApplicationController

	def new
		@person = Person.new
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
		@attended = Array.new()
		@unattended = Array.new()
		Event.all.each do |event|
			if event.people.ids.include? @person.id
				@attended.append(event)
				
			else
				@unattended.append(event)
				print(params[:id])
				print("    ")
				print(event.people.ids)
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

	def index
		@people = Person.all
	end

private
	def person_params
		params.require(:person).permit(:name)
	end
end
