class ChangeHouseholdIdNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :housemates, :household_id, true
  end
end
