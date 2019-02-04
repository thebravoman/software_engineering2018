class AttendancesController < ApplicationController

	def add
	    attendance = Attendance.new
	    attendance.event = Event.find(params[:event_id])
	    attendance.attendant_id = params[:attendant_id]
		attendance.attendant_type = params[:attendant_type]
	    attendance.save()

	   
		redirect_back(fallback_location: root_path)
	end


	def remove
	    attendance = Attendance.where(
	    	attendant_id: params[:attendant_id],
	    	attendant_type: params[:attendant_type],
	    	event_id: params[:event_id]
	   	).first
	   	
	    Attendance.delete(attendance.id)

		redirect_back(fallback_location: root_path)
	end
end