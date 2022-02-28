class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :title
      t.text :description
      t.date :end_date
      t.integer :price
      t.references :household, null: false, foreign_key: true

      t.timestamps
    end
  end
end
