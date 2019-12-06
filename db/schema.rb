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

ActiveRecord::Schema.define(version: 2019_12_06_151706) do

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image1"
    t.string "image2"
    t.integer "position"
    t.boolean "on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "opening_times", force: :cascade do |t|
    t.string "day"
    t.string "from"
    t.string "to"
    t.boolean "on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "position"
  end

  create_table "promos", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image1"
    t.string "image2"
    t.integer "position"
    t.boolean "on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
