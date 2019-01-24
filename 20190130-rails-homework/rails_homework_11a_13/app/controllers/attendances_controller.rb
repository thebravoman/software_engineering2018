class AttendancesController < ApplicationController
    def new
        @attendance = Attendance.new
    end

    def create
        @attendance = Attendance.new(attendance_params)

        if @attendance.save
            redirect_to person_path(@attendance.person_id), notice: "Successfully added attendance!"
        else
            redirect_to person_path(@attendance.person_id), notice: "Error"
        end        
    end

    def destroy
        @attendance = Attendance.find(params[:id])
        person_id = @attendance.person_id
        @attendance.destroy
        redirect_to person_path(person_id), notice: "Successfully canceled attendance!"
    end

    private
    def attendance_params
        params.require(:attendance).permit(:person_id, :event_id)
    end
end
