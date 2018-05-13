# Category model
class Category < ApplicationRecord
  has_many :budgets
  has_many :operations
end
