class PostsController < ApplicationController


	def show
		
	end

	def create
		@account = Account.find(params[:account_id])
		@post = @account.posts.create(create_params)
		@post.user = current_user
		@user = @account.user.id
		if @post.save
			redirect_to account_path(@user)
		

		end
	end

	def destroy
		@account = Account.find(params[:account_id])
		@post = @account.posts.find(params[:id])
		@user = @account.user.id
		if @post.destroy
			redirect_to account_path(@user)

		end

	end

	private


	def create_params
		params.require(:post).permit(:body)
	end

end
