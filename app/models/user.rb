class User < ApplicationRecord
  has_many :posts
  belongs_to :account, optional: true, dependent: :destroy

  validates :account_id, numericality:{ allow_nil: true }
  validates :first_name, :last_name, presence: true
  
  after_create :create_account

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable#, :confirmable


end
