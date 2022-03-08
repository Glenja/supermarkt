class CreateSupermarkets < ActiveRecord::Migration[6.1]
  def change
    create_table :supermarkets do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
