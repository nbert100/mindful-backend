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

ActiveRecord::Schema.define(version: 2020_03_13_013941) do

  create_table "appointments", force: :cascade do |t|
    t.integer "client_id"
    t.integer "provider_id"
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "when"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "cin"
    t.string "phone"
    t.string "address"
    t.string "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "specialty"
    t.string "phone"
    t.string "fax"
    t.string "address"
    t.string "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end