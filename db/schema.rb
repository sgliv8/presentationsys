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

ActiveRecord::Schema.define(version: 20150701075354) do

  create_table "comments", force: :cascade do |t|
    t.string   "group"
    t.string   "project"
    t.text     "strength"
    t.text     "weakness"
    t.text     "improvement"
    t.text     "fund"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "course_id"
  end

  add_index "comments", ["course_id"], name: "index_comments_on_course_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "courses", force: :cascade do |t|
    t.string   "course_name"
    t.text     "cq1"
    t.text     "cq2"
    t.text     "cq3"
    t.text     "cq4"
    t.text     "gq1"
    t.text     "gq2"
    t.text     "gq3"
    t.text     "gq4"
    t.text     "gq5"
    t.text     "gq6"
    t.text     "gq7"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string   "group"
    t.string   "project"
    t.string   "opport"
    t.text     "opport_c"
    t.string   "cost"
    t.text     "cost_c"
    t.string   "timeline"
    t.text     "timeline_c"
    t.string   "obstacle"
    t.text     "obstacle_c"
    t.string   "risk"
    t.text     "risk_c"
    t.string   "point"
    t.text     "point_c"
    t.string   "fund"
    t.text     "fund_c"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "totalscore"
    t.integer  "course_id"
  end

  add_index "grades", ["course_id"], name: "index_grades_on_course_id"
  add_index "grades", ["user_id"], name: "index_grades_on_user_id"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "role_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["role_id"], name: "index_users_on_role_id"

end
