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

ActiveRecord::Schema.define(version: 2021_04_17_180348) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_items", force: :cascade do |t|
    t.string "item"
    t.bigint "assignee_id"
    t.bigint "meeting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignee_id"], name: "index_action_items_on_assignee_id"
    t.index ["meeting_id"], name: "index_action_items_on_meeting_id"
  end

  create_table "discussions", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "meeting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meeting_id"], name: "index_discussions_on_meeting_id"
    t.index ["user_id"], name: "index_discussions_on_user_id"
  end

  create_table "meeting_participants", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "meeting_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meeting_id"], name: "index_meeting_participants_on_meeting_id"
    t.index ["user_id"], name: "index_meeting_participants_on_user_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "agenda"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "scribe_id", null: false
    t.index ["scribe_id"], name: "index_meetings_on_scribe_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "user_name"
    t.string "organisation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "action_items", "meetings"
  add_foreign_key "action_items", "users", column: "assignee_id"
  add_foreign_key "discussions", "meetings"
  add_foreign_key "discussions", "users"
  add_foreign_key "meeting_participants", "meetings"
  add_foreign_key "meeting_participants", "users"
  add_foreign_key "meetings", "users", column: "scribe_id"
end
