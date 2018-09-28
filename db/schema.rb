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

ActiveRecord::Schema.define(version: 2018_09_28_023440) do

  create_table "correos", force: :cascade do |t|
    t.string "correo_nickname"
    t.string "correo_direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "imageable_type"
    t.integer "imageable_id"
    t.index ["imageable_type", "imageable_id"], name: "index_correos_on_imageable_type_and_imageable_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.string "curso_nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "requisito_id"
    t.index ["requisito_id"], name: "index_cursos_on_requisito_id"
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string "estudiante_nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupos", force: :cascade do |t|
    t.integer "grupo_cupos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "curso_id"
    t.integer "profesor_id"
    t.index ["curso_id"], name: "index_grupos_on_curso_id"
    t.index ["profesor_id"], name: "index_grupos_on_profesor_id"
  end

  create_table "historia_academicas", force: :cascade do |t|
    t.boolean "his_acad_aprobado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "estudiante_id"
    t.integer "curso_id"
    t.index ["curso_id"], name: "index_historia_academicas_on_curso_id"
    t.index ["estudiante_id"], name: "index_historia_academicas_on_estudiante_id"
  end

  create_table "inscribe_cursos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "estudiante_id"
    t.integer "Grupo_id"
    t.index ["Grupo_id"], name: "index_inscribe_cursos_on_Grupo_id"
    t.index ["estudiante_id"], name: "index_inscribe_cursos_on_estudiante_id"
  end

  create_table "profesors", force: :cascade do |t|
    t.string "profesor_nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
