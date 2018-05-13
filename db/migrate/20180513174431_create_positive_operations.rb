class CreatePositiveOperations < ActiveRecord::Migration[5.1]
  def change
    create_table :positive_operations do |t|
      t.integer :budget_id
      t.float :value

      t.timestamps
    end
  end
end
