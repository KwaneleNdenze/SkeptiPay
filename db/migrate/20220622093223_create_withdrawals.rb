class CreateWithdrawals < ActiveRecord::Migration[5.2]
  def change
    create_table :withdrawals do |t|
      t.string :amount
      t.string :status
      t.string :verification_code

      t.timestamps
      t.references :user, index: true, foreign_key: true
    end
  end
end
