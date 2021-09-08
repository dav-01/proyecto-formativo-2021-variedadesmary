class CreateDetalleFacturas < ActiveRecord::Migration[6.1]
  def change
    create_table :detalle_facturas do |t|
      t.integer :cod_detalle_factura
      t.integer :cod_factura
      t.string :descripcion
      t.string :cantidad
      t.integer :valor_unitario
      t.integer :valor_total

      t.timestamps
    end
  end
end
