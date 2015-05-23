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

ActiveRecord::Schema.define(version: 20150521231804) do

  create_table "aliases", force: :cascade do |t|
    t.string   "name"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "aliases", ["document_id"], name: "index_aliases_on_document_id"

  create_table "archives", force: :cascade do |t|
    t.integer  "pages"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "dcmUrl"
    t.string   "cbpUrl"
    t.string   "gcdUrl"
    t.string   "cbdbUrl"
  end

  add_index "archives", ["document_id"], name: "index_archives_on_document_id"

  create_table "documents", force: :cascade do |t|
    t.string   "file_type",             null: false
    t.string   "digest",     limit: 64, null: false
    t.datetime "created",               null: false
    t.integer  "size",                  null: false
    t.boolean  "folder",                null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer  "width"
    t.integer  "height"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "page"
    t.string   "error"
  end

  add_index "images", ["document_id"], name: "index_images_on_document_id"

  create_table "inclusions", force: :cascade do |t|
    t.integer  "parent_id"
    t.integer  "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.string   "name"
    t.string   "file_type"
    t.string   "digest"
    t.string   "imageError"
    t.integer  "size"
    t.integer  "height"
    t.integer  "width"
    t.integer  "page"
    t.datetime "modified"
    t.boolean  "folder"
    t.integer  "user_id"
    t.integer  "submission_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "apikey"
  end

  add_index "submissions", ["submission_id"], name: "index_submissions_on_submission_id"
  add_index "submissions", ["user_id"], name: "index_submissions_on_user_id"

  create_table "tracks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tracks", ["document_id"], name: "index_tracks_on_document_id"
  add_index "tracks", ["user_id"], name: "index_tracks_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "apikey"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
