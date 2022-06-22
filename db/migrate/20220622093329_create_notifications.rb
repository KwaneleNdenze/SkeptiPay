class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :recipient
      t.text :text
      t.string :subject
      t.string :status

      t.timestamps
      t.references :user, index: true, foreign_key: true
    end
  end
end
