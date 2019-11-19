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

ActiveRecord::Schema.define(version: 2019_11_19_022731) do

  create_table "ambientes", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bicho_tipos", force: :cascade do |t|
    t.integer "bicho_id", null: false
    t.integer "tipo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bicho_id"], name: "index_bicho_tipos_on_bicho_id"
    t.index ["tipo_id"], name: "index_bicho_tipos_on_tipo_id"
  end

  create_table "bichos", force: :cascade do |t|
    t.string "nome"
    t.string "alimentacao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ambiente_id"
    t.index ["ambiente_id"], name: "index_bichos_on_ambiente_id"
  end

  create_table "tipos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bicho_tipos", "bichos"
  add_foreign_key "bicho_tipos", "tipos"
end
