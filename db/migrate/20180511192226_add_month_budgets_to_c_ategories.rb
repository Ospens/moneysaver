class AddMonthBudgetsToCAtegories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :month_budget, :float
  end
end
