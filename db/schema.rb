ActiveRecord::Schema.define(version: 0) do

  create_table "goods_master", primary_key: "goods_id", force: :cascade do |t|
    t.string "goods_name",    limit: 512
    t.binary "goods_picture", limit: 4294967295
  end

  create_table "sale", primary_key: "sale_id", force: :cascade do |t|
    t.datetime "sale_date"
    t.integer  "user_id",   limit: 4
    t.integer  "sale_kind", limit: 4
    t.integer  "storeid",   limit: 4
  end

  add_index "sale", ["storeid"], name: "storeid", using: :btree
  add_index "sale", ["user_id"], name: "user_id", using: :btree

  create_table "sale_detail", primary_key: "sale_detail_id", force: :cascade do |t|
    t.integer "sales_id",   limit: 8
    t.integer "goods_id",   limit: 4
    t.decimal "sale_price",           precision: 12
    t.decimal "sale_point",           precision: 12
  end

  add_index "sale_detail", ["goods_id"], name: "goods_id", using: :btree
  add_index "sale_detail", ["sales_id"], name: "sales_id", using: :btree

  create_table "store_master", primary_key: "storeid", force: :cascade do |t|
    t.string "storename", limit: 256
  end

  create_table "user_master", primary_key: "userid", force: :cascade do |t|
    t.string  "username",    limit: 256
    t.decimal "phonenumber",                    precision: 10
    t.integer "storeid",     limit: 4
    t.binary  "idpdf",       limit: 4294967295
  end

  add_index "user_master", ["storeid"], name: "storeid", using: :btree

  add_foreign_key "sale", "store_master", column: "storeid", primary_key: "storeid", name: "sale_FK1"
  add_foreign_key "sale", "user_master", column: "user_id", primary_key: "userid", name: "sale_FK2"
  add_foreign_key "sale_detail", "goods_master", column: "goods_id", primary_key: "goods_id", name: "sale_detail_FK1"
  add_foreign_key "sale_detail", "sale", column: "sales_id", primary_key: "sale_id", name: "sale_detail_FK2"
  add_foreign_key "user_master", "store_master", column: "storeid", primary_key: "storeid", name: "user_master_FK1"
end
