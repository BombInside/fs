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

ActiveRecord::Schema.define(version: 20150226122016) do

  create_table "items", force: true do |t|
    t.float    "price"
    t.string   "name"
    t.text     "description"
    t.string   "comppany_name"
    t.boolean  "real"
    t.boolean  "show_price"
    t.float    "weigth"
    t.date     "delivery_date"
    t.datetime "torg_start"
    t.datetime "torg_end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
    t.text     "short_desc"
    t.integer  "votes_count",   default: 0
    t.integer  "bit_count",     default: 0
  end

  add_index "items", ["delivery_date"], name: "index_items_on_delivery_date", using: :btree
  add_index "items", ["name"], name: "index_items_on_name", using: :btree
  add_index "items", ["price"], name: "index_items_on_price", using: :btree
  add_index "items", ["torg_end"], name: "index_items_on_torg_end", using: :btree
  add_index "items", ["torg_start"], name: "index_items_on_torg_start", using: :btree
  add_index "items", ["weigth"], name: "index_items_on_weigth", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.date     "birth_date"
    t.string   "email"
    t.string   "phone"
    t.string   "country"
    t.string   "town"
    t.string   "state"
    t.boolean  "deleted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
    t.boolean  "is_admin"
    t.string   "user_pic"
  end

  add_index "users", ["country"], name: "index_users_on_country", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["name"], name: "index_users_on_name", using: :btree
  add_index "users", ["phone"], name: "index_users_on_phone", using: :btree
  add_index "users", ["surname"], name: "index_users_on_surname", using: :btree
  add_index "users", ["town"], name: "index_users_on_town", using: :btree

end
