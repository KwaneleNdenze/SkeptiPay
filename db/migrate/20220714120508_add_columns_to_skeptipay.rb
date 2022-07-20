class AddColumnsToSkeptipay < ActiveRecord::Migration[5.2]
  def change
    add_column :payments, :recipient_id, :string
    add_column :accounts, :first_name, :string
    add_column :accounts, :last_name, :string
    add_column :accounts, :company_name, :string
    add_column :accounts, :sector, :string
    add_column :accounts, :street_address, :text
    add_column :accounts, :surburb, :string
    add_column :accounts, :city, :string
    add_column :accounts, :province, :string
    add_column :accounts, :card_number, :string
    add_column :accounts, :expiry_date, :string
    add_column :accounts, :ccv, :string
    add_column :accounts, :gender, :string
  end
end
