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

ActiveRecord::Schema.define(version: 20131119230738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.string   "account_type"
    t.string   "profile_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "postal_code"
    t.integer  "telephone"
    t.integer  "mobile"
    t.string   "email"
    t.date     "date_opened"
    t.integer  "account_number"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "category_name"
    t.string   "price_range"
    t.text     "remark"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cuisines", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.date     "reserve_date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "party_count"
    t.string   "status"
    t.integer  "account_id"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.integer  "account_id"
    t.string   "name"
    t.text     "summary"
    t.integer  "max_capacity"
    t.integer  "avail_capacity"
    t.integer  "two_seater"
    t.integer  "four_seater"
    t.integer  "six_seater"
    t.integer  "eight_seater"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "reviews", force: true do |t|
    t.text     "review"
    t.integer  "rating"
    t.integer  "account_id"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.date     "s_date"
    t.integer  "t12b"
    t.integer  "t1b"
    t.integer  "t2b"
    t.integer  "t6b"
    t.integer  "t7b"
    t.integer  "t8b"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurant_id"
  end

end
