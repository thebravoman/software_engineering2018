class PeopleController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
  end

  def show 
    @person = Person.find(params[:id])
    @attended = Array.new()
    @unattended = Array.new()
    Event.all.each do |event|
      if event.people.ids.include? @person.id
        @attended.append(event)
        
      else
        @unattended.append(event)
        print(params[:id])
        print("    ")
        print(event.people.ids)
      end
    end
  end

  def new
    @person = Person.new
  end
  
  def create
    @person = Person.new(person_params)
    if @person.save
      format.html { redirect_to @person, notice: 'Person was successfully created.' }
      format.json { render :show, status: :created, location: @person }
    else
      format.html { render :new }
      format.json { render json: @person.errors, status: :unprocessable_entity }
    end
  end

  def update
    if @person.update(person_params)
      format.html { redirect_to @person, notice: 'Person was successfully updated.' }
      format.json { render :show, status: :ok, location: @person }
    else
      format.html { render :edit }
      format.json { render json: @person.errors, status: :unprocessable_entity }
    end
  end

  def destroy
    @person.destroy
    format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
    format.json { head :no_content }
  end

  private
    def person_params
      params.require(:person).permit(:name)
    end
end


