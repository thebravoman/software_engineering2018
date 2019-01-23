class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  
  def index
    @people = Person.all
  end

  def show
    
    organization = @person.organization
    @subscribed = @person.events
    unsub = []
    
    tmp = @subscribed.dup
    unless organization.nil? 
      @group = organization.events
      tmp += @group
    end

    Event.find_each do |event| 
      unless tmp.include?(event) then unsub.push(event) end
    end
    @unsubscribed = unsub.map{|e| [e.name, e.id]}

    @attendance = Attendance.new
  end

  def new
    @person = Person.new
  end

  def edit
  end
  
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def subscribe_event
    set_person
    attendance = Attendance.new(attendance_params)
    attendance.subscriber = @person 

    if attendance.save!
      redirect_to @person, notice: "New attendance created"
    else
      redirect_to events_path, notice: "Something went wrong..."
    end
  end

  def unsubscribe_event 
    set_person
    attendance = Attendance.find_by(subscriber_id: params[:id], event_id: params[:event_id])
    unless attendance.nil? 
      attendance.destroy
      redirect_to @person, notice: "Successfuly deleted this subscription"
    else
      render @person, notice: "Something prevents this subscription from being deleted..."
    end
  end
  private

  def set_person
    @person = Person.find(params[:id])
  end

  
  def person_params
    params.require(:person).permit(:name)
  end

end
