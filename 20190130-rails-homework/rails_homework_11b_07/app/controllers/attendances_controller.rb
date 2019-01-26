class AttendancesController < ApplicationController
	def create
		
		att = Attendance.new(attendance_params)
		if att.save
			redirect_to person_path(Person.find(att.person_id))
		end
	end
	def destroy
		person = params[:person_id]
		Attendance.find_by(person_id: params[:person_id], event_id: params[:event_id] ).delete
		redirect_to person_path(Person.find(person))
	end
	private
		def attendance_params
			params.require(:attendance).permit(:person_id, :event_id)
		end	
		

end	
