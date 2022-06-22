class ChangeTextToBody < ActiveRecord::Migration[5.2]
  def change
    change_table :notifications do |t|
      t.rename :text, :body
    end
  end
end
