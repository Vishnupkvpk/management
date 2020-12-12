class Income < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_and_belongs_to_many :expenses
  def self.total_value
    sum(:amount)
  end
end
