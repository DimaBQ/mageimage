class PostsController < ApplicationController

	def show
		
	end

	def create
		@account = Account.find(params[:account_id])
		@post = @account.posts.create(create_params)
		@post.user = current_user
		if @post.save
			redirect_to account_path(@account)
		

		end
	end

	private

	def create_params
		params.require(:post).permit(:user, :body)
	end

end
