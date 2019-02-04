class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def create
    event = Event.new(event_params)
    if event.save
      redirect_to event_path(event)
    else
      redirect_to new_event_path
    end
  end

  def edit
    @event = Event.find(params[:id]) 
  end

  def update
    event = Event.find(params[:id])
    if event.update(event_params)
      redirect_to event_path(event)
    else
      redirect_to new_event_path
    end
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to events_path
  end

private
  def event_params
    params.require(:event).permit(:name, :place, :description, :date)
  end
end
