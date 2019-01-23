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

ActiveRecord::Schema.define(version: 2019_01_23_075605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_pathman"
  enable_extension "plpgsql"

# Could not dump table "pathman_config" because of following StandardError
#   Unknown type 'regclass' for column 'partrel'

# Could not dump table "pathman_config_params" because of following StandardError
#   Unknown type 'regclass' for column 'partrel'

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price_cents", null: false
    t.bigint "seller_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seller_id"], name: "index_products_on_seller_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_transactions_on_product_id"
  end

  add_foreign_key "products", "sellers"
  add_foreign_key "transactions", "products"
end
