class ApplicationController < ActionController::Base
    protected

    def attendance_params
        params.require(:attendance).permit(:subscriber_id, :event_id)
      end
end
