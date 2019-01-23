class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy]

  def index
    @organizations = Organization.all
  end

  def show
    nonmem = []
    @members = @organization.people

    Person.find_each do |person| 
      if person.organization.nil? and not @members.include?(person) 
        nonmem.push(person)
      end
    end
    
    @nonmembers = nonmem.map{|e| [e.name, e.id]}
  end

  def new
    @organization = Organization.new
  end

    def edit
  end

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

  def update
    respond_to do |format|
      if @organization.update(organization_params)
        format.html { redirect_to @organization, notice: 'Organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization }
      else
        format.html { render :edit }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @organization.destroy
    respond_to do |format|
      format.html { redirect_to organizations_url, notice: 'Organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_member
    set_organization
    member = Person.find(params[:member_id])
    
    if member.organization.nil? 
      member.organization = @organization
      (member.save) ? redirect_to(@organization, notice: "Successfully added member") : render(:index, notice: "Something went wrong") 
    else
      render :index, notice: "Person already has an organization"
    end
  end

  def expell_member

  end

  private

  def set_organization
    @organization = Organization.find(params[:id])
  end

  def organization_params
    params.require(:organization).permit(:name)
  end
end
