class PeopleController < ApplicationController
    before_action :set_person, only: [:show, :update, :destroy]
    before_action :set_events, only: [:show]
    before_action :set_organisation_options, only: [:new]
    
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
        @cancelable_attendances = Array.new
        @events.each_with_index do |event, i|
            @cancelable_attendances[i] = Attendance.find_by(event_id: event.id, person_id: @person.id)
        end
    end

    def new
        @person = Person.new
    end

    def edit
    end

    def create
        @person = Person.new(person_params)

        if @person.save
            redirect_to person_path(@person)
        else
            render 'new'
        end
    end

    def update 
        if @person.update(person_params)
            redirect_to @person, notice: 'Successfully updated organisation!'
        else
            redirect_to person_path(@person), notice: 'Error!'
        end
    end

    def destroy
        @person.destroy
        redirect_to people_url, notice: 'Successfully deleted person!'
    end

    private
    def set_organisation_options
        @organisation_options = Array.new
        @organisation_options[0] = ["None", nil]
        Organisation.all.each_with_index do |organisation, i|
            @organisation_options[i+1] = [organisation.name, organisation.id]
        end
    end

    def set_person
        @person = Person.find(params[:id])
    end

    def set_events
        @events = @person.events
    end

    def person_params
        params.require(:person).permit(:name, :event_id, :organisation_id)
    end
    
end
