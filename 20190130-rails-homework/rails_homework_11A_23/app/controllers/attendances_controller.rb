class AttendancesController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    person = Person.find(params[:person_id])

    attendance = Attendance.create(person: person, event: event)
    redirect_to person_path(person)
  end

  def destroy
    person = Person.find(params[:person_id])
    event = Event.find(params[:event_id])

    person.events.delete(event)
    redirect_to person_path(person)
  end
end
