class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy, :remove_person, :add_person]

  # GET /organizations
  # GET /organizations.json
  def index
    @organizations = Organization.all
  end

  # GET /organizations/1
  # GET /organizations/1.json
  def show
    organization = Organization.find(params[:id])
    @possible_people = (Person.all - organization.people)
    @possible_people = @possible_people.select{ |p| p.organization_id == nil}
    puts(@possible_people)   
  end

  # GET /organizations/new
  def new
    @organization = Organization.new
  end

  # GET /organizations/1/edit
  def edit
  end

  # POST /organizations
  # POST /organizations.json
  def create
    @organization = Organization.new(organization_params)

    respond_to do |format|
      if @organization.save
        format.html { redirect_to @organization, notice: 'Organization was successfully created.' }
        format.json { render :show, status: :created, location: @organization }
      else
        format.html { render :new }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organizations/1
  # PATCH/PUT /organizations/1.json
  def update
    respond_to do |format|
      if @organization.update(organization_params)
        format.html { redirect_to @organization, notice: 'Organization was successfully updated.' }
        format.json { render :show}
      else
        format.html { render :edit }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    @organization.destroy
    puts "Thats what usually happens here and the organization is destroyed!!!!"
    redirect_to organizations_path

  end

  def add_person
    
    if params[:person_id]
      person = Person.find(params[:person_id])
      @organization.people.append(person)
      redirect_to organization_path(@organization), notice: "Person added successfully."
    else
      redirect_to organization_path(@organization), alert: "Nothing to be done!"
    end
  end

  def remove_person
    person = Person.find(params[:person_id])
    @organization.people.delete(person.id)
    redirect_to organization_path(@organization), notice: "Person kicked successfully from organization."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_params
      params.require(:organization).permit(:name, :person_id)
    end
end
