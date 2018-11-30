class CatsController < ApplicationController
  def new
    @cat = Cat.new
  end

  def create
    cat = Cat.new(cat_params)
    if cat.save
      redirect_to cat_path(cat)
    else
      redirect_to new_cat_path
    end
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    cat = Cat.find(params[:id])
    if cat.update(cat_params)
      redirect_to cat_path(cat)
    else
      redirect_to edit_cat_path(cat)
    end
  end

  def destroy
    cat = Cat.find(params[:id])
    cat.destroy
    redirect_to cats_path
  end

  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

private
  def cat_params
    params.require(:cat).permit(:name, :weight, :breed)
  end
end
