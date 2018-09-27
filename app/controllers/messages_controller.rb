class MessagesController < ApplicationController
	before_action :set_conversation

	def new
		
	end

	def create
		receipt = current_user.account.reply_to_conversation(@conversation, params[:body])
		redirect_to conversation_path(receipt.conversation)
	end

	def destroy
		
	end

	private

	def set_conversation
		@conversation = current_user.account.mailbox.conversations.find(params[:conversation_id])
	end


end
