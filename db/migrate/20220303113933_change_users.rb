class ChangeUsers < ActiveRecord::Migration[6.1]
  def change
    remove_reference :users, :household
    remove_column :users, :main_user_email
    add_reference :users, :household, foreign_key: true
  end
end
