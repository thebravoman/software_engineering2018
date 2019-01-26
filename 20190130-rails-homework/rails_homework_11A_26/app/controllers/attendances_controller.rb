class AttendancesController < ApplicationController
    def destroy
        attendance = Attendance.find(params[:id])
        person_id = attendance.person_id
        attendance.destroy
        redirect_to person_path(person_id)
    end
end
