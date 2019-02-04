class OrganizationsController < ApplicationController

	def index
		@organizations = Organization.all
	end
	
	def new
		@organization = Organization.new
	end

	def create
		organization = Organization.new(organizaton_params)
		if organization.save
			redirect_to organization_path(organization)
		else
			redirect_to new_organization_path
		end
	end

	def show
		@organization = Organization.find(params[:id])
		@events_not_attended = Array.new
		@events_attended = Array.new
		Event.find_each do |event|
			if event.organizations.exists?
				if event.organizations.ids.include? @organization.id
					@events_attended.push(event)
				else
					@events_not_attended.push(event)					
				end
			else
				@events_not_attended.push(event)
			end
		end
	end

	def add_event
		organization = Organization.find(params[:organization_id])
		event = Event.find_by(name: params[:event])
		if Attendance.find_by(organization: organization, event: event)
			#do nothing
		else
			Attendance.create(organization: organization, event: event)
		end
		redirect_to organization_path(organization)
	end

	def delete_event
		organization = Organization.find(params[:organization_id])
		event = Event.find(params[:event_id])
		if Attendance.find_by(organization: organization, event: event)
			Attendance.find_by(organization: organization, event: event).destroy
		end		
		redirect_to organization_path(organization)
	end

	def organizaton_params
		params.require(:organization).permit(:name)
	end
end
