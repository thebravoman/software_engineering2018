class CatsController < ApplicationController
  def new
    @cat = Cat.new
  end

  def create
    cat = Cat.create(cat_params)
    redirect_to cat_path(cat)
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
