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

ActiveRecord::Schema.define(version: 20140127075449) do

  create_table "drugs", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "prescri_id"
  end

  create_table "prescri_drugs", force: true do |t|
    t.integer  "prescri_id"
    t.integer  "drug_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prescris", force: true do |t|
    t.string   "name"
    t.string   "patient_name"
    t.string   "gender"
    t.integer  "age"
    t.string   "departments"
    t.string   "diagnose"
    t.string   "doctor"
    t.string   "re_doctor"
    t.string   "re_re_doctor"
    t.string   "total_price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "drug_id"
  end

end
