class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy,:add_event, :delete_event, :add_organization]
  skip_before_action :verify_authenticity_token
   


  # GET /people
  # GET /people.json
  def index
    @people = Person.all
  end

  # GET /people/1
  # GET /people/1.json
  def show
    @all=Array.new
    @organization_events=Array.new
    @new_event=Event.new

    if @person.organization_id
      @organization_events=Organization.find(@person.organization_id).events
      @all=(@person.events + @organization_events).uniq
    else
      @all=@person.events
    end
    
   @not_events=Event.all.select{|e| !@all.include? e }

  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # POST /people/:id
  def add_event
    event=params[:event][:event_id]
    @person.events.append(Event.find(event))
    redirect_to person_path(@person)

  end

  def delete_event
    event=Event.find(params[:event_id])
    @person.events.delete(event)
    redirect_to person_path(@person)

  end

  def add_organization
    organization=params[:organization][:organization_id]
    Organization.find(organization).people.append(@person)
    redirect_to person_path(@person)
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
      params.require(:person).permit(:name, :organization_id)
    end
end
