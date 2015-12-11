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

ActiveRecord::Schema.define(version: 20151210011906) do

  create_table "designers", force: :cascade do |t|
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
    t.string   "company"
    t.string   "city"
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "designers", ["email"], name: "index_designers_on_email", unique: true
  add_index "designers", ["reset_password_token"], name: "index_designers_on_reset_password_token", unique: true

  create_table "favorites", force: :cascade do |t|
    t.string   "piece_id"
    t.string   "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pieces", force: :cascade do |t|
    t.boolean  "necklace_style_3"
    t.boolean  "necklace_style_2"
    t.boolean  "work"
    t.boolean  "night"
    t.boolean  "everyday"
    t.boolean  "gold"
    t.boolean  "silver"
    t.string   "designer_id"
    t.float    "price"
    t.text     "description"
    t.boolean  "necklace_style_1"
    t.string   "title"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "necklace_style_4"
  end

  create_table "users", force: :cascade do |t|
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
    t.boolean  "night"
    t.boolean  "everyday"
    t.boolean  "work"
    t.boolean  "silver"
    t.boolean  "gold"
    t.boolean  "necklace_style_4"
    t.boolean  "necklace_style_3"
    t.boolean  "necklace_style_2"
    t.boolean  "necklace_style_1"
    t.string   "outfit"
    t.string   "city"
    t.date     "dob"
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
