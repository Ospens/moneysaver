class CreateIncomesCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :incomes_categories do |t|
      t.string :title
      t.text :description
      t.string :icon
      t.string :color
      t.float :month_budget

      t.timestamps
    end
  end
end
