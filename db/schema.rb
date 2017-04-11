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

ActiveRecord::Schema.define(version: 20170411204150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comment_tags", force: :cascade do |t|
    t.integer "comment_id"
    t.integer "tag_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.text     "content"
    t.string   "subject_experience"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "hilites", force: :cascade do |t|
    t.text     "code"
    t.string   "lexer"
    t.string   "style"
    t.string   "lineos"
    t.string   "divstyles"
    t.string   "api_url"
    t.text     "api_result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_sections", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_tags", force: :cascade do |t|
    t.integer "post_id"
    t.integer "tag_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "outline"
    t.text     "summary"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "format"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
