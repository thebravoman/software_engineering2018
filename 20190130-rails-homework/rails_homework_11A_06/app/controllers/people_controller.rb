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
		@events_not_attended = Array.new
		@events_attended = Array.new
		Event.find_each do |event|
			if event.people.exists?
				if event.people.ids.include? @person.id
					@events_attended.push(event)
				else
					@events_not_attended.push(event)					
				end
			else
				@events_not_attended.push(event)
			end
		end
		if @person.organization_id != nil
			@organization = Organization.find(@person.organization_id)
		else
			@organizations = Organization.all
		end
	end

	def add_event
		person = Person.find(params[:person_id])
		event = Event.find_by(name: params[:event])
		if Attendance.find_by(person: person, event: event)
			#do nothing
		else
			Attendance.create(person: person, event: event)
		end
		redirect_to person_path(person)
	end

	def delete_event
		person = Person.find(params[:person_id])
		event = Event.find(params[:event_id])
		if Attendance.find_by(person: person, event: event)
			Attendance.find_by(person: person, event: event).destroy
		end		
		redirect_to person_path(person)
	end

	def add_organization
		person = Person.find(params[:person_id])
		organization = Organization.find(params[:organization_id])

		if organization.people.exclude? person
			organization.people.append(person)
		end
		redirect_to person_path(person)

	end	

	def leave_organization
		person = Person.find(params[:person_id])
		organization = Organization.find(params[:organization_id])
		organization.people.delete(person)
		redirect_to person_path(person)
	end	

	def person_params
		params.require(:person).permit(:name)
	end
	
end
