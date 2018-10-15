class Post < ApplicationRecord
	validates :user_id, :account_id, :body, presence: true
	belongs_to :user
	belongs_to :account
	
	delegate :first_name, :last_name, to: :user, allow_nil: true, prefix: true
end
