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

ActiveRecord::Schema.define(version: 20160908043813) do

  create_table "advertisements", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "channel",                             null: false
    t.string   "view_template",                       null: false
    t.string   "expose_view",                         null: false
    t.integer  "expose_position",     default: 0,     null: false
    t.string   "audience_country",    default: "kr",  null: false
    t.string   "audience_language",   default: "ko",  null: false
    t.string   "audience_roles",                      null: false
    t.integer  "audience_grade_from",                 null: false
    t.integer  "audience_grade_to",                   null: false
    t.boolean  "forced_stop",         default: false
    t.string   "action_type"
    t.string   "action_url"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

end
