class PersonsController < ApplicationController

	def index
		@person = Person.all
	end

	def new 
		@person = Person.new
	end

	def show
		@person = Person.find(params[:id]);
		@event = Event.all
	end	

	def create
		@person = Person.new(person_params)

		if(@person.save)
			redirect_to @person
		else
			render 'new'	
		end
				
	end	

	def edit
		@person = Person.find(params[:id]);
	end	

	def update
		@person = Person.find(params[:id]);

		if(@person.update(person_params))
			redirect_to @person
		else
			render 'edit'	
		end
	end	

	def destroy
		@person = Person.find(params[:id]);
		@person.destroy

		redirect_to persons_path		
	end	


	private def person_params
		params.require(:person).permit(:name)
	end 



end
