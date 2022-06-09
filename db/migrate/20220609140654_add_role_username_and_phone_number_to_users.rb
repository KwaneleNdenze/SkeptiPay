class AddRoleUsernameAndPhoneNumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :integer
    add_column :users, :phone_number, :string
    add_column :users, :username, :string
  end
end
