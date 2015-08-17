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

ActiveRecord::Schema.define(version: 20150817161417) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employers", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "industry"
    t.string   "website"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "imageURL"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.date     "start_date"
    t.string   "duration"
    t.string   "hours"
    t.string   "location"
    t.decimal  "wage"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employer_id"
  end

  add_index "jobs", ["employer_id"], name: "index_jobs_on_employer_id", using: :btree

  create_table "jobseekers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "imageURL"
  end

  create_table "offers", force: :cascade do |t|
    t.boolean  "accepted"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "jobseeker_id"
    t.integer  "job_id"
  end

  add_index "offers", ["job_id"], name: "index_offers_on_job_id", using: :btree
  add_index "offers", ["jobseeker_id"], name: "index_offers_on_jobseeker_id", using: :btree

  create_table "skills", force: :cascade do |t|
    t.string   "skill"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "jobseeker_id"
  end

  add_index "skills", ["jobseeker_id"], name: "index_skills_on_jobseeker_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "jobseeker_id"
    t.integer  "employer_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["employer_id"], name: "index_users_on_employer_id", using: :btree
  add_index "users", ["jobseeker_id"], name: "index_users_on_jobseeker_id", using: :btree

  add_foreign_key "jobs", "employers"
  add_foreign_key "offers", "jobs"
  add_foreign_key "offers", "jobseekers"
  add_foreign_key "skills", "jobseekers"
  add_foreign_key "users", "employers"
  add_foreign_key "users", "jobseekers"
end
