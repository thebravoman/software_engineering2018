class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  # GET /people
  # GET /people.json
  def index
    @people = Person.all
  end

  def subscribe
	  attendance = Attendance.new(attendance_params)
	  if attendance.save
		  redirect_to person_path(attendance.person_id)
	  else
		  redirect_to events_path
	  end
  end

  def unsubscribe
	  Attendance.find_by(person_id: params[:id], event_id: params[:event_id]).destroy
	  redirect_to person_path(params[:id])
  end
  # GET /people/1
  # GET /people/1.json
  def show
    @person = Person.find(params[:id])
    @subscribed_events = @person.events
    @not_subscribed_events = Event.all.select { |event|
	!@subscribed_events.include?(event)
    }
    @attendance = Attendance.new # for form
    logger.info(@person.events)
    logger.info(@not_subscribed_events)
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
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

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
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

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:name)
    end
    def attendance_params
      params.require(:attendance).permit(:person_id, :event_id)
    end
end
