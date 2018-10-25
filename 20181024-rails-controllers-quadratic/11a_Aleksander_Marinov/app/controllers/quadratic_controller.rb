class QuadraticController < ApplicationController
  def new
  end
  def create
    a = params[:a]
    b = params[:b]
    c = params[:c]
    render plain: "Hey, hey a new application has been created for #{a}, #{b}, #{c}"
  end
end
