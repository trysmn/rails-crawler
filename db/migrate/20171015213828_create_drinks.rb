class CreateDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.float :abv
      t.float :price
      t.string :category

      t.timestamps
    end
  end
end
