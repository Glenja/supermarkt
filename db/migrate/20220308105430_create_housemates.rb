class CreateHousemates < ActiveRecord::Migration[6.1]
  def change
    create_table :housemates do |t|
      t.references :user, null: false, foreign_key: true
      t.references :household, null: false, foreign_key: true

      t.timestamps
    end
  end
end
