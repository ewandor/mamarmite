class BookingsController < ApplicationController
	before_action :set_booking, only: [:edit, :update]

	def new
		@booking = Booking.new
	end

	def create
		@booking = Booking.new(booking_params)
		@booking.user = current_user
		@cook = Cook.find(params[:cook_id])
		@booking.cook = @cook
		if @booking.save
  		redirect_to cook_path(@cook) # redirect to index for now later on dashboard
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


  private


  def set_booking
  	@booking = Booking.find(params[:id])
  end

  def booking_params
  	params.require(:booking).permit(:starts_at, :foodies_number, :accepted)
  end
end

