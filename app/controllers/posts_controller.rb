class PostsController < ApplicationController
	before_action :find_account


	def create
		@post = @account.posts.create(create_params)
		@post.user = current_user
		if @post.save
			redirect_to account_path(@account)
		end
	end

	def destroy
		@post = @account.posts.find(params[:id])
		if @post.destroy
			redirect_to account_path(@account)

		end
	end

	private

	def find_account
		@account = Account.find(params[:account_id])
	end




	def create_params
		params.require(:post).permit(:user_id, :account_id, :body)
	end

end
