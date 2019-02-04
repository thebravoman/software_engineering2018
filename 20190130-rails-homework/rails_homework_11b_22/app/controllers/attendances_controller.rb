class AttendancesController < ApplicationController
  def create
    event = Event.find params[:event_id]
    attendance = Attendance.create event: event, 
                                   visitor_type: params[:visitor_type],
                                   visitor_id: params[:visitor_id]
    event.attendances << attendance
    redirect_to attendance.visitor
  end

  def destroy
    attendance = Attendance.find_by(event_id: params[:event_id], 
                                    visitor_id: params[:visitor_id])
    visitor = attendance.visitor
    attendance.destroy
    redirect_to visitor
  end
end

