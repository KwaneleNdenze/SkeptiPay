class CreateSkeptiPayTables < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :amount
      t.text :description
      t.string :verification_code
      t.integer :status

      t.timestamps
      t.references :account, index: true, foreign_key: true
    end

    create_table :invoices do |t|
      t.string :debit
      t.text :description
      t.string :credit

      t.timestamps
      t.references :account, index: true, foreign_key: true
    end

    create_table :withdrawals do |t|
      t.string :amount
      t.integer :status
      t.string :verification_code

      t.timestamps
      t.references :account, index: true, foreign_key: true
    end

    create_table :notifications do |t|
      t.string :recipient
      t.text :body
      t.string :subject
      t.integer :status

      t.timestamps
      t.references :account, index: true, foreign_key: true
    end

    create_table :accounts do |t|
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end

    add_column :users, :role, :integer
    add_column :users, :phone_number, :string
    add_column :users, :username, :string
    remove_column :users, :account_id
  end
end
