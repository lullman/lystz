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

ActiveRecord::Schema.define(version: 20170223022056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collaborators", force: :cascade do |t|
    t.integer "user_id"
    t.integer "list_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer  "list_id"
    t.string   "item_name",                         null: false
    t.string   "url"
    t.integer  "suggested_by"
    t.boolean  "purchased",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "redacted",     default: false
    t.string   "visibility",   default: "everyone"
    t.string   "location"
  end

  create_table "list_types", force: :cascade do |t|
    t.string "list_type"
  end

  create_table "lists", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "list_name",                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "list_type"
    t.boolean  "public",     default: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",      null: false
    t.string   "password_hash", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "vote_value"
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end