class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.reference :item
      t.reference :user
      t.string :quantity

      t.timestamps
    end
  end
end
