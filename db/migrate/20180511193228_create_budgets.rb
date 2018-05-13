class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.string :title
      t.float :value
      
      t.timestamps
    end
  end
end
