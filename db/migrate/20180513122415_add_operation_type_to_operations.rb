class AddOperationTypeToOperations < ActiveRecord::Migration[5.1]
  def change
    add_column :operations, :operation_type, :integer
  end
end
