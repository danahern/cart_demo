# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130816021106) do

  create_table "line_items", force: true do |t|
    t.integer  "quantity"
    t.integer  "product_id"
    t.integer  "order_id"
    t.integer  "total_price"
    t.integer  "unit_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "session_id"
    t.integer  "sub_total"
    t.integer  "tax"
    t.integer  "total"
    t.integer  "line_items_count"
    t.integer  "line_items_quantity_count"
    t.string   "shipping_line_1"
    t.string   "shipping_line_2"
    t.string   "shipping_city"
    t.string   "shipping_state"
    t.string   "shipping_zip_code"
    t.string   "billing_line_1"
    t.string   "billing_line_2"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_zip_code"
    t.date     "billing_expires_on"
    t.string   "billing_masked_number"
    t.string   "billing_type"
    t.datetime "submitted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.string   "sub_category"
    t.integer  "price"
    t.integer  "cost"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
