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

ActiveRecord::Schema.define(version: 2021_10_14_132606) do

  create_table "categories", force: :cascade do |t|
    t.string "person"
    t.string "company"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "detail_orders", force: :cascade do |t|
    t.integer "code_detail_order"
    t.integer "code_order"
    t.string "product"
    t.string "description"
    t.integer "unit_value"
    t.integer "total_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoice_details", force: :cascade do |t|
    t.integer "invoice_detail_code"
    t.integer "code_invoice"
    t.string "description"
    t.integer "amount"
    t.integer "unit_value"
    t.integer "total_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "code_invoice"
    t.integer "code_sale"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kinds", force: :cascade do |t|
    t.string "kind"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "code_order"
    t.integer "code_detail_order"
    t.integer "code_customer"
    t.integer "code_employee"
    t.integer "code_product"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pqrs", force: :cascade do |t|
    t.integer "code_pqr"
    t.integer "code_customer"
    t.string "code_sale"
    t.string "kind"
    t.string "description"
    t.string "state"
    t.string "reference"
    t.date "date"
    t.string "code_kind"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "code_product"
    t.string "name"
    t.integer "price"
    t.string "description"
    t.string "characteristic"
    t.string "mark"
    t.string "kind"
    t.integer "discount"
    t.string "reference"
    t.integer "code_supplier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "photo"
  end

  create_table "sale_details", force: :cascade do |t|
    t.integer "code_sale_detail"
    t.integer "code_sale"
    t.string "product"
    t.string "description"
    t.integer "unit_value"
    t.integer "total_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sales", force: :cascade do |t|
    t.integer "code_sale"
    t.integer "code_customer"
    t.integer "code_employee"
    t.integer "code_product"
    t.string "kind"
    t.string "way_to_pay"
    t.integer "amount"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.integer "code_supplier"
    t.integer "id_person"
    t.integer "nit_company"
    t.string "name"
    t.string "last_name"
    t.string "kind"
    t.string "sex"
    t.string "email"
    t.integer "telephone"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "photo"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.integer "telephone"
    t.string "sex"
    t.string "address"
    t.date "birth_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
