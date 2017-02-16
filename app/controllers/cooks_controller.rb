class CooksController < ApplicationController
  before_action :set_cook, only: [:show, :edit, :update]

  def index
    @cooks = Cook.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@cooks) do |cook, marker|
      marker.lat cook.latitude
      marker.lng cook.longitude
    end
  end

  def show
    @cook = Cook.find(params[:id])
    @booking = Booking.new
    @cook_hash = Gmaps4rails.build_markers(@cook) do |cook, marker|
      marker.lat cook.latitude
      marker.lng cook.longitude
    end

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
    params.require(:cook).permit(:speciality, :address, :home_style, :age, :capacity, :nickname, :motto, :price, :cooker_photo, recipe_photos: [], location_photos: [])
  end

  def set_cook
    @cook = Cook.find(params[:id])
  end

end
