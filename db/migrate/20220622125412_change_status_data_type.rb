class ChangeStatusDataType < ActiveRecord::Migration[5.2]
  def change
    change_column :notifications, :status, :integer
    change_column :payments, :status, :integer
    change_column :withdrawals, :status, :integer
  end
end
