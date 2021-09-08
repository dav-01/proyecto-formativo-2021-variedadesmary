class CreateFacturas < ActiveRecord::Migration[6.1]
  def change
    create_table :facturas do |t|
      t.integer :cod_factura
      t.integer :cod_venta
      t.date :fecha

      t.timestamps
    end
  end
end
