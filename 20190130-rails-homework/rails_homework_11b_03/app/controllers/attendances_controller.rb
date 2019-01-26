class AttendancesController < ApplicationController
	def create 
		@attendance = Attendance.new :person_id =>params[:person_id], :event_id => [:event_id]
		if @attendance.save
			redirect_to @atttendance.person
		end
	end

	def delete
		person_id = params[:person_id]
		event_id = params[:event_id]
		Attendance.find_by(person_id, event_id).destroy
		
		redirect_to people_path
	end

	
end
