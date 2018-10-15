class FriendsController < ApplicationController


	def new
		@friend = Friend.new
	end

	def create
		@friend = Friend.new
		if @friend.save
			redirect_to account_path(:account_id)
		end
		
	end
	

	def update
		@friend = Friend.find(current_user.account.friend.id)

		if @friend.update(friend_params)
			redirect_to account_path(params[:id])
		end
	end

		
	private

	def friend_params
		params.require(:friend).permit(:account_id, :people_list)
	end
	
end
