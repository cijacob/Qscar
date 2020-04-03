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

ActiveRecord::Schema.define(version: 2020_04_03_185222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "url"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects_technos", id: false, force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "techno_id", null: false
    t.index ["project_id", "techno_id"], name: "index_projects_technos_on_project_id_and_techno_id"
    t.index ["techno_id", "project_id"], name: "index_projects_technos_on_techno_id_and_project_id"
  end

  create_table "technos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.boolean "confirmed", default: false
    t.string "confirmation_token"
    t.string "password_digest"
    t.boolean "avatar", default: false
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
