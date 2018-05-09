class Category < ApplicationRecord
	has_many :budgets, inverse_of: :category
  accepts_nested_attributes_for :budgets
end