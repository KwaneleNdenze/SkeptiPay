class Payment < ApplicationRecord
  belongs_to :account
  
  enum status: {requested: 0, approved: 1}

  # validations
  validates_presence_of :amount, :description, :status, :verification_code

end