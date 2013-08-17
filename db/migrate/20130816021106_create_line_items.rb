class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.integer :product_id
      t.integer :order_id
      t.integer :total_price
      t.integer :unit_price
      t.timestamps
    end
  end
end
