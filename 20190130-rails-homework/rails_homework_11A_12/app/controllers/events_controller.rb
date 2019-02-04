class EventsController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      format.html { redirect_to @event, notice: 'Event was successfully created.' }
      format.json { render :show, status: :created, location: @event }
    else
      format.html { render :new }
      format.json { render json: @event.errors, status: :unprocessable_entity }
    end
  end

  def update
    if @event.update(event_params)
      format.html { redirect_to @event, notice: 'Event was successfully updated.' }
      format.json { render :show, status: :ok, location: @event }
    else
      format.html { render :edit }
      format.json { render json: @event.errors, status: :unprocessable_entity }
    end
  end

  def destroy
    @event.destroy
    format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
    format.json { head :no_content }
  end

  private
    def event_params
      params.require(:event).permit(:name, :location, :description, :date)
    end
end
