class CodesController < ApplicationController
	def index
	end

	def new
		@code = Code.new
	end

	def create
		if !user_signed_in?
			@check = Code.find_by_invite_code(params[:code][:invite_code])
			Rails.logger.info("Check: #{@check.inspect}")
			if @check
				redirect_to new_user_registration_path
			else
				@check = Code.new
				@error = "NOT WORKING"
				Rails.logger.info("RAP: #{@error.inspect}")
				flash[:notices] = ["Invalid code!"]
				flash[:errors] = ["BLAHGH"]
				redirect_to :back
			end
		else
			@code = Code.new(params[:code])
			if @code.save
				redirect_to @code
			end
		end
	end

	def edit
	end

	def show
		@code = Code.find(params[:id])
	end

	def invite
		@code = Code.new
		@check = Code.find_by_invite_code(params[:code])
		Rails.logger.info("Check: #{@check.inspect}")
		Rails.logger.info("Check2: #{params.inspect}")
	end
end
