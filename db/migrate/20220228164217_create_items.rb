class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.string :aisle
      t.string :category
      t.integer :price
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
