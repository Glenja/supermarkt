class RemoveDescriptionFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :description, :string
  end
end
