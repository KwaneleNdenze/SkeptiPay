class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.references :users, foreign_key: true, index: true

      t.timestamps
    end
  end
end
