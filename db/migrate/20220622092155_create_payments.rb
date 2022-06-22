class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :amount
      t.text :description
      t.string :verification_code
      t.string :status

      t.timestamps
      t.references :user, index: true, foreign_key: true
    end
  end
end
