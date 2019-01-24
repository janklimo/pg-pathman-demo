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

ActiveRecord::Schema.define(version: 2019_01_24_023849) do

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
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "index_transactions_on_created_at"
    t.index ["product_id"], name: "index_transactions_on_product_id"
    t.index ["seller_id"], name: "index_transactions_on_seller_id"
    t.index ["type", "created_at"], name: "index_transactions_on_type_and_created_at"
  end

  create_table "transactions_1", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_1_created_at_idx"
    t.index ["product_id"], name: "transactions_1_product_id_idx"
    t.index ["seller_id"], name: "transactions_1_seller_id_idx"
  end

  create_table "transactions_10", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_10_created_at_idx"
    t.index ["product_id"], name: "transactions_10_product_id_idx"
    t.index ["seller_id"], name: "transactions_10_seller_id_idx"
  end

  create_table "transactions_11", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_11_created_at_idx"
    t.index ["product_id"], name: "transactions_11_product_id_idx"
    t.index ["seller_id"], name: "transactions_11_seller_id_idx"
  end

  create_table "transactions_12", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_12_created_at_idx"
    t.index ["product_id"], name: "transactions_12_product_id_idx"
    t.index ["seller_id"], name: "transactions_12_seller_id_idx"
  end

  create_table "transactions_13", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_13_created_at_idx"
    t.index ["product_id"], name: "transactions_13_product_id_idx"
    t.index ["seller_id"], name: "transactions_13_seller_id_idx"
  end

  create_table "transactions_14", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_14_created_at_idx"
    t.index ["product_id"], name: "transactions_14_product_id_idx"
    t.index ["seller_id"], name: "transactions_14_seller_id_idx"
  end

  create_table "transactions_15", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_15_created_at_idx"
    t.index ["product_id"], name: "transactions_15_product_id_idx"
    t.index ["seller_id"], name: "transactions_15_seller_id_idx"
  end

  create_table "transactions_16", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_16_created_at_idx"
    t.index ["product_id"], name: "transactions_16_product_id_idx"
    t.index ["seller_id"], name: "transactions_16_seller_id_idx"
  end

  create_table "transactions_17", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_17_created_at_idx"
    t.index ["product_id"], name: "transactions_17_product_id_idx"
    t.index ["seller_id"], name: "transactions_17_seller_id_idx"
  end

  create_table "transactions_18", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_18_created_at_idx"
    t.index ["product_id"], name: "transactions_18_product_id_idx"
    t.index ["seller_id"], name: "transactions_18_seller_id_idx"
  end

  create_table "transactions_19", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_19_created_at_idx"
    t.index ["product_id"], name: "transactions_19_product_id_idx"
    t.index ["seller_id"], name: "transactions_19_seller_id_idx"
  end

  create_table "transactions_2", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_2_created_at_idx"
    t.index ["product_id"], name: "transactions_2_product_id_idx"
    t.index ["seller_id"], name: "transactions_2_seller_id_idx"
  end

  create_table "transactions_20", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_20_created_at_idx"
    t.index ["product_id"], name: "transactions_20_product_id_idx"
    t.index ["seller_id"], name: "transactions_20_seller_id_idx"
  end

  create_table "transactions_21", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_21_created_at_idx"
    t.index ["product_id"], name: "transactions_21_product_id_idx"
    t.index ["seller_id"], name: "transactions_21_seller_id_idx"
  end

  create_table "transactions_22", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_22_created_at_idx"
    t.index ["product_id"], name: "transactions_22_product_id_idx"
    t.index ["seller_id"], name: "transactions_22_seller_id_idx"
  end

  create_table "transactions_23", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_23_created_at_idx"
    t.index ["product_id"], name: "transactions_23_product_id_idx"
    t.index ["seller_id"], name: "transactions_23_seller_id_idx"
  end

  create_table "transactions_24", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_24_created_at_idx"
    t.index ["product_id"], name: "transactions_24_product_id_idx"
    t.index ["seller_id"], name: "transactions_24_seller_id_idx"
  end

  create_table "transactions_25", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_25_created_at_idx"
    t.index ["product_id"], name: "transactions_25_product_id_idx"
    t.index ["seller_id"], name: "transactions_25_seller_id_idx"
  end

  create_table "transactions_26", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_26_created_at_idx"
    t.index ["product_id"], name: "transactions_26_product_id_idx"
    t.index ["seller_id"], name: "transactions_26_seller_id_idx"
  end

  create_table "transactions_27", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_27_created_at_idx"
    t.index ["product_id"], name: "transactions_27_product_id_idx"
    t.index ["seller_id"], name: "transactions_27_seller_id_idx"
  end

  create_table "transactions_28", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_28_created_at_idx"
    t.index ["product_id"], name: "transactions_28_product_id_idx"
    t.index ["seller_id"], name: "transactions_28_seller_id_idx"
  end

  create_table "transactions_29", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_29_created_at_idx"
    t.index ["product_id"], name: "transactions_29_product_id_idx"
    t.index ["seller_id"], name: "transactions_29_seller_id_idx"
  end

  create_table "transactions_3", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_3_created_at_idx"
    t.index ["product_id"], name: "transactions_3_product_id_idx"
    t.index ["seller_id"], name: "transactions_3_seller_id_idx"
  end

  create_table "transactions_4", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_4_created_at_idx"
    t.index ["product_id"], name: "transactions_4_product_id_idx"
    t.index ["seller_id"], name: "transactions_4_seller_id_idx"
  end

  create_table "transactions_5", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_5_created_at_idx"
    t.index ["product_id"], name: "transactions_5_product_id_idx"
    t.index ["seller_id"], name: "transactions_5_seller_id_idx"
  end

  create_table "transactions_6", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_6_created_at_idx"
    t.index ["product_id"], name: "transactions_6_product_id_idx"
    t.index ["seller_id"], name: "transactions_6_seller_id_idx"
  end

  create_table "transactions_7", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_7_created_at_idx"
    t.index ["product_id"], name: "transactions_7_product_id_idx"
    t.index ["seller_id"], name: "transactions_7_seller_id_idx"
  end

  create_table "transactions_8", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_8_created_at_idx"
    t.index ["product_id"], name: "transactions_8_product_id_idx"
    t.index ["seller_id"], name: "transactions_8_seller_id_idx"
  end

  create_table "transactions_9", id: :bigint, default: -> { "nextval('transactions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "type", null: false
    t.integer "total_cents", null: false
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "refund_id"
    t.bigint "seller_id"
    t.index ["created_at"], name: "transactions_9_created_at_idx"
    t.index ["product_id"], name: "transactions_9_product_id_idx"
    t.index ["seller_id"], name: "transactions_9_seller_id_idx"
  end

  add_foreign_key "products", "sellers"
  add_foreign_key "transactions", "products"
  add_foreign_key "transactions", "sellers"
  add_foreign_key "transactions_1", "products", name: "transactions_1_product_id_fkey"
  add_foreign_key "transactions_1", "sellers", name: "transactions_1_seller_id_fkey"
  add_foreign_key "transactions_10", "products", name: "transactions_10_product_id_fkey"
  add_foreign_key "transactions_10", "sellers", name: "transactions_10_seller_id_fkey"
  add_foreign_key "transactions_11", "products", name: "transactions_11_product_id_fkey"
  add_foreign_key "transactions_11", "sellers", name: "transactions_11_seller_id_fkey"
  add_foreign_key "transactions_12", "products", name: "transactions_12_product_id_fkey"
  add_foreign_key "transactions_12", "sellers", name: "transactions_12_seller_id_fkey"
  add_foreign_key "transactions_13", "products", name: "transactions_13_product_id_fkey"
  add_foreign_key "transactions_13", "sellers", name: "transactions_13_seller_id_fkey"
  add_foreign_key "transactions_14", "products", name: "transactions_14_product_id_fkey"
  add_foreign_key "transactions_14", "sellers", name: "transactions_14_seller_id_fkey"
  add_foreign_key "transactions_15", "products", name: "transactions_15_product_id_fkey"
  add_foreign_key "transactions_15", "sellers", name: "transactions_15_seller_id_fkey"
  add_foreign_key "transactions_16", "products", name: "transactions_16_product_id_fkey"
  add_foreign_key "transactions_16", "sellers", name: "transactions_16_seller_id_fkey"
  add_foreign_key "transactions_17", "products", name: "transactions_17_product_id_fkey"
  add_foreign_key "transactions_17", "sellers", name: "transactions_17_seller_id_fkey"
  add_foreign_key "transactions_18", "products", name: "transactions_18_product_id_fkey"
  add_foreign_key "transactions_18", "sellers", name: "transactions_18_seller_id_fkey"
  add_foreign_key "transactions_19", "products", name: "transactions_19_product_id_fkey"
  add_foreign_key "transactions_19", "sellers", name: "transactions_19_seller_id_fkey"
  add_foreign_key "transactions_2", "products", name: "transactions_2_product_id_fkey"
  add_foreign_key "transactions_2", "sellers", name: "transactions_2_seller_id_fkey"
  add_foreign_key "transactions_20", "products", name: "transactions_20_product_id_fkey"
  add_foreign_key "transactions_20", "sellers", name: "transactions_20_seller_id_fkey"
  add_foreign_key "transactions_21", "products", name: "transactions_21_product_id_fkey"
  add_foreign_key "transactions_21", "sellers", name: "transactions_21_seller_id_fkey"
  add_foreign_key "transactions_22", "products", name: "transactions_22_product_id_fkey"
  add_foreign_key "transactions_22", "sellers", name: "transactions_22_seller_id_fkey"
  add_foreign_key "transactions_23", "products", name: "transactions_23_product_id_fkey"
  add_foreign_key "transactions_23", "sellers", name: "transactions_23_seller_id_fkey"
  add_foreign_key "transactions_24", "products", name: "transactions_24_product_id_fkey"
  add_foreign_key "transactions_24", "sellers", name: "transactions_24_seller_id_fkey"
  add_foreign_key "transactions_25", "products", name: "transactions_25_product_id_fkey"
  add_foreign_key "transactions_25", "sellers", name: "transactions_25_seller_id_fkey"
  add_foreign_key "transactions_26", "products", name: "transactions_26_product_id_fkey"
  add_foreign_key "transactions_26", "sellers", name: "transactions_26_seller_id_fkey"
  add_foreign_key "transactions_27", "products", name: "transactions_27_product_id_fkey"
  add_foreign_key "transactions_27", "sellers", name: "transactions_27_seller_id_fkey"
  add_foreign_key "transactions_28", "products", name: "transactions_28_product_id_fkey"
  add_foreign_key "transactions_28", "sellers", name: "transactions_28_seller_id_fkey"
  add_foreign_key "transactions_29", "products", name: "transactions_29_product_id_fkey"
  add_foreign_key "transactions_29", "sellers", name: "transactions_29_seller_id_fkey"
  add_foreign_key "transactions_3", "products", name: "transactions_3_product_id_fkey"
  add_foreign_key "transactions_3", "sellers", name: "transactions_3_seller_id_fkey"
  add_foreign_key "transactions_4", "products", name: "transactions_4_product_id_fkey"
  add_foreign_key "transactions_4", "sellers", name: "transactions_4_seller_id_fkey"
  add_foreign_key "transactions_5", "products", name: "transactions_5_product_id_fkey"
  add_foreign_key "transactions_5", "sellers", name: "transactions_5_seller_id_fkey"
  add_foreign_key "transactions_6", "products", name: "transactions_6_product_id_fkey"
  add_foreign_key "transactions_6", "sellers", name: "transactions_6_seller_id_fkey"
  add_foreign_key "transactions_7", "products", name: "transactions_7_product_id_fkey"
  add_foreign_key "transactions_7", "sellers", name: "transactions_7_seller_id_fkey"
  add_foreign_key "transactions_8", "products", name: "transactions_8_product_id_fkey"
  add_foreign_key "transactions_8", "sellers", name: "transactions_8_seller_id_fkey"
  add_foreign_key "transactions_9", "products", name: "transactions_9_product_id_fkey"
  add_foreign_key "transactions_9", "sellers", name: "transactions_9_seller_id_fkey"
end
