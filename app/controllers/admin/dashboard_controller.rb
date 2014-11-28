class Admin::DashboardController < ApplicationController

	def index
		@users = User.all
		@categories = Category.all
		@codes = Code.all
	end

	def make_admin
		
	end
end
