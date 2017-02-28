class AddUserIdToDoctors < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :user_id, :integer
    add_index :doctors, :user_id
  end
end
