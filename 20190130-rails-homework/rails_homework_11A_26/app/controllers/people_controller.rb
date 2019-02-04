class PeopleController < ApplicationController
  def new
    @person = Person.new

    initialize_organizations_list
  end

  def create
    person = Person.new(person_params)

    if person.save
      redirect_to person_path(person)
    else
      redirect_to new_person_path
    end
  end

  def update
    person = Person.find(params[:id])

    if person.update(person_params)
      redirect_to person_path(person)
    else
      redirect_to new_person_path
    end
  end

  def edit
    @person = Person.find(params[:id])

    initialize_organizations_list
  end

  def destroy
    person = Person.find(params[:id])
    person.destroy
    redirect_to people_path
  end

  def show
    @person = Person.find(params[:id])

    if !Organization.where(id: @person.organization_id).empty?
      @organization_events = @person.organization.events
    else 
      initialize_organizations_list
    end

    @events_attended = @person.events
    @events_unattended = []

    all_events = Event.all

    all_events.each do |e|
      if !@events_attended.include?(e)
        @events_unattended.append(e)
      end
    end

  end

  def index
    @people = Person.all
  end

  def attend_event
    person = Person.find(params[:person_id])
    event = Event.find(params[:event_id])

    person.events << event
    # event.people << person

    redirect_to person_path(Person.find(params[:person_id]))
  end

  def cancel_attend
    attendance = Attendance.find_by(event_id: params[:event_id], person_id: params[:person_id])
    attendance.destroy
    redirect_to person_path(Person.find(params[:person_id]))
  end

private

  def person_params
    params.require(:person).permit(:name, :organization_id)
  end

  def initialize_organizations_list
    @organizations_list = []
    @organizations_list[0] = ["None", nil];
    
    i = 1
    Organization.all.each do |org|
      @organizations_list[i] = [org.name, org.id]
      i += 1
    end
  end

end
