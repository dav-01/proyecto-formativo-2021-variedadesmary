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

ActiveRecord::Schema.define(version: 2021_09_08_051811) do

  create_table "cuenta", force: :cascade do |t|
    t.integer "cod_cuenta"
    t.string "login"
    t.string "rol"
    t.integer "usuario"
    t.string "contraseña"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "detalle_facturas", force: :cascade do |t|
    t.integer "cod_detalle_factura"
    t.integer "cod_factura"
    t.string "descripcion"
    t.string "cantidad"
    t.integer "valor_unitario"
    t.integer "valor_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "detalle_pedidos", force: :cascade do |t|
    t.integer "cod_detalle_pedido"
    t.integer "codigo_pedido"
    t.integer "cod_producto"
    t.string "descripcion"
    t.integer "valor_unitario"
    t.integer "valor_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "detalle_venta", force: :cascade do |t|
    t.integer "cod_detalle_venta"
    t.integer "cod_venta"
    t.string "producto"
    t.string "descripcion"
    t.integer "valor_unitario"
    t.integer "valor_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.integer "nit_empresa"
    t.string "logo"
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.integer "cod_factura"
    t.integer "cod_venta"
    t.date "fecha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.integer "cod_pedido"
    t.integer "cod_detalle_pedido"
    t.integer "cod_cliente"
    t.integer "cod_vendedor"
    t.integer "cod_producto"
    t.date "fecha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personas", force: :cascade do |t|
    t.integer "id_persona"
    t.string "apellido"
    t.string "sexo"
    t.string "foto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "productos", force: :cascade do |t|
    t.integer "cod_producto"
    t.integer "precio"
    t.string "nombre"
    t.integer "descuento"
    t.string "caracteristicas"
    t.string "tipo"
    t.string "marca"
    t.string "descripcion"
    t.string "fotos"
    t.string "referencias"
    t.integer "cod_proveedor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.integer "id_proveedor"
    t.string "nombre"
    t.string "correo"
    t.string "telefono"
    t.string "direccion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "id_usuario"
    t.string "nombre"
    t.string "apellido"
    t.integer "celular"
    t.string "foto"
    t.string "sexo"
    t.string "correo"
    t.string "direccion"
    t.date "fecha_nacimiento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "venta", force: :cascade do |t|
    t.integer "cod_venta"
    t.integer "cod_cliente"
    t.integer "cod_vendedor"
    t.integer "cod_producto"
    t.string "tipo"
    t.string "forma_pago"
    t.string "cantidad"
    t.string "total"
    t.date "fecha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
