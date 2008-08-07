# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080806123741) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "lang"
    t.string   "ident_name"
    t.text     "body"
    t.integer  "country_id"
    t.integer  "num_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "lang"
    t.string   "ident_name"
    t.text     "body"
    t.integer  "num_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "member_statuses", :force => true do |t|
    t.integer  "member_id"
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "status"
    t.integer  "city_id"
    t.string   "lang"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "opinion_photos", :force => true do |t|
    t.integer  "opinion_id"
    t.integer  "size"
    t.string   "content_type"
    t.string   "filename"
    t.integer  "height"
    t.integer  "width"
    t.integer  "parent_id"
    t.string   "thumbnail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "opinions", :force => true do |t|
    t.string   "author"
    t.string   "status"
    t.string   "lang"
    t.text     "body"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "ident_name"
    t.string   "name"
    t.string   "lang"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.string   "status"
    t.integer  "number"
    t.string   "lang"
    t.string   "ident_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
