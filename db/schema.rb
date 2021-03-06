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

ActiveRecord::Schema.define(version: 20150302151125) do

  create_table "bits_1s", force: true do |t|
    t.integer  "user_id"
    t.string   "bit_cost"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.integer  "votes_count",          default: 0
    t.integer  "bit_count",            default: 0
    t.string   "i_photo_file_name"
    t.string   "i_photo_content_type"
    t.integer  "i_photo_file_size"
    t.datetime "i_photo_updated_at"
  end

  add_index "items", ["delivery_date"], name: "index_items_on_delivery_date", using: :btree
  add_index "items", ["name"], name: "index_items_on_name", using: :btree
  add_index "items", ["price"], name: "index_items_on_price", using: :btree
  add_index "items", ["torg_end"], name: "index_items_on_torg_end", using: :btree
  add_index "items", ["torg_start"], name: "index_items_on_torg_start", using: :btree
  add_index "items", ["weigth"], name: "index_items_on_weigth", using: :btree

  create_table "users", id: false, force: true do |t|
    t.string   "blah",                limit: 20
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "name"
    t.string   "surname"
    t.date     "birth_date"
    t.string   "email"
    t.string   "phone"
    t.string   "country"
    t.string   "town"
    t.string   "state"
    t.boolean  "deleted"
    t.boolean  "admin"
    t.string   "password"
    t.string   "login"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["country"], name: "index_users_on_country", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["name"], name: "index_users_on_name", using: :btree
  add_index "users", ["phone"], name: "index_users_on_phone", using: :btree
  add_index "users", ["surname"], name: "index_users_on_surname", using: :btree
  add_index "users", ["town"], name: "index_users_on_town", using: :btree

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

end
