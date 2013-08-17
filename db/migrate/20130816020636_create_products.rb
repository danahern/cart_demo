class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :sub_category
      t.integer :price
      t.integer :cost
      t.integer :quantity

      t.timestamps
    end
  end
end
