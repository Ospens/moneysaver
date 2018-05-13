class AddIncomeCategoriesIdToPositiveOperations < ActiveRecord::Migration[5.1]
  def change
    add_column :positive_operations, :income_category_id, :integer
  end
end
