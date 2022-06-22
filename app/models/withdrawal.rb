class Withdrawal < ApplicationRecord  
  belongs_to :user
  # validations
  validates_presence_of :amount, :status, :verification_code
end