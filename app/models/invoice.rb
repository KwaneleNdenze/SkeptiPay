class Invoice < ApplicationRecord
  belongs_to :user
  # validations
  validates_presence_of :description, :debit, :credit 
end