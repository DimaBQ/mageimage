class ConversationsController < ApplicationController

	def show
		@conversation = current_user.account.mailbox.conversations.find(params[:id])
	end

end
