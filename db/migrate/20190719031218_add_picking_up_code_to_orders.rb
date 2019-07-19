class AddPickingUpCodeToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :picking_up_code, :string
  end
end
