class ApplicationController < ActionController::Base
    protected

    def subscribe subscriber
        attendance = Attendance.new(attendance_params)
        attendance.subscriber = subscriber
    
        if attendance.save!
          redirect_to subscriber, notice: "New attendance created"
        else
          redirect_to events_path, notice: "Something went wrong..."
        end
    end

    def unsubscribe subscriber 
        set_person
        attendance = Attendance.find_by(subscriber_id: params[:id], event_id: params[:event_id])
        unless attendance.nil? 
            attendance.destroy
            redirect_to subscriber, notice: "Successfuly deleted this subscription"
        else
            render subscriber, notice: "Something prevents this subscription from being deleted..."
        end
    end

    def attendance_params
        params.require(:attendance).permit(:subscriber_id, :event_id)
    end
end
