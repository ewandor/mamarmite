class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@booking = current_user.bookings
		@bookings_accepted = Booking.where(accepted: "accepted")
		@bookings_pending = Booking.where(accepted: "pending")
		@bookings_declined = Booking.where(accepted: "declined")

	end

	def edit
		
	end

	def update
		
	end
	private

end
