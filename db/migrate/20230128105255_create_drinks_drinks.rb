class CreateDrinksDrinks < ActiveRecord::Migration[7.0]
  def change
    create_table :drinks_drinks do |t|
      t.string :name
      t.float :size
      t.float :price
      t.text :body
      t.integer :category

      t.timestamps

      add_foreign_key :drinks_drinks, :drinks_categories, column: :category
    end
  end
end
