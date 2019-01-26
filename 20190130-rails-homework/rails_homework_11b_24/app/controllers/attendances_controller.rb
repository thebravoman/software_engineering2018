class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:show, :destroy]

  def index
  	@attendances = Attendance.all
  end
  # POST /attendances
  # POST /attendances.json
  def create
    @attendance = Attendance.new(attendance_params)
    if @attendance.save
      redirect_to person_path(Person.find(attendance_params[:person_id])), notice: "Attendance was successfully created."
	end
  end

  # DELETE /attendances/1
  # DELETE /attendances/1.json
  # ami samo tva ne mi raboti nadqvam se na dobra ocenka ;(
  def destroy
    person_id = attendance_params[:person_id]
    @attendance.destroy
	redirect_to person_path(Person.find_by(person_id)), notice: "Attendance was successfully destroyed."

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance
      @attendance = Attendance.find_by(attendance_params)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attendance_params
      params.require(:attendance).permit(:event_id, :person_id)
    end
end
