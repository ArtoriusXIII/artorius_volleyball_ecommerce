class AddListingToOrderItems < ActiveRecord::Migration
  def change
    add_reference :order_items, :listing, index: true, foreign_key: true
  end
end
