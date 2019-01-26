class AttendancesController < ApplicationController
	def create
		@attendance = Attendance.new :person_id => params[:person_id], :event_id => params[:attendance][:event_id]
		if @attendance.save
			redirect_to @attendance.person
		end
	end
	def destroy
		person_id = params[:person_id]
		Attendance.find_by(person_id: params[:person_id], event_id: params[:event_id]).delete
		redirect_to person_path(Person.find(person_id))
	end
	
	private
	def attendance_params
		params.require(:attendance).permit(:person_id, :event_id)
	end
end
