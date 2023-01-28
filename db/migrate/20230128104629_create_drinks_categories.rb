class CreateDrinksCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :drinks_categories do |t|
      t.string :description

      t.timestamps
    end
  end
end
