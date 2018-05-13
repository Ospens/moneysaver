# Budget model
class Budget < ApplicationRecord
  has_many :positive_operation

  after_save :first_account_replenishment

  def first_account_replenishment
    PositiveOperation.create!(value: value, budget_id: id)
  end
end
