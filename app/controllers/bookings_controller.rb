class BookingsController < ApplicationController
  before_action :set_cook, only: [:new, :create]
  before_action :set_booking, only: [ :accept, :decline ]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.cook = @cook
    if @booking.save
  		redirect_to user_path(current_user) # redirect to index for now later on dashboard

  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  	@booking = Booking.update(booking_params)
  	redirect_to cook_path(@cook) # redirect to index for now later on dashboard
  end

  def accept
    booking = @booking
    booking.accepted = "accepted"
    booking.save
    redirect_to user_path(current_user)   
  end
  
  def decline
    booking = @booking
    booking.accepted = "declined"
    booking.save
    redirect_to user_path(current_user)   
  end

  private


  def booking_params
  	params.require(:booking).permit(:starts_at, :foodies_number, :accepted, :cook_id, :user_id )
  end
  def set_cook
    @cook = Cook.find(params[:cook_id])
  end
  def set_booking
    @booking = Booking.find(params[:id])
  end
end

