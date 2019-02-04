class AttendanceController < ApplicationController

	def create
		event = Event.find_by(params[:event_id])
		person = Person.find(params[:person_id])
		attendance = Attendance.create(person: person, event: event)
		redirect_to person_path(person)
	end

	def destroy
		event = Event.find_by(params[:id])
		person = Person.find_by(params[:id])
		person.events.destroy(event)
		redirect_to person_path(person)
	end
end
