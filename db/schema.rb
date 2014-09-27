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

ActiveRecord::Schema.define(version: 20140927034222) do

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "furigana"
    t.string   "codename"
    t.string   "tel"
    t.string   "mail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dealings", force: true do |t|
    t.integer  "client_id_id"
    t.integer  "shop_id_id"
    t.integer  "payment_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dealings", ["client_id_id"], name: "index_dealings_on_client_id_id", using: :btree
  add_index "dealings", ["payment_id_id"], name: "index_dealings_on_payment_id_id", using: :btree
  add_index "dealings", ["shop_id_id"], name: "index_dealings_on_shop_id_id", using: :btree

  create_table "details", force: true do |t|
    t.integer  "dealing_id_id"
    t.integer  "product_id_id"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "details", ["dealing_id_id"], name: "index_details_on_dealing_id_id", using: :btree
  add_index "details", ["product_id_id"], name: "index_details_on_product_id_id", using: :btree

  create_table "payments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password"
  end

  add_index "shops", ["email"], name: "index_shops_on_email", unique: true, using: :btree
  add_index "shops", ["reset_password_token"], name: "index_shops_on_reset_password_token", unique: true, using: :btree

end
