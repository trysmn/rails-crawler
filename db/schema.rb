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

ActiveRecord::Schema.define(version: 20171028202537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.string   "name"
    t.float    "abv"
    t.float    "price"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "pub_id"
  end

  create_table "pubs", force: :cascade do |t|
    t.string   "name"
    t.time     "opening_time"
    t.time     "closing_time"
    t.boolean  "food"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "offer"
    t.string   "address"
    t.integer  "user_id"
    t.integer  "drink_id"
    t.integer  "city_id"
  end

  create_table "search_details", force: :cascade do |t|
    t.integer  "number_of_pubs"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "city_id"
    t.string   "start_address"
    t.time     "start_time"
    t.string   "start_hour"
    t.string   "start_minute"
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
