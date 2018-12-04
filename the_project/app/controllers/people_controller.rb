class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    person = Person.new(person_params)
    if person.save
      redirect_to person_path(person)
    else
      redirect_to new_person_path
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    person = Person.find(params[:id])
    if person.update(person_params)
      redirect_to person_path(person)
    else
      redirect_to edit_person_path
    end
  end

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def destroy
    person = Person.find(params[:id])
    person.destroy
    redirect_to people_path
  end

private

  def person_params
    params.require(:person).permit(:name, :age, :sex)
  end
end
