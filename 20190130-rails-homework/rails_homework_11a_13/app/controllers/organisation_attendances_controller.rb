class OrganisationAttendancesController < ApplicationController
    def create
        @organisation_attendance = OrganisationAttendance.new(organisation_attendance_params)

        if @organisation_attendance.save
            redirect_to organisation_path(@organisation_attendance.organisation_id), notice: "Successfully added attendance!"
        else
            redirect_to organisation_path(@organisation_attendance.organisation_id), notice: "Error"
        end 
    end

    def destroy
        @organisation_attendance = OrganisationAttendance.find(params[:id])
        organisation_id = @organisation_attendance.organisation_id
        @organisation_attendance.destroy
        redirect_to organisation_path(organisation_id), notice: "Successfully canceled attendance!"
    end

    private
    def organisation_attendance_params
        params.require(:organisation_attendance).permit(:event_id, :organisation_id)
    end
end
