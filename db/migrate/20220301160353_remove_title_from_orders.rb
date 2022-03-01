class RemoveTitleFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :title, :string
  end
end
