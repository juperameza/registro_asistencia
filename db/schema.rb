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

ActiveRecord::Schema[7.0].define(version: 2023_04_24_024850) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnos", force: :cascade do |t|
    t.integer "numero_cuenta"
    t.string "nombre"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.integer "grado"
    t.string "grupo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "asistencia", force: :cascade do |t|
    t.bigint "alumno_id", null: false
    t.integer "asistencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alumno_id"], name: "index_asistencia_on_alumno_id"
  end

  create_table "assistances", force: :cascade do |t|
    t.integer "account", null: false
    t.string "name", null: false
    t.string "dad_last", null: false
    t.string "mother_last", null: false
    t.integer "grade", null: false
    t.string "group", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "asistencia", "alumnos"
end
