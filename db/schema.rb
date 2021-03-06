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

ActiveRecord::Schema.define(version: 20180513193841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budgets", force: :cascade do |t|
    t.string "title"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.string "icon"
    t.string "color"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.string "account"
    t.string "icon"
    t.string "color"
    t.float "month_budget"
  end

  create_table "categories_budgets", force: :cascade do |t|
  end

  create_table "income_categories", force: :cascade do |t|
    t.string "title"
    t.string "icon"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operations", force: :cascade do |t|
    t.float "budget"
    t.integer "category_id"
    t.float "operation"
    t.integer "budget_id"
    t.date "datetime"
    t.integer "operation_type"
  end

  create_table "positive_operations", force: :cascade do |t|
    t.integer "budget_id"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "income_category_id"
  end

end
