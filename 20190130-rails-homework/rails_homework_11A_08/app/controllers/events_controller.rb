class EventsController < ApplicationController
  @@message = ''
  def index
  end

  def new
    @message = @@message
  end

  def create
    event = Event.create event_params

    if not event.valid?
      @@message = 'Enter a valid event!'

      redirect_to '/events/new'

      return
    end
  end

  def edit
    @event = Event.find params[:id]
  end

  def update
    @event = Event.find params[:id]

    @event.update_attributes event_params

    if not @event.valid?
      @@message = 'Enter a valid event!'

      redirect_to '/events/edit/' + String(@event.id)
      
      return
    end

    redirect_to '/events/'
  end

  def show
    @message = @@message
    @event = Event.find params[:id]
  end

  def destroy
    @event = Event.find params[:id]
    @event.destroy
  end

  def event_params
    return params.require(:event).permit(:name, :location, :date, :description)
  end
end
