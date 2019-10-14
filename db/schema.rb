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

ActiveRecord::Schema.define(version: 2019_10_14_164113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "awards", force: :cascade do |t|
    t.integer "movie_id", default: 0
    t.integer "participant_id", default: 0
    t.date "year"
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_user_statuses", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "user_id"
    t.boolean "watch_later"
    t.boolean "watched"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.date "release"
    t.integer "score"
    t.string "status"
    t.text "synopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies_participants", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "participant_id"
    t.index ["movie_id"], name: "index_movies_participants_on_movie_id"
    t.index ["participant_id"], name: "index_movies_participants_on_participant_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "country"
    t.date "date_of_birth"
    t.string "partner"
    t.string "rol"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recomendations", force: :cascade do |t|
    t.integer "movie_id"
    t.string "title"
    t.text "description"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "tech_descriptions", force: :cascade do |t|
    t.integer "movie_id"
    t.string "sound"
    t.boolean "color"
    t.string "camera"
    t.string "format"
    t.integer "duration_min"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "country"
    t.integer "age"
    t.integer "score"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
