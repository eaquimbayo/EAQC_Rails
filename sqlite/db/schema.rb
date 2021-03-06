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

ActiveRecord::Schema.define(version: 2018_09_27_164050) do

  create_table "Paginas", force: :cascade do |t|
    t.integer "tema_id"
    t.string "nombre"
    t.string "enlace"
    t.integer "posicion"
    t.boolean "visible", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enlace"], name: "index_paginas_on_enlace"
    t.index ["tema_id"], name: "index_paginas_on_tema_id"
  end

  create_table "admin_usuarios", force: :cascade do |t|
    t.string "primer_Nombre"
    t.string "primer_Apellido", limit: 50
    t.string "email", limit: 100, default: "", null: false
    t.string "hashed_password", limit: 40
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombreUsuario", limit: 25
    t.index ["nombreUsuario"], name: "index_admin_usuarios_on_nombreUsuario"
  end

  create_table "seccions", force: :cascade do |t|
    t.integer "pagina_id_"
    t.string "nombre"
    t.integer "posicion"
    t.boolean "visible", default: false
    t.string "tipo_contenido"
    t.text "contenido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tema", force: :cascade do |t|
    t.string "nombre"
    t.integer "posicion"
    t.boolean "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
