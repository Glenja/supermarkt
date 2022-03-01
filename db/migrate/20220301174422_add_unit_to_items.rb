class AddUnitToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :unit, :string
  end
end
