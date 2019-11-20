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

ActiveRecord::Schema.define(version: 2019_11_20_164642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bilancliniquepreoperatoires", force: :cascade do |t|
    t.bigint "chirurgie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "name"
    t.index ["chirurgie_id"], name: "index_bilancliniquepreoperatoires_on_chirurgie_id"
    t.index ["slug"], name: "index_bilancliniquepreoperatoires_on_slug", unique: true
  end

  create_table "chirurgies", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_chirurgies_on_slug", unique: true
  end

  create_table "choisissezvotreimplants", force: :cascade do |t|
    t.bigint "chirurgie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "name"
    t.index ["chirurgie_id"], name: "index_choisissezvotreimplants_on_chirurgie_id"
    t.index ["slug"], name: "index_choisissezvotreimplants_on_slug", unique: true
  end

  create_table "consignepostoperatoires", force: :cascade do |t|
    t.bigint "chirurgie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "name"
    t.index ["chirurgie_id"], name: "index_consignepostoperatoires_on_chirurgie_id"
    t.index ["slug"], name: "index_consignepostoperatoires_on_slug", unique: true
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "pathologies", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_pathologies_on_slug", unique: true
  end

  create_table "preparerlinterventions", force: :cascade do |t|
    t.bigint "chirurgie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "name"
    t.index ["chirurgie_id"], name: "index_preparerlinterventions_on_chirurgie_id"
    t.index ["slug"], name: "index_preparerlinterventions_on_slug", unique: true
  end

  add_foreign_key "bilancliniquepreoperatoires", "chirurgies", column: "chirurgie_id"
  add_foreign_key "choisissezvotreimplants", "chirurgies", column: "chirurgie_id"
  add_foreign_key "consignepostoperatoires", "chirurgies", column: "chirurgie_id"
  add_foreign_key "preparerlinterventions", "chirurgies", column: "chirurgie_id"
end
