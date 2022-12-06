# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_12_06_161560) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "citext"
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "location_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "musician_genres", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_musician_genres_on_genre_id"
    t.index ["user_id"], name: "index_musician_genres_on_user_id"
  end

  create_table "proficiency_levels", force: :cascade do |t|
    t.string "level", default: "beginner"
    t.string "description", default: "less than 1 year of experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "testimonial_links", force: :cascade do |t|
    t.string "link_url"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_testimonial_links_on_user_id"
  end

  create_table "user_instruments", force: :cascade do |t|
    t.bigint "own_level_id", null: false
    t.bigint "min_teaching_level_id"
    t.bigint "max_teaching_level_id"
    t.bigint "instrument_id", null: false
    t.bigint "musician_id", null: false
    t.integer "years_played"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["instrument_id"], name: "index_user_instruments_on_instrument_id"
    t.index ["max_teaching_level_id"], name: "index_user_instruments_on_max_teaching_level_id"
    t.index ["min_teaching_level_id"], name: "index_user_instruments_on_min_teaching_level_id"
    t.index ["musician_id"], name: "index_user_instruments_on_musician_id"
    t.index ["own_level_id"], name: "index_user_instruments_on_own_level_id"
  end

  create_table "users", force: :cascade do |t|
    t.citext "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "location_id"
    t.text "teacher_bio"
    t.text "lesson_schedule"
    t.integer "years_teached", default: 0
    t.string "avatar_url"
    t.float "lesson_pricing"
    t.text "student_bio"
    t.citext "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "musician_genres", "genres"
  add_foreign_key "musician_genres", "users"
  add_foreign_key "testimonial_links", "users"
  add_foreign_key "user_instruments", "instruments"
  add_foreign_key "user_instruments", "proficiency_levels", column: "max_teaching_level_id"
  add_foreign_key "user_instruments", "proficiency_levels", column: "min_teaching_level_id"
  add_foreign_key "user_instruments", "proficiency_levels", column: "own_level_id"
  add_foreign_key "user_instruments", "users", column: "musician_id"
end
