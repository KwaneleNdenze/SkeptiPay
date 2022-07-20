class Payment < ApplicationRecord
  belongs_to :account
  
  enum status: {pending: 0, requested: 1, approved: 2, declined: 3}

  # validations
  validates_presence_of :amount, :description, :recipient_id, :account_id

end