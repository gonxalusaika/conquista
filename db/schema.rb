# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150710174924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jugadores", force: :cascade do |t|
    t.integer  "usuario_id"
    t.integer  "partida_id"
    t.string   "color"
    t.integer  "turno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "jugadores", ["partida_id"], name: "index_jugadores_on_partida_id", using: :btree
  add_index "jugadores", ["usuario_id"], name: "index_jugadores_on_usuario_id", using: :btree

  create_table "pais_partidas", force: :cascade do |t|
    t.integer  "pais_id"
    t.integer  "jugador_id"
    t.integer  "ejercitos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pais_partidas", ["jugador_id"], name: "index_pais_partidas_on_jugador_id", using: :btree
  add_index "pais_partidas", ["pais_id"], name: "index_pais_partidas_on_pais_id", using: :btree

  create_table "paises", force: :cascade do |t|
    t.string   "nombre"
    t.text     "coordenadas"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "color"
  end

  create_table "partidas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "proximo_turno"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

  create_table "vecinos", force: :cascade do |t|
    t.integer  "pais_id"
    t.integer  "vecino_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "jugadores", "partidas"
  add_foreign_key "jugadores", "usuarios"
  add_foreign_key "pais_partidas", "jugadores"
  add_foreign_key "pais_partidas", "paises"
end
