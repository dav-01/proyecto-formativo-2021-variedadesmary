class CreateDetalleVenta < ActiveRecord::Migration[6.1]
  def change
    create_table :detalle_venta do |t|
      t.integer :cod_detalle_venta
      t.integer :cod_venta
      t.string :producto
      t.string :descripcion
      t.integer :valor_unitario
      t.integer :valor_total

      t.timestamps
    end
  end
end
