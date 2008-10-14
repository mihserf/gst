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

ActiveRecord::Schema.define(:version => 20081014092121) do

  create_table "album_photo_translations", :force => true do |t|
    t.string   "description"
    t.integer  "localedb_id"
    t.integer  "album_photo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "album_photos", :force => true do |t|
    t.integer  "album_id"
    t.string   "description"
    t.boolean  "main"
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

  create_table "album_translations", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "localedb_id"
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "albums", :force => true do |t|
    t.string   "ident_name"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "main"
    t.integer  "number"
  end

  create_table "article_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "article_id"
    t.string   "title"
    t.text     "short_text"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", :force => true do |t|
    t.integer  "num"
    t.string   "title"
    t.text     "short_text"
    t.text     "body"
    t.string   "ident_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "magazine_id"
  end

  create_table "charities", :force => true do |t|
    t.integer  "num"
    t.string   "title"
    t.text     "short_text"
    t.text     "body"
    t.string   "ident_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charity_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "charity_id"
    t.string   "title"
    t.text     "short_text"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.string   "ident_name"
    t.integer  "country_id"
    t.integer  "num_order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "coord"
  end

  create_table "city_coords", :force => true do |t|
    t.integer  "city_id"
    t.integer  "city_ident_num"
    t.text     "coord"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "city_photo_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "city_photo_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "city_photos", :force => true do |t|
    t.integer  "city_id"
    t.string   "description"
    t.integer  "size"
    t.string   "content_type"
    t.string   "filename"
    t.integer  "height"
    t.integer  "width"
    t.integer  "parent_id"
    t.string   "thumbnail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "main"
  end

  create_table "city_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "city_id"
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.string   "ident_name"
    t.integer  "num_order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "country_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "country_id"
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "event_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "event_id"
    t.string   "title"
    t.text     "short_text"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.integer  "num"
    t.string   "title"
    t.text     "short_text"
    t.text     "body"
    t.string   "ident_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jim_article_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "jim_article_id"
    t.string   "title"
    t.text     "short_text"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jim_articles", :force => true do |t|
    t.integer  "num"
    t.string   "title"
    t.text     "short_text"
    t.text     "body"
    t.string   "ident_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "localedbs", :force => true do |t|
    t.string   "short"
    t.string   "code"
    t.boolean  "master"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "magazine_logos", :force => true do |t|
    t.integer  "magazine_id"
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

  create_table "magazine_translations", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "coord"
    t.integer  "localedb_id"
    t.integer  "magazine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "magazines", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.text     "coord"
    t.string   "ident_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maps", :force => true do |t|
    t.integer  "country_id"
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

  create_table "member_event_dates", :force => true do |t|
    t.integer  "member_event_id"
    t.date     "begin_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "member_event_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "member_event_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "member_events", :force => true do |t|
    t.integer  "member_id"
    t.string   "name"
    t.text     "description"
    t.string   "ident_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "member_photos", :force => true do |t|
    t.integer  "member_id"
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

  create_table "member_statuses", :force => true do |t|
    t.integer  "member_id"
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "member_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "member_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "status_additional"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "status_additional"
    t.integer  "city_id"
    t.string   "ident_name"
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

  create_table "opinion_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "opinion_id"
    t.string   "author"
    t.string   "status"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "opinions", :force => true do |t|
    t.string   "author"
    t.string   "status"
    t.text     "body"
    t.integer  "member_id"
    t.string   "ident_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "page_id"
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "ident_name"
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "controller_name"
  end

  create_table "project_photo_translations", :force => true do |t|
    t.string   "description"
    t.integer  "localedb_id"
    t.integer  "project_photo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_photos", :force => true do |t|
    t.integer  "project_id"
    t.string   "description"
    t.boolean  "main"
    t.integer  "size"
    t.string   "content_type"
    t.string   "filename"
    t.integer  "height"
    t.integer  "width"
    t.integer  "parent_id"
    t.string   "thumbnail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "logo"
  end

  create_table "project_translations", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "localedb_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "short_text"
  end

  create_table "projects", :force => true do |t|
    t.string   "ident_name"
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "short_text"
    t.integer  "number"
  end

  create_table "status_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "status_id"
    t.string   "name"
    t.string   "status_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.string   "status_name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ident_name"
    t.integer  "ident_num"
  end

  create_table "stories", :force => true do |t|
    t.integer  "member_id"
    t.string   "ident_name"
    t.string   "title"
    t.text     "short_text"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "story_photos", :force => true do |t|
    t.integer  "story_id"
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

  create_table "story_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "story_id"
    t.string   "title"
    t.text     "short_text"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "success_stories", :force => true do |t|
    t.string   "title"
    t.text     "short_text"
    t.text     "body"
    t.integer  "member_id"
    t.string   "ident_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "success_story_photos", :force => true do |t|
    t.integer  "success_story_id"
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

  create_table "success_story_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "success_story_id"
    t.string   "title"
    t.text     "short_text"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trainer_experience_translations", :force => true do |t|
    t.integer  "localedb_id"
    t.integer  "trainer_experience_id"
    t.string   "title"
    t.text     "short_text"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trainer_experiences", :force => true do |t|
    t.string   "title"
    t.text     "short_text"
    t.text     "body"
    t.integer  "member_id"
    t.string   "ident_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
