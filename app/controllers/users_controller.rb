class UsersController < ApplicationController
	def index
		@users = User.all
		#@cohorts = Cohort.find()
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy

		if @user.destroy
			redirect_to admin_path, notice: "User deleted."
		end
	end
end
