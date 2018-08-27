class AccountsController < ApplicationController
	before_action :authenticate_user!

	def new
	  @account = Account.new
	end

	def create
			if current_user.account.nil?
				@account = Account.new
				@user = current_user
				@user.account = @account
				@user.save
				@account.save
				redirect_to current_user_path
			end
	end

	def show 
		@account = Account.find(3)
	end


end
