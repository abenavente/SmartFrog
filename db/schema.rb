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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120224170324) do

  create_table "abonados", :force => true do |t|
    t.string   "identificador"
    t.string   "cartera"
    t.string   "references"
    t.integer  "campaing_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "abonados", ["campaing_id"], :name => "index_abonados_on_campaing_id"

  create_table "administradors", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "dni"
    t.string   "login"
    t.integer  "estado"
    t.string   "encrypted_password"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "email"
  end

  create_table "campaings", :force => true do |t|
    t.integer  "service_id"
    t.string   "name"
    t.date     "inicio"
    t.date     "fin"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "campaings", ["service_id"], :name => "index_campaings_on_service_id"

  create_table "carteras", :force => true do |t|
    t.string   "name"
    t.integer  "campaing_id"
    t.integer  "registros"
    t.date     "fecha_carga"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "carteras", ["campaing_id"], :name => "index_carteras_on_campaing_id"

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "operador_por_servicios", :force => true do |t|
    t.integer  "service_id"
    t.integer  "operador_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "operador_por_servicios", ["operador_id"], :name => "index_operador_por_servicios_on_operador_id"
  add_index "operador_por_servicios", ["service_id"], :name => "index_operador_por_servicios_on_service_id"

  create_table "operadors", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "dni"
    t.string   "login"
    t.integer  "estado"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "encrypted_password"
    t.string   "email"
  end

  create_table "posts", :force => true do |t|
    t.text     "contenido"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "services", :force => true do |t|
    t.integer  "customer_id"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "services", ["customer_id"], :name => "index_services_on_customer_id"

  create_table "supervisor_por_servicios", :force => true do |t|
    t.integer  "service_id"
    t.integer  "supervisor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "supervisor_por_servicios", ["service_id"], :name => "index_supervisor_por_servicios_on_service_id"
  add_index "supervisor_por_servicios", ["supervisor_id"], :name => "index_supervisor_por_servicios_on_supervisor_id"

  create_table "supervisors", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "dni"
    t.string   "login"
    t.integer  "estado"
    t.string   "encrypted_password"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "email"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "validador_por_servicios", :force => true do |t|
    t.integer  "service_id"
    t.integer  "validador_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "validador_por_servicios", ["service_id"], :name => "index_validador_por_servicios_on_service_id"
  add_index "validador_por_servicios", ["validador_id"], :name => "index_validador_por_servicios_on_validador_id"

  create_table "validadors", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "dni"
    t.string   "login"
    t.integer  "estado"
    t.string   "encrypted_password"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "email"
  end

end
