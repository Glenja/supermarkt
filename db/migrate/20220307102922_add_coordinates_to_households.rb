class AddCoordinatesToHouseholds < ActiveRecord::Migration[6.1]
  def change
    add_column :households, :latitude, :float
    add_column :households, :longitude, :float
  end
end
