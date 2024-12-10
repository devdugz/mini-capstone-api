class RemoveProductIdAndQuantityFromOrders < ActiveRecord::Migration[7.2]
  def change
    remove_column :orders, :product_id
    remove_column :orders, :quantity
  end
end
