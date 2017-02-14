class CooksController < ApplicationController
  before_action :set_cook, only: [:show, :edit, :update]

  def index
    @cooks = Cook.all
  end

  def show
    @cook = Cook.find(params[:id])
    # raise
  end

  def new
    @cook = Cook.new
  end

  def create
    @cook = Cook.new(cook_params)
    @cook.user = current_user
    if @cook.save
      redirect_to cook_path(@cook)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @cook = Cook.update(cook_params)
    redirect_to cook_path(@cook)
  end

  private

  def cook_params
    params.require(:cook).permit(:speciality, :address_street, :address_town, :zipcode, :home_style, :age, :capacity, :nickname, :motto, :cooker_picture, :photos_home, :price)
  end

  def set_cook
    @cook = Cook.find(params[:id])
  end

end
