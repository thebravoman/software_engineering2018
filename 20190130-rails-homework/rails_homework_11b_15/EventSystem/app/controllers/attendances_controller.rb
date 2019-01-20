class AttendancesController < ApplicationController
  def create
    @attendance = Attendance.new(attendance_params)

    if @attendance.save
      redirect_to "/events/#{params[:event_id]}", notice: "New attendance created"
    else
      render "/people/#{params[]}", notice: "Something went wrong..."
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:person_id, :event_id)
  end
end
