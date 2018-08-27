class Post < ApplicationRecord
	belongs_to :user
	belongs_to :account
	delegate :first_name, to: :user, allow_nil: true, prefix: true
end
