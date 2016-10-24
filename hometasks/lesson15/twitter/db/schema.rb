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

ActiveRecord::Schema.define(version: 20161019032322) do

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "twit_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["twit_id"], name: "index_comments_on_twit_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.integer  "twit_id"
    t.integer  "parent_id"
    t.integer  "lft",                        null: false
    t.integer  "rgt",                        null: false
    t.integer  "depth",          default: 0, null: false
    t.integer  "children_count", default: 0, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "tags", ["lft"], name: "index_tags_on_lft"
  add_index "tags", ["parent_id"], name: "index_tags_on_parent_id"
  add_index "tags", ["rgt"], name: "index_tags_on_rgt"
  add_index "tags", ["twit_id"], name: "index_tags_on_twit_id"

  create_table "tags_twits", id: false, force: :cascade do |t|
    t.integer "tag_id",  null: false
    t.integer "twit_id", null: false
  end

  create_table "twits", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "twits", ["user_id"], name: "index_twits_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "nickname"
    t.string   "email"
    t.string   "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end