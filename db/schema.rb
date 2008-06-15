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

ActiveRecord::Schema.define(:version => 20080615021821) do

  create_table "permissions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions_user_groups", :id => false, :force => true do |t|
    t.integer "permission_id", :limit => 11
    t.integer "user_group_id", :limit => 11
  end

  create_table "profiles", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "updated_by",  :limit => 11
    t.boolean  "is_disabled"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "head"
    t.string   "body",                      :default => "Should be updated!"
    t.string   "sort",                      :default => "none"
    t.string   "view",                      :default => "none"
    t.string   "state",                     :default => "online",              :null => false
    t.string   "aim"
    t.string   "msn"
    t.string   "yahoo"
    t.string   "myspace"
    t.string   "facebook"
    t.string   "flickr"
    t.string   "blog",                      :default => "http://"
    t.string   "website",                   :default => "http://"
    t.date     "birth",                     :default => '1982-01-01'
    t.datetime "last_login",                :default => '2008-06-15 02:30:09'
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id",               :null => false
    t.integer  "user_id",    :limit => 11
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["user_id"], :name => "index_sessions_on_user_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "user_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_groups_users", :id => false, :force => true do |t|
    t.integer "user_group_id", :limit => 11
    t.integer "user_id",       :limit => 11
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "crypted_password"
    t.string   "salt"
    t.integer  "profile_id",       :limit => 11
    t.integer  "updated_by",       :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
