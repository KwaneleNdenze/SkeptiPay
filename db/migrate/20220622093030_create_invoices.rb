class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :debit
      t.text :description
      t.string :credit

      t.timestamps
      t.references :user, index: true, foreign_key: true
    end
  end
end
