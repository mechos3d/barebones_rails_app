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

ActiveRecord::Schema.define(version: 2022_01_08_164618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bar", id: false, force: :cascade do |t|
    t.string "name"
    t.bigint "number", default: -> { "nextval('foo_seq'::regclass)" }
  end

  create_table "dummies", force: :cascade do |t|
    t.string "dum_str_field_one"
    t.integer "dum_int_field_two"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "json_col"
    t.bigint "foo", default: -> { "nextval('dummies_id_seq'::regclass)" }
  end

  create_table "foo", id: false, force: :cascade do |t|
    t.string "name"
    t.bigint "number", default: -> { "nextval('foo_seq'::regclass)" }
  end

  create_table "other", id: :bigint, default: nil, force: :cascade do |t|
    t.string "str_field"
    t.string "foo"
  end

end
