class AddDatetimeToCostsOperations < ActiveRecord::Migration[5.1]
  def change
    add_column :costs_operations, :datetime, :timestamp
    add_column :incomes_operations, :datetime, :timestamp
  end
end
