class CreateIncomeCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :income_categories do |t|
      t.string :title
      t.string :icon
      t.string :color

      t.timestamps
    end
  end
end
