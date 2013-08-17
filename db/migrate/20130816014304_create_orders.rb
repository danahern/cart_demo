class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :session_id
      t.integer :sub_total
      t.integer :tax
      t.integer :total
      t.integer :line_items_count
      t.integer :line_items_quantity_count
      t.string :shipping_line_1
      t.string :shipping_line_2
      t.string :shipping_city
      t.string :shipping_state
      t.string :shipping_zip_code
      t.string :billing_line_1
      t.string :billing_line_2
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip_code
      t.date :billing_expires_on
      t.string :billing_masked_number
      t.string :billing_type
      t.datetime :submitted_at
      t.timestamps
    end
  end
end
