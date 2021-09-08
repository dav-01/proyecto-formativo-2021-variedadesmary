class CreatePedidos < ActiveRecord::Migration[6.1]
  def change
    create_table :pedidos do |t|
      t.integer :cod_pedido
      t.integer :cod_detalle_pedido
      t.integer :cod_cliente
      t.integer :cod_vendedor
      t.integer :cod_producto
      t.date :fecha

      t.timestamps
    end
  end
end
