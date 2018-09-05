class Account < ApplicationRecord
	#self.primary_key = "account_id"
	has_one :user
	has_many :posts
end
