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

ActiveRecord::Schema.define(version: 20161223054324) do

  create_table "caseworker", force: :cascade do |t|
    t.integer  "CaseWorkerId", limit: 4
    t.string   "FirstName",    limit: 40
    t.string   "LastName",     limit: 40, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "child", force: :cascade do |t|
    t.integer  "ChildId",         limit: 4
    t.string   "FirstName",       limit: 40
    t.string   "MiddleInitial",   limit: 1
    t.string   "LastName",        limit: 40, null: false
    t.string   "Phone",           limit: 10
    t.string   "Email",           limit: 40, null: false
    t.date     "DateOfBirth"
    t.boolean  "DeleteIndicator",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parent", force: :cascade do |t|
    t.integer  "ParentId",      limit: 4
    t.string   "UserName",      limit: 50,  null: false
    t.string   "Password",      limit: 20,  null: false
    t.string   "FirstName",     limit: 20
    t.string   "MiddleInitial", limit: 1
    t.string   "LastName",      limit: 40,  null: false
    t.string   "Suffix",        limit: 5
    t.date     "DateOfBirth"
    t.string   "Address",       limit: 100
    t.integer  "Zip",           limit: 8
    t.string   "HomePhone",     limit: 10
    t.string   "CellPhone",     limit: 10
    t.string   "Email",         limit: 100, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parentchild", force: :cascade do |t|
    t.integer  "ParentChildId",   limit: 4
    t.integer  "ParentId",        limit: 4, null: false
    t.integer  "ChildId",         limit: 4, null: false
    t.integer  "CaseWorkerId",    limit: 4, null: false
    t.boolean  "DeleteIndicator",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "username",               limit: 255
    t.string   "firstname",              limit: 255
    t.string   "middlename",             limit: 255
    t.string   "lastname",               limit: 255
    t.string   "dob",                    limit: 255
    t.string   "street",                 limit: 255
    t.string   "city",                   limit: 255
    t.string   "state",                  limit: 255
    t.string   "zipcode",                limit: 255
    t.string   "phone",                  limit: 255
    t.string   "suffix",                 limit: 255
    t.string   "marital_status",         limit: 255
    t.string   "cellphone",              limit: 255
    t.string   "homephone",              limit: 255
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
