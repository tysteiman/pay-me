class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :payments

  scope :lended,   -> (id) { Loan.where(lender_id: id) }
  scope :borrowed, -> (id) { Loan.where(borrower_id: id) }

  def lended
    User.lended id
  end

  def borrowed
    User.borrowed id
  end
end
