class User < ApplicationRecord # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable # Include default devise modules. Others available are:
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  has_many :incomes
  has_many :expenses
  def welcome_email
    UserMailer.welcome_email(self).deliver
  end

  def admin?
    admin
  end
end
