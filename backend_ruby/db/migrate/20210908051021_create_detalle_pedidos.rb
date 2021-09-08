class CreateDetallePedidos < ActiveRecord::Migration[6.1]
  def change
    create_table :detalle_pedidos do |t|
      t.integer :cod_detalle_pedido
      t.integer :codigo_pedido
      t.integer :cod_producto
      t.string :descripcion
      t.integer :valor_unitario
      t.integer :valor_total

      t.timestamps
    end
  end
end
