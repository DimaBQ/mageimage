class AccountsController < ApplicationController
	before_action :authenticate_user!

	

	def new
	  @account = Account.new
	end

	def create
			new
			current_user.account = @account
			current_user.account_id = @account.id
			current_user.save 
			
	end

	def show
		
			create if current_user.account.nil?
			@account = Account.find(params[:id])
			@user = @account.user
			@current_account = Account.find(current_user.account_id)
	end

end
