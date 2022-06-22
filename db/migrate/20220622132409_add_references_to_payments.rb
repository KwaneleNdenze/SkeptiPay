class AddReferencesToPayments < ActiveRecord::Migration[5.2]
  def change
    add_reference :payments, :account, foreign_key: true
  end
end
