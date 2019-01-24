class PersonController < ApplicationController

    def new
        @person = Person.new
    end

    def create
        person = Person.new(person_params)

        if person.save 
            
            redirect_to events_path
        else
            redirect_to person_new_path
        end
        
    end

    def subscribe
        
        attendance = Attendance.new(attendance_params)
        if attendance.save
            redirect_to person_path(attendance.person_id)
        else
            
            logger.error { "could not save attendance" }
            redirect_to events_path
        end
        
    end

    def unsubscribe
        attendance = Attendance.find_by(person_id: params[:id], event_id: params[:event_id])
        person = attendance.person_id
        attendance.destroy
        redirect_to person_path(person)
    end

    def show
        @person = Person.find(params[:id])
        @attendance = Attendance.new

        @events_subscribed = @person.events
        @events_unsubscribed = Array.new
        
        
        Event.find_each do |event|
            if !@events_subscribed.include?(event)
                @events_unsubscribed.push(event)
            end
        end
        
        
        
        

    end


    
    def person_params
        params.require(:person).permit(:name)
    end
    def attendance_params
        params.require(:attendance).permit(:person_id, :event_id)
    end
end
