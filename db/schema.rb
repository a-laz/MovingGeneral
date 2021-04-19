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

ActiveRecord::Schema.define(version: 2021_04_19_231658) do

  create_table "crew_movers", force: :cascade do |t|
    t.integer "crew_id"
    t.integer "mover_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crew_id"], name: "index_crew_movers_on_crew_id"
    t.index ["mover_id"], name: "index_crew_movers_on_mover_id"
  end

  create_table "crews", force: :cascade do |t|
    t.string "team_name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inventory_list_items", force: :cascade do |t|
    t.integer "inventory_list_id"
    t.integer "item_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["inventory_list_id"], name: "index_inventory_list_items_on_inventory_list_id"
    t.index ["item_id"], name: "index_inventory_list_items_on_item_id"
  end

  create_table "inventory_lists", force: :cascade do |t|
    t.integer "move_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["move_id"], name: "index_inventory_lists_on_move_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "movers", force: :cascade do |t|
    t.string "name"
    t.string "hometown"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "moves", force: :cascade do |t|
    t.integer "user_id"
    t.integer "crew_id"
    t.string "pickup_address"
    t.string "dropoff_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crew_id"], name: "index_moves_on_crew_id"
    t.index ["user_id"], name: "index_moves_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "move_id"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["move_id"], name: "index_reviews_on_move_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address_1"
    t.string "address_2"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "crew_movers", "crews"
  add_foreign_key "crew_movers", "movers"
  add_foreign_key "inventory_list_items", "inventory_lists"
  add_foreign_key "inventory_list_items", "items"
  add_foreign_key "inventory_lists", "moves"
  add_foreign_key "moves", "crews"
  add_foreign_key "moves", "users"
  add_foreign_key "reviews", "moves"
end
