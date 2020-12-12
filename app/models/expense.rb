class Expense < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_and_belongs_to_many :incomes
  def self.total_value
    sum(:amount)
  end
end
