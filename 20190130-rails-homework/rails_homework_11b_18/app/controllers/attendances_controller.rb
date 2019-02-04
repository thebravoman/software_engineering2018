class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:destroy]
  def create
    @attendance = Attendance.new(attendance_params)
    if @attendance.save
      redirect_to person_url(Person.find(attendance_params[:person_id])), notice: "You successfully signed up for this event."
    end
  end
  def destroy
    person_id = attendance_params[:person_id]
    @attendance.destroy
    redirect_to person_url(Person.find(person_id)), notice: "You successfully abandoned this event."
  end

  private
  def set_attendance
    @attendance = Attendance.find_by(attendance_params)
  end
  def attendance_params
    params.require(:attendance).permit(:person_id, :event_id)
  end
end
