# typed: strict
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_11_221328) do

  create_table "courses", force: :cascade do |t|
    t.string "name", null: false
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "holes", force: :cascade do |t|
    t.integer "number", null: false
    t.integer "par", null: false
    t.integer "yardage"
    t.integer "handicap"
    t.integer "strokes", null: false
    t.integer "number_of_putts", null: false
    t.boolean "green_in_regulation", null: false
    t.boolean "fairway_hit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "tee_id"
  end

  create_table "tees", force: :cascade do |t|
    t.string "color", null: false
    t.integer "total_yardage", null: false
    t.integer "course_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_tees_on_course_id"
  end

  add_foreign_key "tees", "courses"
end
