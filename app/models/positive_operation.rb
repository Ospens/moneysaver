# Operations for refill budget
class PositiveOperation < ApplicationRecord
  belongs_to :budget
  belongs_to :income_category
end
