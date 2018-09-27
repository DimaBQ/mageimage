class Account < ApplicationRecord
	acts_as_messageable
	has_one :user
	has_many :posts

	def name
    	user.first_name + " " + user.last_name 
  	end
end
