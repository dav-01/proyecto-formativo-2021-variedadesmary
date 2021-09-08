class CreateVenta < ActiveRecord::Migration[6.1]
  def change
    create_table :venta do |t|
      t.integer :cod_venta
      t.integer :cod_cliente
      t.integer :cod_vendedor
      t.integer :cod_producto
      t.string :tipo
      t.string :forma_pago
      t.string :cantidad
      t.string :total
      t.date :fecha

      t.timestamps
    end
  end
end
