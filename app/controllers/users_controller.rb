class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@booking = current_user.bookings
	end

	def edit
		
	end

	def update
		
	end
	private

end
