class RenameBudgetsToOperations < ActiveRecord::Migration[5.1]
  def change
    rename_table :budgets, :operations
  end
end
