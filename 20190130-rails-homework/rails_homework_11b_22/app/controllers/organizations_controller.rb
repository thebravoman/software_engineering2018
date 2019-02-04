class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find params[:id]
    @organization_events = @organization.events
    @unattending_events = Event.where.not(id: @organization_events)
  end

  def new
    @organization = Organization.new
  end

  def edit
    @organization = Organization.find params[:id]
  end

  def create
    @organization = Organization.new organization_params
    if @organization.save
      redirect_to @organization
    else
      render 'new'
    end
  end

  def update
    @organization = Organization.find params[:id]
    if @organization.update_attributes(organization_params)
      redirect_to @organization
    else
      render 'edit'
    end
  end

  def destroy
    Organization.find(params[:id]).destroy
    redirect_to organizations_path
  end

  private

  def organization_params
    params.require(:organization).permit(:name)
  end
end

