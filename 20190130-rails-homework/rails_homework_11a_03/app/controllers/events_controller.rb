class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def show
		@event = Event.find(params[:id])
	end

	def create
		event = Event.new(event_params)
		if event.save
			redirect_to event_path(event)
		else
			redirect_to events_path
		end
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		@event.update_attributes(event_params)
		redirect_to events_path
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path
	end

	private
	def event_params
		params.require(:event).permit(:name, :place, :date, :description)
	end

end
