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

ActiveRecord::Schema[7.1].define(version: 2024_03_08_055532) do
  create_table "groups", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "price", precision: 10
    t.integer "category_id"
    t.integer "stock_quantity"
    t.string "sku"
    t.string "image_url"
    t.boolean "is_active"
    t.decimal "weight", precision: 10
    t.string "dimensions"
    t.string "color"
    t.string "size"
    t.decimal "rating", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
