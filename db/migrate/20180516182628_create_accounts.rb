class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :title
      t.integer :type
      t.float :balance
      t.text :description
      t.string :icon
      t.string :color

      t.timestamps
    end
  end
end
