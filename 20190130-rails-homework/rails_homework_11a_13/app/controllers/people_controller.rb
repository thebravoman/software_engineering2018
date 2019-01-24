class PeopleController < ApplicationController
    before_action :set_person, only: [:show, :update, :destroy]
    before_action :set_events, only: [:show]
    
    def index
        @people = Person.all
    end
    
    def show 
        @unattended_events = Array.new
        Event.all.each do |event|
            if !@events.include? event
                @unattended_events.push(event)
            end
        end
    end

    def new
        @person = Person.new
    end

    def create
        @person = Person.new(person_params)

        if @person.save
            redirect_to person_path(@person)
        else
            redirect_to new_person_path
        end
    end

    def update 
        @attendance = Attendance.new(params.require(:attendance).permit())
        if @person.update(person_params)
            render plain: params[:person].inspect
        else
            redirect_to person_path(@person), notice: 'Error: Event was not added successfully'
        end
    end

    def destroy
        @person.destroy
        redirect_to people_url, notice: 'Successfully deleted person!'
    end

    private
    def set_person
        @person = Person.find(params[:id])
    end

    def set_events
        @events = @person.events
    end

    def person_params
        params.require(:person).permit(:name, :event_id)
    end
    
end
