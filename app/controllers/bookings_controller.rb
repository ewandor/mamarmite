class BookingsController < ApplicationController
	before_action :set_booking, only: [:edit, :update]

	def new
		@booking = Booking.new
	end

	def create
		@booking = Booking.new(booking_params)
		@booking.user = current_user
		cook = Cook.find(params[:cook_id])
		@booking.cook = cook
		if @booking.save
  		redirect_to 'cooks#index' # redirect to index for now
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  	@booking = Booking.update(booking_params)
  	redirect_to 'cooks#index' # redirect to index for now
  end


  private


  def set_booking
  	@booking = Booking.find(params[:id])
  end

  def booking_params
  	params.require(:booking).permit(:starts_at, :foodies_number, :accepted)
  end
end
