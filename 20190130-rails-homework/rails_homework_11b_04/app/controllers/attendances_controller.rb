class AttendancesController < ApplicationController
	def new
		@attendance = Attendance.new
	end
	def create
		@attendance = Attendance.new(attend_params)
		person = Person.find(@attendance.person_id);
		event = Event.find(@attendance.event_id);
		if !person.events.include?(event) and @attendance.save
			redirect_to person_path(person);
		else
			render 'new'
		end
	end	
	def destroy
		@attendance = Attendance.find(params[:id]).delete
		redirect_to person_path(@attendance.person_id)
	end
	private
		def attend_params
			params.require(:attendance).permit(:person_id, :event_id);
		end
end
