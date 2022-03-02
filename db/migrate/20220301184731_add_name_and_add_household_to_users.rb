class AddNameAndAddHouseholdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_reference :users, :household, null: false, foreign_key: true
  end
end
