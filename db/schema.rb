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

ActiveRecord::Schema.define(:version => 20130407003547) do

  create_table "rooms", :force => true do |t|
    t.string   "NorthImage"
    t.string   "SouthImage"
    t.string   "EastImage"
    t.string   "WestImage"
    t.integer  "NorthRoom"
    t.integer  "SouthRoom"
    t.integer  "EastRoom"
    t.integer  "WestRoom"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "description"
    t.string   "name"
  end

end
