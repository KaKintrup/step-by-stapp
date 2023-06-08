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

ActiveRecord::Schema[7.0].define(version: 2023_06_08_135047) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_posts", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.bigint "challenge_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_blog_posts_on_challenge_id"
  end

  create_table "challenge_completions", force: :cascade do |t|
    t.bigint "challenge_participation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_participation_id"], name: "index_challenge_completions_on_challenge_participation_id"
  end

  create_table "challenge_participations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "challenge_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_challenge_participations_on_challenge_id"
    t.index ["user_id"], name: "index_challenge_participations_on_user_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "category"
    t.integer "weekly_goal"
    t.date "start_date"
    t.date "end_date"
    t.boolean "public"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_challenges_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "blog_posts", "challenges"
  add_foreign_key "challenge_completions", "challenge_participations"
  add_foreign_key "challenge_participations", "challenges"
  add_foreign_key "challenge_participations", "users"
  add_foreign_key "challenges", "users"
end
