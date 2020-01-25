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

ActiveRecord::Schema.define(version: 20200125193734) do

  create_table "blogcomments", force: :cascade do |t|
    t.text     "body"
    t.integer  "bolg_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.string   "title"
    t.text     "bodydescrip"
    t.text     "body"
    t.string   "blogimage"
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "follows", force: :cascade do |t|
    t.string   "followable_type",                 null: false
    t.integer  "followable_id",                   null: false
    t.string   "follower_type",                   null: false
    t.integer  "follower_id",                     null: false
    t.boolean  "blocked",         default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["followable_id", "followable_type"], name: "fk_followables"
    t.index ["follower_id", "follower_type"], name: "fk_follows"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "groupcoverimage"
    t.string   "groupprofile"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "handers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "handerusers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "hander_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marks", force: :cascade do |t|
    t.string   "marker_type"
    t.integer  "marker_id"
    t.string   "markable_type"
    t.integer  "markable_id"
    t.string   "mark",          limit: 128
    t.datetime "created_at"
    t.index ["markable_id", "markable_type", "mark"], name: "index_marks_on_markable_id_and_markable_type_and_mark"
    t.index ["markable_type", "markable_id"], name: "index_marks_on_markable_type_and_markable_id"
    t.index ["marker_id", "marker_type", "mark"], name: "index_marks_on_marker_id_and_marker_type_and_mark"
    t.index ["marker_type", "marker_id"], name: "index_marks_on_marker_type_and_marker_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paints", force: :cascade do |t|
    t.text     "hometitle"
    t.text     "homedescription"
    t.string   "sutitle"
    t.text     "sudescription"
    t.string   "sitext"
    t.text     "sidescription"
    t.string   "homeimage"
    t.string   "siimage"
    t.string   "suimage"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "postcomments", force: :cascade do |t|
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text     "body"
    t.string   "postimage"
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "postvideo"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "name"
    t.string   "phonenumber"
    t.string   "location"
    t.string   "childage"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "uid"
    t.string   "provider"
    t.string   "gender"
    t.string   "hobsintrst"
    t.string   "country"
    t.string   "profileimage"
    t.string   "agerangekids"
    t.integer  "numofchildren"
    t.string   "industryworkin"
    t.string   "wdtwtoknow"
    t.string   "parentalfears"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
