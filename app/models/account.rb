class Account < ApplicationRecord
  has_many :incomes_operations
  has_many :costs_operations
end
