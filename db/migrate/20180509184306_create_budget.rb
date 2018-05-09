class CreateBudget < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.float :budget
      t.float :remainder
      t.float :spent
    end
  end
end
