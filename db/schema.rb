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

ActiveRecord::Schema.define(version: 20140429155524) do

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"

  create_table "portfolios", force: true do |t|
    t.string   "feed"
    t.string   "cover_image"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "originally_from"
    t.string   "website"
    t.string   "phone_number"
    t.string   "video_reel_name"
    t.string   "video_reel_url"
    t.string   "fav_director"
    t.string   "fav_movie"
    t.string   "fav_book"
    t.string   "fav_quote"
    t.string   "fav_video_name"
    t.string   "fav_video_url"
    t.string   "position"
    t.string   "prev_clients"
    t.string   "skills"
    t.text     "short_goals"
    t.text     "long_goals"
    t.string   "home_pic"
    t.string   "doing_now"
    t.string   "currently"
    t.string   "twitter"
    t.string   "youtube"
    t.string   "vimeo"
    t.string   "video_reel_type"
    t.string   "fav_video_type"
  end

  add_index "portfolios", ["user_id"], name: "index_portfolios_on_user_id"

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
    t.string   "picture"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

  create_table "videos", force: true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover"
    t.integer  "portfolio_id"
  end

end
