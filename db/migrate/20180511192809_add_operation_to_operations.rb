class AddOperationToOperations < ActiveRecord::Migration[5.1]
  def change
    add_column :operations, :operation, :float
    add_column :operations, :budget_id, :integer
    add_column :operations, :datetime, :date
    remove_column :operations, :remainder
    remove_column :operations, :spent
  end
end
