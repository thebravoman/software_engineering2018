class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    person = Person.new(person_params)
    if person.save
      redirect_to people_path
    else
      redirect_to new_person_path
    end
  end

  def show
    @person = Person.find(params[:id])

    @no_events = Array.new()
    @yes_events = Array.new()

    Event.all.each do |event|
      if event.people.ids.include? @person.id
        @yes_events.append(event)
      else
        @no_events.append(event)
      end
    end

  end

  def destroy
    person = Person.find(params[:id])
    person.destroy
    redirect_to people_path
  end

private
  def person_params
    params.require(:person).permit(:name)
  end
end
