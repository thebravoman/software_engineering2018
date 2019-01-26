class AttendancesController < ApplicationController

	def create
		person = Person.find(params[:attendance][:person_id])
		event = Event.find(params[:attendance][:event_id])

		puts person
		puts event

		a = Attendance.new
		a.person = person
		a.event = event

		if a.save
	  		redirect_to person_path(person.id)
	  	else
	  		redirect_to person_path(person.id)
	  	end
	end

	def destroy
	  	@attendance = Attendance.find(params[:id])
	  	@attendance.destroy
	  	redirect_to person_path(params[:attendance][:person_id])
	end

end
