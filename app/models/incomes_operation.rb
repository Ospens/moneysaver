class IncomesOperation < ApplicationRecord
  belongs_to :incomes_category
  belongs_to :account
end
