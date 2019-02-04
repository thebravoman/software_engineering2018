class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find params[:id]
    all_events = @attending_events = @person.events
    if @person.organization
      @organization_events = @person.organization.events
      all_events += @organization_events
    end
    @unattending_events = Event.where.not(id: all_events)
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new person_params
    if @person.save
      redirect_to @person
    else
      render 'new'
    end
  end

  private

  def person_params
    params.require(:person).permit(:name)
  end
end

