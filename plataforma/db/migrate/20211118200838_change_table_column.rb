class ChangeTableColumn < ActiveRecord::Migration[6.1]
    def up
        change_column :pqrs, :kind_id, :integer
    end

    def down
        change_column :pqrs, :kind_id, :string
    end
end
