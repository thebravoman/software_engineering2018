class AttendanceController < ApplicationController

  def create
    att = session[:attendance]
    if params[:attendance]
      attendance = Attendance.new(attendance_params)
      attendance.person_id = att["person_id"]
      
      if attendance.save
        redirect_to "/people/#{attendance.person_id}", notice: "Successfuly registered to event!"
      else
        redirect_to person_path(attendance.person_id)
      end

    else
      redirect_to person_path(att["person_id"])
    end
  end
  
  
  def destroy
    attendance = Attendance.find(params[:id])
    attendance.destroy
    redirect_to person_path(attendance.person_id)
  end
  
private
  
  def attendance_params
    params.require(:attendance).permit(:person_id, :event_id)
  end
end
