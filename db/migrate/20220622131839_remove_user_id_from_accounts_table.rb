class RemoveUserIdFromAccountsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :accounts, :users_id
  end
end
