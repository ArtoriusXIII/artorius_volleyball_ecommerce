class RemoveProductFromOrderItems < ActiveRecord::Migration
  def change
    remove_reference :order_items, :product, index: true, foreign_key: true
  end
end
