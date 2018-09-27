class AccountsController < ApplicationController

	before_action :authenticate_user!

	def new
	  @account = Account.new
	end

	def create

		 	@account = current_user.account
			current_user.save
			@account.save
			redirect_to current_user_path(current_user)
	end

	def show
			create if current_user.account.nil?
			@account = Account.find(params[:id])
			@user = @account.user
	end


end
