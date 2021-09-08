class CreateProveedors < ActiveRecord::Migration[6.1]
  def change
    create_table :proveedors do |t|
      t.integer :id_proveedor
      t.string :nombre
      t.string :correo
      t.string :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
