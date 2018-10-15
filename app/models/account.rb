class Account < ApplicationRecord
	acts_as_messageable
	has_one :user
	has_one :friend
	has_many :posts

	after_create :create_friend

	def name
    	user.first_name + " " + user.last_name 
  	end

  	

end
