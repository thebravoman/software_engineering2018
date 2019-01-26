class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    person = Person.new(person_params)

    if person.save
      redirect_to person_path(person)
    else
      redirect_to new_person_path
      puts "greda"
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
    @person = Person.find(params[:id])
    puts @person.id
    @attendance = Attendance.new

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
    puts "hello there "
    puts params[:person_id]
    puts params[:event_id]

    person = Person.find(params[:person_id])
    event = Event.find(params[:event_id])

    person.events << event
    # event.people << person

    redirect_to person_path(Person.find(params[:person_id]))
  end

private

  def person_params
    params.require(:person).permit(:name)
  end

end
