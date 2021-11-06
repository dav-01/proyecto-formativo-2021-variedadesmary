class KindCambio < ActiveRecord::Migration[6.1]
  def change
    rename_column :pqrs, :code_kind, :kind_id
  end
end
