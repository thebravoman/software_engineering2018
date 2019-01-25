class EventsController < ApplicationController  
    def destroy
        event = Event.find(params[:id])
        event.destroy
        redirect_to "/"
    end
    def new
	@event = Event.new
    end
   
    def edit
	@event = Event.find(params[:id])
    end

    def update
	event = Event.find(params[:id])
	event.update(params.require(:event).permit(:name, :location, :date, :description))
	redirect_to "/"
    end

    def create
	event = Event.new(params.require(:event).permit(:name, :location, :date, :description))
        event.save
	redirect_to "/"
    end

    def index
        @events = Event.all
    end
   
    def show
	@event = Event.find(params[:id])
    end
    def attend
        name = params.require[:person].permit(:name)
	redirect_to "/people"
    end
end
