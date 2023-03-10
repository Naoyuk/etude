# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_23_201247) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address1"
    t.string "address2"
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "item_code"
    t.string "upc"
    t.string "brand"
    t.integer "size"
    t.integer "pack"
    t.float "z_price"
    t.integer "stock"
    t.string "depertment"
    t.integer "availability_status"
    t.float "case_upc"
    t.string "asin"
    t.string "ean_upc"
    t.string "model_number"
    t.text "description"
    t.integer "replenishment_status"
    t.date "effective_date"
    t.float "current_cost"
    t.float "cost"
    t.string "current_cost_currency"
    t.string "cost_currency"
  end

  create_table "list_items", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "order_id", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_list_items_on_item_id"
    t.index ["order_id"], name: "index_list_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "order_date"
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  add_foreign_key "list_items", "items"
  add_foreign_key "list_items", "orders"
  add_foreign_key "orders", "customers"
end
