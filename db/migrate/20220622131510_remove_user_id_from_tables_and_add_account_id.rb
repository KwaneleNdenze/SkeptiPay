class RemoveUserIdFromTablesAndAddAccountId < ActiveRecord::Migration[5.2]
  def change
    remove_column :invoices, :user_id
    remove_column :withdrawals, :user_id
    remove_column :notifications, :user_id
    remove_column :payments, :user_id
  end
end
