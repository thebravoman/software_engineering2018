class AttendancesController < ApplicationController
	def create
        person = Person.find(params[:person_id])
        event = Event.find(params[:event_id])

        attendance = Attendance.create(person: person, event: event)
        redirect_to person_path(person)
    end

    def destroy
        person = Person.find(params[:person_id])
        attendance = Attendance.find_by(person_id: params[:person_id], event_id: params[:event_id])
        attendance.destroy
        redirect_to person_path(person)
    end
end
