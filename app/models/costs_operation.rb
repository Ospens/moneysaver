class CostsOperation < ApplicationRecord
  belongs_to :costs_category
  belongs_to :account
end
