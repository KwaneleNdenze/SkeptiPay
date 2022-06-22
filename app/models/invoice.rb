class Invoice < ApplicationRecord
  belongs_to :account
  # validations
  validates_presence_of :description, :debit, :credit 
end