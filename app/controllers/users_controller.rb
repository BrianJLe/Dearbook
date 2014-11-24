class UsersController < ApplicationController
	def index
		@users = User.all
		#@cohorts = Cohort.find()
	end
end
