class Post < ApplicationRecord
	validates :body, presence: true
	belongs_to :user
	belongs_to :account, dependent: :destroy
	
	delegate :first_name, :last_name, to: :user, allow_nil: true, prefix: true
end
