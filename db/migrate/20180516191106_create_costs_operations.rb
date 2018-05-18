class CreateCostsOperations < ActiveRecord::Migration[5.1]
  def change
    create_table :costs_operations do |t|
      t.references :costs_category, foreign_key: true
      t.references :account, foreign_key: true
      t.float :value

      t.timestamps
    end
  end
end
