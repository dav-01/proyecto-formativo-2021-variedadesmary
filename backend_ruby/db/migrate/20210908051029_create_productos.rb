class CreateProductos < ActiveRecord::Migration[6.1]
  def change
    create_table :productos do |t|
      t.integer :cod_producto
      t.integer :precio
      t.string :nombre
      t.integer :descuento
      t.string :caracteristicas
      t.string :tipo
      t.string :marca
      t.string :descripcion
      t.string :fotos
      t.string :referencias
      t.integer :cod_proveedor

      t.timestamps
    end
  end
end
