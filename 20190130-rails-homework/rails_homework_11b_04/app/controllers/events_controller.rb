class EventsController < ApplicationController
	def new
		@event = Event.new
	end
	def index
		@events = Event.all
	end
	def edit 
		@event = Event.find(params[:id])
	end
	def show
		
		@event = Event.find(params[:id])
	end
	def create

		@event = Event.new(event_params)
		
		if @event.save
			redirect_to events_path
		else
			render 'new'
		end
	end
	def update
		@event = Event.find(params[:id])
		
		if @event.update(event_params)
			redirect_to events_path
		else
			render 'edit'
		end
	end
	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path
	end
	private
		def event_params
			params.require(:event).permit(:name, :location, :description, :created_at)
		end
end
