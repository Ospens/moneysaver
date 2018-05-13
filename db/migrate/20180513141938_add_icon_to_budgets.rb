class AddIconToBudgets < ActiveRecord::Migration[5.1]
  def change
    add_column :budgets, :icon, :string
    add_column :budgets, :color, :string
  end
end
