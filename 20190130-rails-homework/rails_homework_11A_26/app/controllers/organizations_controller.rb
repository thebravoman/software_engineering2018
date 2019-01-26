class OrganizationsController < ApplicationController
  def new
    @organization = Organization.new
  end

  def create
    organization = Organization.new(organization_params)

    if organization.save
      redirect_to organization_path(organization)
    else
      redirect_to new_organization_path
    end
  end

  def update
    organization = Organization.find(params[:id])

    if organization.update(organization_params)
      redirect_to organization_path(organization)
    else
      redirect_to new_organization_path
    end
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def destroy
    organization = Organization.find(params[:id])
    organization.destroy
    redirect_to organizations_path
  end

  def show
    @organization = Organization.find(params[:id])

    @events_attended = @organization.events
    @events_unattended = []

    all_events = Event.all

    all_events.each do |e|
      if !@events_attended.include?(e)
        @events_unattended.append(e)
      end
    end
  end

  def index
    @organizations = Organization.all
  end

  def attend_event
    organization = Organization.find(params[:organization_id])
    event = Event.find(params[:event_id])

    organization.events << event
    # event.people << person

    redirect_to organization_path(Organization.find(params[:organization_id]))
  end

  def cancel_attend
    attendance = Attendance.find_by(event_id: params[:event_id], organization_id: params[:organization_id])
    attendance.destroy
    redirect_to organization_path(Organization.find(params[:organization_id]))
  end

private

  def organization_params
    params.require(:organization).permit(:name)
  end

end
