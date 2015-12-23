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

ActiveRecord::Schema.define(version: 20151220104560) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "postcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "addresses", ["client_id"], name: "index_addresses_on_client_id"
  add_index "addresses", ["postcode"], name: "index_addresses_on_postcode"

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "locked",       default: false
    t.integer  "orders_count"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "clients", ["first_name"], name: "index_clients_on_first_name"
  add_index "clients", ["last_name"], name: "index_clients_on_last_name"

  create_table "clients_roles", id: false, force: :cascade do |t|
    t.integer "client_id"
    t.integer "role_id"
  end

  add_index "clients_roles", ["client_id", "role_id"], name: "index_clients_roles_on_client_id_and_role_id"
  add_index "clients_roles", ["client_id"], name: "index_clients_roles_on_client_id"
  add_index "clients_roles", ["role_id"], name: "index_clients_roles_on_role_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "status"
    t.integer  "price"
    t.time     "ordered_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["client_id"], name: "index_orders_on_client_id"
  add_index "orders", ["created_at"], name: "index_orders_on_created_at"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "roles", ["name"], name: "index_roles_on_name"

end
