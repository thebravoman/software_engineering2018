class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy,]

  # GET /people
  # GET /people.json
  def index
    @people = Person.all
  end

  # GET /people/1
  # GET /people/1.json
  def show
    @organization = @person.organization  
    @organization_events = []
    if @organization
      for attendance in @organization.attendances
        @organization_events.append(attendance.event)
      end
    end

    attendances = @person.attendances
    @subscribed_events = []
    for attendance in attendances
      if not @organization_events.include?(attendance.event)
        @subscribed_events.append(attendance.event)
      end
    end

    events = Event.all
    @unsubscribed_events = []
    for event in events
      if not @subscribed_events.include?(event) and not @organization_events.include?(event)
        @unsubscribed_events.append(event)
      end
    end
  end

  # POST /people/join_organization/:id
  def join_organization
    organization = Organization.find(params[:organization_id])
    person = Person.find(params[:id])
    person.organization = organization

    if person.save
      redirect_to(controller: "people", action: "show", id: params[:id])
    else
      redirect_to(controller: "people", action: "show", id: params[:id],
        notice: person.errors.full_messages.first)
    end
  end

  # GET /people/leave_organization/:id
  def leave_organization
    person = Person.find(params[:id])
    person.organization = nil
    if person.save
      redirect_back(fallback_location: {controller: "people", action: "show", id: params[:id]})
    else
      redirect_back(fallback_location: {controller: "people", action: "show", id: params[:id]}, 
        notice: person.errors.full_messages.first)
    end
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
end
