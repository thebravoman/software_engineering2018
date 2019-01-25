class PeopleController < ApplicationController

    def destroy
	person = Person.find(params[:id])
	event = Event.find(params[:event])
	person.events.delete(event)
	redirect_to "/people"

    end

    def new
	@person = Person.new
    end

    def create
        person = Person.new(params.require(:person).permit(:name))
	person.save
    end

    def index
	@people = Person.all
    end

    def show
	@person = Person.find(params[:id])
	@events = []
	not_attended = 1
	Event.all.each do |event|
	    @person.events.each do |e|
		if event.id == e.id
		    not_attended = 0
		end
		
	    end
	    if not_attended == 1
	        @events.push(event)
	    end
	    not_attended = 1
	end
    end

    def attendance
	event = Event.find(params[:event][:event_id])
	attend = 1
 	
	name = params[:name]

	Person.all.each do |person|
	  if person.name == name
	     person.events.each do |e|
	        if e.id == event.id
	            attend = 0 
         	end
	      end

	     if attend == 1
	         person.events << event
 	         render plain: "Attended"
	     end
	     break
          end
	end
	
    end	
end
