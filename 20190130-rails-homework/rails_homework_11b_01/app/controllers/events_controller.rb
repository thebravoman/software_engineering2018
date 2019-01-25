class EventsController < ApplicationController

	def index
		@event = Event.all
	end

	def new 
		@event = Event.new
	end

	def show
		@event = Event.find(params[:id]);
	end	

	def create
		#render plain: params[:event].inspect
		@event = Event.new(event_params)

		if(@event.save)
			redirect_to @event
		else
			render 'new'	
		end
				
	end	



	private def event_params
		params.require(:event).permit(:title, :location, :description, :date)
	end 


end
