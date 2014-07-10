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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140426153254) do

  create_table "academics", :force => true do |t|
    t.integer "user_id"
    t.string  "edu_level"
    t.string  "course_type"
    t.string  "course_name"
    t.string  "specialization"
    t.string  "duration_from"
    t.string  "duration_to"
    t.string  "institute"
  end

  create_table "case_people", :force => true do |t|
    t.string   "person_type"
    t.string   "name"
    t.string   "father_or_husband_name"
    t.integer  "age"
    t.string   "email"
    t.string   "contact_no"
    t.text     "address"
    t.text     "note"
    t.integer  "case_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "cases", :force => true do |t|
    t.string   "case_title"
    t.string   "case_type"
    t.string   "case_taken_as"
    t.string   "case_running_since"
    t.string   "colony_or_village"
    t.string   "police_station"
    t.string   "tehsil"
    t.string   "district"
    t.string   "acts"
    t.text     "additional_details"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "segment_names", :force => true do |t|
    t.string   "name"
    t.integer  "segment_type_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "segment_types", :force => true do |t|
    t.string   "type_name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "work_experiences", :force => true do |t|
    t.integer "user_id"
    t.string  "duration_from_month"
    t.integer "duration_from_year"
    t.string  "duration_to_month"
    t.integer "duration_to_year"
    t.string  "company_name"
    t.string  "location"
    t.string  "designation"
    t.string  "level"
    t.text    "role_responsibilities"
    t.text    "additional"
  end

end
