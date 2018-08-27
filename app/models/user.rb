class User < ApplicationRecord

  after_create :create_account

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable#, :confirmable

  has_many :posts
  belongs_to :account, optional: true, dependent: :destroy

  validates :account_id, numericality:{ allow_nil: true }


  def create_account
    #@user = current_user
    #@account = Account.new
    #current_user.account = @account
    #current_user.save
   # @account.save
  
  end

  

end
