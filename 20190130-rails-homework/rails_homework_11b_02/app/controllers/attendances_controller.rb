class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:delete]
  def create
    @attendance = Attendance.new(attendance_params)
	if @attendance.save
	  redirect_to @attendance.person
	end
  end
  
  def delete
    person = @attendance.person
	@attendance.destroy
	redirect_to person
  end
  
  private
  def set_attendance
    @attendance = Attendance.find_by(attendance_params)
  end
  def attendance_params
    params.require(:attendance).permit(:person_id, :event_id)
  end
end
