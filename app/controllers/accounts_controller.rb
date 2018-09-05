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
				redirect_to current_user_path(current_user)
			end
	end

	def show
			create if current_user.account.nil?
			@user = User.find(params[:id])
			@account_id = @user.account_id
			@account = Account.find_by(id: @account_id)
	end


end
