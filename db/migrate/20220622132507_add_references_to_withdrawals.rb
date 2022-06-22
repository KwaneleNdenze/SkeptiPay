class AddReferencesToWithdrawals < ActiveRecord::Migration[5.2]
  def change
    add_reference :withdrawals, :account, foreign_key: true
  end
end
